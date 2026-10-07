<%@ page language="java" %>
<%
    if(session.getAttribute("useremail") != null){
        response.sendRedirect("dashboard.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - AuthApp</title>
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

        /* The Form Card Container */
        .card {
            background-color: #ffffff;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 400px;
        }

        /* Heading Style */
        h2 {
            color: #333333;
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            font-weight: 600;
            text-align: center;
        }

        /* Dynamic Error/Info Message Banner */
        .message-banner {
            background-color: #ffeef0;
            border-left: 4px solid #f44336;
            color: #d32f2f;
            padding: 0.75rem;
            border-radius: 4px;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
        }

        /* Input Form Groups */
        .form-group {
            margin-bottom: 1.25rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #666666;
            font-size: 0.9rem;
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #cccccc;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            outline: none;
        }

        /* Highlight inputs on active focus */
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #764ba2;
            box-shadow: 0 0 0 3px rgba(118, 75, 162, 0.2);
        }

        /* Actions layout (Login + Back button inline) */
        .form-actions {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 1.75rem;
            gap: 1rem;
        }

        /* Premium Login Button */
        .btn-submit {
            flex: 2;
            padding: 0.75rem;
            background-color: #764ba2;
            color: #ffffff;
            border: none;
            font-size: 1rem;
            font-weight: 500;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-submit:hover {
            background-color: #5a377d;
        }

        .btn-submit:active {
            transform: scale(0.98);
        }

        /* Styled Back Link */
        .btn-back {
            flex: 1;
            text-align: center;
            padding: 0.75rem;
            background-color: #f3f4f6;
            color: #4b5563;
            text-decoration: none;
            font-size: 1rem;
            font-weight: 500;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #e5e7eb;
            color: #1f2937;
        }
    </style>
</head>
<body>

    <div class="card">
        <h2>Login Page</h2>
        
        <form action="login" method="post">
            <%
                if(request.getParameter("message") != null){
            %>
            <div class="message-banner">
                <p><%= request.getParameter("message") %></p>
            </div>
            <%
                }
            %>
            
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="text" name="email" id="email" required placeholder="Enter your email">
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required placeholder="Enter your password">
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn-submit">Login</button>
                <a href="index.jsp" class="btn-back">Back</a>
            </div>
        </form>
    </div>

</body>
</html>
