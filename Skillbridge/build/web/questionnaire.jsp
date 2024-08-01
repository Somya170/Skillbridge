<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Career Path Questionnaire - Skillbridge</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            color: #333;
            scroll-behavior: smooth;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #1a1a1a;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="radio"] {
            margin-right: 10px;
        }

        .form-group button {
            width: 100%;
            padding: 15px;
            background-color: #ffcc00;
            color: #1a1a1a;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group button:hover {
            background-color: #f0f2f5;
            color: #1a1a1a;
        }

        /* Popup Styles */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .popup-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        .popup-content h2 {
            margin-top: 0;
            color: #1a1a1a;
        }

        .popup-content button {
            background-color: #ffcc00;
            color: #1a1a1a;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .popup-content button:hover {
            background-color: #f0f2f5;
            color: #1a1a1a;
        }
    </style>
</head>
<body>
    <!-- Popup -->
    <div id="popup" class="popup">
        <div class="popup-content">
            <h2>Let's Get to Know You!</h2>
            <p>Help us design your career path by answering a few questions.</p>
            <button onclick="closePopup()">Start</button>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Career Path Questionnaire</h1>
        <form action="SubmitQuestionnaireServlet" method="post">
            <div class="form-group">
                <label>1. What is your main goal on Skillbridge?</label>
                <label><input type="radio" name="goal" value="A" required> Gain industry knowledge</label>
                <label><input type="radio" name="goal" value="B"> Explore career options</label>
                <label><input type="radio" name="goal" value="C"> Network with professionals</label>
                <label><input type="radio" name="goal" value="D"> Enhance skills</label>
            </div>
            <div class="form-group">
                <label>2. Which field interests you most?</label>
                <label><input type="radio" name="field" value="A" required> Technology</label>
                <label><input type="radio" name="field" value="B"> Business</label>
                <label><input type="radio" name="field" value="C"> Creative Arts</label>
                <label><input type="radio" name="field" value="D"> Science</label>
            </div>
            <div class="form-group">
                <label>3. How do you prefer learning?</label>
                <label><input type="radio" name="learning" value="A" required> Hands-on projects</label>
                <label><input type="radio" name="learning" value="B"> Video tutorials</label>
                <label><input type="radio" name="learning" value="C"> Reading</label>
                <label><input type="radio" name="learning" value="D"> Workshops</label>
            </div>
            <div class="form-group">
                <label>4. Preferred work environment?</label>
                <label><input type="radio" name="work_environment" value="A" required> Startup</label>
                <label><input type="radio" name="work_environment" value="B"> Large company</label>
                <label><input type="radio" name="work_environment" value="C"> Freelance</label>
                <label><input type="radio" name="work_environment" value="D"> Academic</label>
            </div>
            <div class="form-group">
                <label>5. Work-life balance importance?</label>
                <label><input type="radio" name="work_life_balance" value="A" required> Extremely</label>
                <label><input type="radio" name="work_life_balance" value="B"> Somewhat</label>
                <label><input type="radio" name="work_life_balance" value="C"> Neutral</label>
                <label><input type="radio" name="work_life_balance" value="D"> Not important</label>
            </div>
            <div class="form-group">
                <label>6. Skill to develop most?</label>
                <label><input type="radio" name="skill_development" value="A" required> Technical</label>
                <label><input type="radio" name="skill_development" value="B"> Soft</label>
                <label><input type="radio" name="skill_development" value="C"> Creative</label>
                <label><input type="radio" name="skill_development" value="D"> Analytical</label>
            </div>
            <div class="form-group">
                <label>7. Clarity on career path?</label>
                <label><input type="radio" name="career_clarity" value="A" required> Very clear</label>
                <label><input type="radio" name="career_clarity" value="B"> Somewhat clear</label>
                <label><input type="radio" name="career_clarity" value="C"> Not clear</label>
                <label><input type="radio" name="career_clarity" value="D"> Unsure</label>
            </div>
            <div class="form-group">
                <label>8. Industry to explore?</label>
                <label><input type="radio" name="industry" value="A" required> IT</label>
                <label><input type="radio" name="industry" value="B"> Finance</label>
                <label><input type="radio" name="industry" value="C"> Healthcare</label>
                <label><input type="radio" name="industry" value="D"> Arts</label>
            </div>
            <div class="form-group">
                <label>9. Preferred career guidance?</label>
                <label><input type="radio" name="guidance" value="A" required> One-on-one mentorship</label>
                <label><input type="radio" name="guidance" value="B"> Group discussions</label>
                <label><input type="radio" name="guidance" value="C"> Self-paced resources</label>
                <label><input type="radio" name="guidance" value="D"> Workshops</label>
            </div>
            <div class="form-group">
                <label>10. Primary goal for the next 2-3 years?</label>
                <label><input type="radio" name="goal_next_years" value="A" required> Find a job</label>
                <label><input type="radio" name="goal_next_years" value="B"> Start a business</label>
                <label><input type="radio" name="goal_next_years" value="C"> Higher education</label>
                <label><input type="radio" name="goal_next_years" value="D"> Explore options</label>
            </div>
            <div class="form-group">
                <button type="submit">Submit Answers</button>
            </div>
        </form>
    </div>

    <script>
        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }

        // Show the popup on page load
        window.onload = function() {
            document.getElementById('popup').style.display = 'flex';
        };
    </script>
</body>
</html>
