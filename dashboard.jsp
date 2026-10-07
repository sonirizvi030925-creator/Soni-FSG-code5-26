<%@ page language="java" %>
<%
    if(session.getAttribute("useremail") == null){
        response.sendRedirect("login.jsp?message=Login First!");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - AuthApp</title>
    <style>
        /* Modern CSS Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Center dashboard content on the screen */
        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }

        /* Dashboard Panel Container */
        .dashboard-card {
            background-color: #ffffff;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 450px;
        }

        /* Header Layout */
        .dashboard-header {
            border-bottom: 2px solid #f3f4f6;
            padding-bottom: 1rem;
            margin-bottom: 1.5rem;
        }

        h2 {
            color: #333333;
            font-size: 1.8rem;
            font-weight: 600;
        }

        /* Profile Greeting Details */
        .profile-section {
            background-color: #f9fafb;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            padding: 1.25rem;
            margin-bottom: 2rem;
        }

        h4 {
            color: #1f2937;
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .user-email {
            color: #6b7280;
            font-size: 0.95rem;
        }

        /* Premium Logout Button */
        .btn-logout {
            display: inline-block;
            width: 100%;
            text-align: center;
            padding: 0.8rem;
            background-color: #dc2626;
            color: #ffffff;
            text-decoration: none;
            font-size: 1rem;
            font-weight: 500;
            border-radius: 6px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* Hover & Click States */
        .btn-logout:hover {
            background-color: #b91c1c;
        }

        .btn-logout:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>

    <div class="dashboard-card">
        <div class="dashboard-header">
            <h2>Dashboard</h2>
        </div>
        
        <div class="profile-section">
            <h4>Welcome, <%= session.getAttribute("username") %></h4>
            <p class="user-email">Email ID: <%= session.getAttribute("useremail") %></p>
        </div>
        
        <a href="logout" class="btn-logout">Logout</a>
    </div>

</body>
</html>
