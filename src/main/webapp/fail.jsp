<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <style>
        body {
            background-color: #ff4e50;
            background-image: linear-gradient(315deg, #ff4e50 0%, #f9d423 74%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
        }
        .fail-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }
        .fail-box h1 {
            color: #e74c3c;
        }
        .fail-box a {
            margin-top: 20px;
            display: inline-block;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="fail-box">
    <h1>Login Failed!</h1>
    <p>Invalid username or password.</p>
    <a href="login.jsp">Try Again</a>
</div>
</body>
</html>
