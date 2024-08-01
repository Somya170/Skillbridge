<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Panel</title>
    <link rel="stylesheet" href="expert.css"> <!-- Link to the CSS file -->
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="logo">
                <h1>Skillbridge</h1>
            </div>
            <nav>
                <ul class="nav-links">
                    <li><a href="index.jsp"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="community.jsp"><i class="fas fa-users"></i> Community</a></li>
                    <li><a href="mentorship.jsp"><i class="fas fa-chalkboard-teacher"></i> Mentorship</a></li>
                    <li><a href="learningPaths.jsp"><i class="fas fa-road"></i> Learning Paths</a></li>
                    <li><a href="expert.jsp"><i class="fas fa-user-tie"></i> Expert Panel</a></li>
                </ul>
                <div class="auth-buttons">
                    <a href="login.jsp" class="auth-btn">Login</a>
                    <a href="register.jsp" class="auth-btn">Sign Up</a>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero-expert">
        <div class="hero-content">
            <h2>Meet Our Expert Panel</h2>
            <p>Get insights from industry leaders and elevate your career with expert guidance.</p>
        </div>
    </section>

    <!-- Expert Panel Section -->
    <section class="expert-panel">
        <div class="container">
            <h3>Our Experts</h3>
            <div class="expert-list">
                <div class="expert-item">
                    <img src="expert1.jpg" alt="Expert 1">
                    <h4>Dr. Sarah Johnson</h4>
                    <p>AI Specialist at Innovate Labs</p>
                    <div class="expert-details">
                        <p>Specializes in Artificial Intelligence and Machine Learning, with over 10 years of experience in the industry.</p>
                    </div>
                </div>
                <div class="expert-item">
                    <img src="expert2.jpg" alt="Expert 2">
                    <h4>Michael Lee</h4>
                    <p>Cybersecurity Analyst at SecureTech</p>
                    <div class="expert-details">
                        <p>Expert in Cybersecurity and Ethical Hacking, with a background in network security and data protection.</p>
                    </div>
                </div>
                <!-- Add more expert items as needed -->
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Skillbridge. All rights reserved.</p>
        <div class="footer-links">
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact Us</a>
        </div>
        <div class="social-icons">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-linkedin-in"></a>
            <!-- Add more social icons as needed -->
        </div>
    </footer>

    <!-- Font Awesome CDN for icons -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>
