<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #f4f4f4;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }
        h1 {
            color: #333;
        }
        .success {
            color: green;
            font-size: 18px;
            margin-top: 20px;
        }
        .error {
            color: red;
            font-size: 18px;
            margin-top: 20px;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
<div class="container">
<%
   try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "tiger");

       String username = request.getParameter("user");
       String mypass = request.getParameter("password");

       PreparedStatement ps = con.prepareStatement("SELECT * FROM login WHERE USERNAME=? AND password=?");
       ps.setString(1, username);
       ps.setString(2, mypass);

       ResultSet rs = ps.executeQuery();
       if (rs.next()) {
%>
           <h1>Welcome!</h1>
           <div class="success">Hello, <strong><%= rs.getString("Full_name") %></strong>. You have logged in successfully.</div>
           <a href="dashboard.jsp">Go to Dashboard</a>
<%
       } else {
%>
           <h1>Login Failed</h1>
           <div class="error">Invalid Username or Password. Please try again.</div>
           <a href="login.html">Back to Login</a>
<%
       }
   } catch (Exception e) {
       out.println("<h1>Error</h1>");
       out.println("<div class='error'>Database connection failed. Please try again later.</div>");
       e.printStackTrace();
   }
%>
</div>
</body>
</html>
