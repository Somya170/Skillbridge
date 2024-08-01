import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class SubmitQuestionnaireServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/skillbridge";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Somya@0407"; // Consider storing this securely
    private static final Logger LOGGER = Logger.getLogger(SubmitQuestionnaireServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch form data
        String goal = request.getParameter("goal");
        String field = request.getParameter("field");
        String learning = request.getParameter("learning");
        String workEnvironment = request.getParameter("work_environment");
        String workLifeBalance = request.getParameter("work_life_balance");
        String skillDevelopment = request.getParameter("skill_development");
        String careerClarity = request.getParameter("career_clarity");
        String industry = request.getParameter("industry");
        String guidance = request.getParameter("guidance");
        String goalNextYears = request.getParameter("goal_next_years");

        // Retrieve user email from session
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("userEmail");

        if (email != null && !email.isEmpty()) {
            // Store data in the database
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String query = "INSERT INTO user_questionnaire (email, goal, field, learning, work_environment, work_life_balance, skill_development, career_clarity, industry, guidance, goal_next_years) " +
                               "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " +
                               "ON DUPLICATE KEY UPDATE goal = VALUES(goal), field = VALUES(field), learning = VALUES(learning), work_environment = VALUES(work_environment), work_life_balance = VALUES(work_life_balance), skill_development = VALUES(skill_development), career_clarity = VALUES(career_clarity), industry = VALUES(industry), guidance = VALUES(guidance), goal_next_years = VALUES(goal_next_years)";

                try (PreparedStatement stmt = conn.prepareStatement(query)) {
                    stmt.setString(1, email);
                    stmt.setString(2, goal);
                    stmt.setString(3, field);
                    stmt.setString(4, learning);
                    stmt.setString(5, workEnvironment);
                    stmt.setString(6, workLifeBalance);
                    stmt.setString(7, skillDevelopment);
                    stmt.setString(8, careerClarity);
                    stmt.setString(9, industry);
                    stmt.setString(10, guidance);
                    stmt.setString(11, goalNextYears);

                    stmt.executeUpdate();
                }

                // Redirect to home.jsp or another success page
                response.sendRedirect("home.jsp");
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Database error", e);
                response.sendRedirect("error.jsp"); // Consider showing a user-friendly error message
            }
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login page if email is not found
        }
    }
}
