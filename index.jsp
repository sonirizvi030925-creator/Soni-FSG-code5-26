<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to AuthApp</title>
    <style>
        /* Modern CSS Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Center content beautifully on the screen */
        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }

        /* The App Card Container */
        .card {
            background-color: #ffffff;
            padding: 3rem 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        /* App Title */
        h2 {
            color: #333333;
            font-size: 2rem;
            margin-bottom: 2rem;
            font-weight: 600;
        }

        /* Styling the Link to look like a Premium Button */
        .btn-login {
            display: inline-block;
            width: 100%;
            padding: 0.85rem;
            background-color: #764ba2;
            color: #ffffff;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 500;
            border-radius: 6px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* Hover & Active Effects */
        .btn-login:hover {
            background-color: #5a377d;
        }

        .btn-login:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>

    <div class="card">
        <h2>Welcome to the AuthApp</h2>
        <a href="login.jsp" class="btn-login">Login</a>
    </div>

</body>
</html>
