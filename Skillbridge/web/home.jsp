<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skillbridge - Java Learning Roadmap</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        /* General Styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            color: #333;
            scroll-behavior: smooth;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #1a1a1a;
            color: #fff;
            padding: 10px 20px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Footer Styles */
        .footer {
            background-color: #1a1a1a;
            color: #fff;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Container and Section Styles */
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 30px;
        }

        .section h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #1a1a1a;
        }

        .section p {
            font-size: 16px;
            line-height: 1.6;
        }

        .roadmap-step {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }

        .roadmap-step:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        .roadmap-step::before {
            content: "";
            position: absolute;
            left: -25px;
            top: 10px;
            height: 100%;
            width: 5px;
            background-color: #ffcc00;
        }

        .roadmap-step h3 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        .roadmap-step p {
            font-size: 14px;
            line-height: 1.6;
        }

        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffcc00;
            color: #1a1a1a;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #f0f2f5;
            color: #1a1a1a;
        }

        .btn-secondary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
            margin-left: 10px;
        }

        .btn-secondary:hover {
            background-color: #555;
        }

        /* Animation */
        .fade-in {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Additional Styles for Roadmap Details */
        .roadmap-details {
            padding: 20px;
            background-color: #f7f9fa;
            border-radius: 8px;
            margin-top: 20px;
        }

        .roadmap-details h4 {
            margin: 0 0 10px;
            font-size: 18px;
        }

        .roadmap-details p {
            margin: 0 0 5px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <a href="index.jsp">Skillbridge</a>
        </div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="roadmap.jsp">Roadmap</a>
            <a href="resources.jsp">Resources</a>
            <a href="contact.jsp">Contact</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <div class="section fade-in">
            <h2>Java Learning Roadmap</h2>
            <p>Start your journey to master Java, one of the most versatile and in-demand programming languages. Whether you're a beginner or looking to advance your skills, this roadmap will guide you through each step, from basic concepts to advanced topics.</p>
        </div>

        <div class="section fade-in">
            <div class="roadmap-step">
                <h3>Step 1: Introduction to Java</h3>
                <p>Understand the basics of Java, including syntax, data types, and basic operators. Learn about the Java Virtual Machine (JVM) and the role it plays in running Java applications.</p>
                <div class="roadmap-details">
                    <h4>Topics Covered:</h4>
                    <p>- Java Syntax</p>
                    <p>- Data Types and Variables</p>
                    <p>- Control Structures</p>
                    <p>- Object-Oriented Programming Basics</p>
                </div>
                <a href="intro-to-java.jsp" class="btn-primary">Start Learning</a>
            </div>
            <div class="roadmap-step">
                <h3>Step 2: Object-Oriented Programming</h3>
                <p>Delve deeper into the object-oriented nature of Java. Learn about classes, objects, inheritance, polymorphism, and encapsulation. Understand how to design and implement robust applications using OOP principles.</p>
                <div class="roadmap-details">
                    <h4>Topics Covered:</h4>
                    <p>- Classes and Objects</p>
                    <p>- Inheritance</p>
                    <p>- Polymorphism</p>
                    <p>- Encapsulation and Abstraction</p>
                </div>
                <a href="oop-java.jsp" class="btn-primary">Learn OOP</a>
            </div>
            <div class="roadmap-step">
                <h3>Step 3: Data Structures and Algorithms</h3>
                <p>Explore essential data structures and algorithms in Java. Learn about arrays, linked lists, stacks, queues, hash tables, and more. Understand how to implement algorithms for searching, sorting, and optimizing performance.</p>
                <div class="roadmap-details">
                    <h4>Topics Covered:</h4>
                    <p>- Arrays and Collections</p>
                    <p>- Linked Lists, Stacks, and Queues</p>
                    <p>- Trees and Graphs</p>
                    <p>- Sorting and Searching Algorithms</p>
                </div>
                <a href="ds-algo-java.jsp" class="btn-primary">Master DSA</a>
            </div>
            <div class="roadmap-step">
                <h3>Step 4: Java Frameworks and Libraries</h3>
                <p>Get hands-on experience with popular Java frameworks and libraries like Spring, Hibernate, and JavaFX. Learn how to build web applications, perform database operations, and create dynamic user interfaces.</p>
                <div class="roadmap-details">
                    <h4>Topics Covered:</h4>
                    <p>- Spring Framework</p>
                    <p>- Hibernate ORM</p>
                    <p>- JavaFX for UI</p>
                    <p>- RESTful Web Services</p>
                </div>
                <a href="java-frameworks.jsp" class="btn-primary">Explore Frameworks</a>
            </div>
            <div class="roadmap-step">
                <h3>Step 5: Advanced Java Concepts</h3>
                <p>Advance your knowledge with topics like multithreading, concurrency, networking, and design patterns. Prepare for real-world scenarios and learn how to optimize and secure Java applications.</p>
                <div class="roadmap-details">
                    <h4>Topics Covered:</h4>
                    <p>- Multithreading and Concurrency</p>
                    <p>- Networking in Java</p>
                    <p>- Design Patterns</p>
                    <p>- Security Best Practices</p>
                </div>
                <a href="advanced-java.jsp" class="btn-primary">Learn Advanced Java</a>
            </div>
        </div>

        <div class="section fade-in">
            <h2>Scope and Career Opportunities</h2>
            <p>Java is widely used in various industries, including finance, healthcare, and technology. Professionals with Java expertise can pursue roles such as Software Developer, Backend Developer, Full Stack Developer, and more.</p>
            <p>The demand for Java developers is high, with competitive salaries. The average salary for a Java developer ranges from $70,000 to $120,000 per year, depending on experience and location.</p>
        </div>

        <div class="section fade-in">
            <h2>Ready to Start Your Java Journey?</h2>
            <p>Begin your learning journey with Skillbridge and gain the skills needed to succeed in the tech industry. Whether you're just starting or looking to deepen your knowledge, our resources and community support are here to help you every step of the way.</p>
            <a href="resources.jsp" class="btn-primary">Explore Resources</a>
            <a href="signup.jsp" class="btn-secondary">Join Skillbridge</a>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Skillbridge. All rights reserved.</p>
    </div>

    <!-- JavaScript for Animations -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Add fade-in class to sections after the page loads
            document.querySelectorAll('.fade-in').forEach((section, index) => {
                setTimeout(() => {
                    section.classList.add('fade-in');
                }, index * 300); // Stagger animations
            });
        });
    </script>
</body>
</html>
