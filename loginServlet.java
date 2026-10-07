package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Load Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
    
            // Get Connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userAuth", "root", "Soni_sqlserver");

            // Create Statement
            Statement stmt = conn.createStatement();

            // Execute Query
            // Select Statements
            ResultSet rs = stmt.executeQuery("SELECT *FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+password+"'");
            
            if(rs.next()) {
                // Login successful
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("name"));
                session.setAttribute("useremail", rs.getString("email"));
                response.sendRedirect("dashboard.jsp");
            } else {
                // Login failed
                response.sendRedirect("login.jsp?message=Incorrect Credentials.");
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
