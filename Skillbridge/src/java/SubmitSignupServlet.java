import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

@WebServlet("/submit-signup")
public class SubmitSignupServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/skillbridge";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Somya@0407"; // Change to your DB password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String college = request.getParameter("college");
        String branch = request.getParameter("branch");
        String course = request.getParameter("course");
        String contact = request.getParameter("contact");
        String year = request.getParameter("year");
        String age = request.getParameter("age");

        // Validate input (basic validation here, you may add more)
        if (name == null || email == null || password == null || college == null ||
            branch == null || course == null || contact == null || year == null || age == null) {
            response.sendRedirect("signup.jsp?error=Missing%20fields");
            return;
        }

        // Insert data into the database
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Prepare SQL query
            String sql = "INSERT INTO users (name, email, password, college, branch, course, contact, year, age) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password); // In production, ensure to hash passwords
            preparedStatement.setString(4, college);
            preparedStatement.setString(5, branch);
            preparedStatement.setString(6, course);
            preparedStatement.setString(7, contact);
            preparedStatement.setString(8, year);
            preparedStatement.setString(9, age);

            // Execute the query
            int result = preparedStatement.executeUpdate();
            
             // Set the email in the session
            HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);


            if (result > 0) {
                // Redirect to a success page or show a success message
                response.sendRedirect("questionnaire.jsp");
            } else {
                // Handle failure
                response.sendRedirect("signup.jsp?error=Signup%20failed");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=Database%20error");
        } finally {
            // Close resources
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
