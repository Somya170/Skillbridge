<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Skillbridge - Home</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <h1>Skillbridge</h1>
            </div>
            <nav>
                <ul class="nav-links">
                    <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="learningPaths.jsp"><i class="fa fa-book"></i> Learning Paths</a></li>
                    <li><a href="mentorship.jsp"><i class="fa fa-user-tie"></i> Mentorship</a></li>
                    <li><a href="community.jsp"><i class="fa fa-users"></i> Community</a></li>
                </ul>
                <div class="auth-buttons">
                    <a href="login.jsp" class="auth-btn"><i class="fa fa-sign-in-alt"></i> Login</a>
                    <a href="signup.jsp" class="auth-btn"><i class="fa fa-user-plus"></i> Sign Up</a>
                </div>
            </nav>
        </div>
    </header>
    <main>
        <section class="hero">
            <h2 class="animate__animated animate__fadeInDown">Connecting Students with Industry Experts</h2>
            <p class="animate__animated animate__fadeInUp">Skillbridge is designed to bridge the gap between students and industry professionals. Our application facilitates direct interaction, allowing students to receive personalized guidance on career paths and industry requirements.</p>
            <a href="learningPaths.jsp" class="btn btn-primary animate__animated animate__fadeInUp">Explore Learning Paths</a>
        </section>
        <section class="features">
            <h3>Key Features</h3>
            <div class="feature-list">
                <div class="feature-item">
                    <i class="fa-solid fa-book-open-reader"></i>
                    <h4>Personalized Learning Paths</h4>
                    <p>Tailored study plans based on student profiles and goals.</p>
                </div>
                <div class="feature-item">
                    <i class="fa-solid fa-road"></i>
                    <h4>Interactive Roadmaps</h4>
                    <p>Engaging roadmaps guiding step-by-step learning.</p>
                </div>
                <div class="feature-item">
                    <i class="fa-solid fa-chalkboard-teacher"></i>
                    <h4>Expert Guidance</h4>
                    <p>Scheduled sessions and Q&A with industry experts.</p>
                </div>
                <div class="feature-item">
                    <i class="fa-solid fa-users"></i>
                    <h4>Community Support</h4>
                    <p>Forums for student connection and knowledge sharing.</p>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Skillbridge | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="script.js"></script>
</body>
</html>
