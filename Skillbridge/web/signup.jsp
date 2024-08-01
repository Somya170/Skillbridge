<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Skillbridge</title>
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

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group input:focus, .form-group select:focus {
            border-color: #ffcc00;
            outline: none;
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

    <!-- Header (You can include your header here) -->

    <div class="container">
        <h1>Signup for Skillbridge</h1>
        <form action="SubmitSignupServlet" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="college">College/School</label>
                <input type="text" id="college" name="college" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch</label>
                <select id="branch" name="branch" required>
                    <option value="">Select Branch</option>
                    <option value="CSE">Computer Science</option>
                    <option value="IT">Information Technology</option>
                    <option value="ECE">Electronics and Communication</option>
                    <option value="EEE">Electrical and Electronics</option>
                    <option value="ME">Mechanical Engineering</option>
                    <option value="CE">Civil Engineering</option>
                    <option value="Others">Others</option>
                </select>
            </div>
            <div class="form-group" id="course-group">
                <label for="course">Course</label>
                <select id="course" name="course" required>
                    <option value="">Select Course</option>
                    <option value="BTech">B.Tech</option>
                    <option value="MTech">M.Tech</option>
                    <option value="BSc">B.Sc</option>
                    <option value="MSc">M.Sc</option>
                    <option value="Diploma">Diploma</option>
                    <option value="Others">Others</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="tel" id="contact" name="contact" pattern="[0-9]{10}" required>
                <small>Enter a 10-digit phone number</small>
            </div>
            <div class="form-group">
                <label for="year">Year/Class</label>
                <select id="year" name="year" required>
                    <option value="">Select Year/Class</option>
                    <option value="1">1st Year</option>
                    <option value="2">2nd Year</option>
                    <option value="3">3rd Year</option>
                    <option value="4">4th Year</option>
                    <option value="5">5th Year</option>
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" min="1" max="120" required>
            </div>
            <div class="form-group">
                <button type="submit">Sign Up</button>
            </div>
        </form>
    </div>

    <!-- Popup -->
    <div id="popup" class="popup">
        <div class="popup-content">
            <h2>Let's Begin!</h2>
            <p>Welcome to Skillbridge. You're one step closer to bridging your skills!</p>
            <button onclick="closePopup()">Got It!</button>
        </div>
    </div>

    <script>
        function showPopup() {
            document.getElementById('popup').style.display = 'flex';
        }

        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }

        // Check if there's a query parameter to show the popup
        if (window.location.search.includes('popup=show')) {
            showPopup();
        }
    </script>
</body>
</html>
