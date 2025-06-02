<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <!-- ✅ Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }
        .welcome-box {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .welcome-box h2 {
            color: #007bff;
        }
        footer {
            background-color: #f8f9fa;
            text-align: center;
            padding: 15px 0;
            border-top: 1px solid #dee2e6;
        }
    </style>
</head>
<body>

<!-- ✅ Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MyApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Welcome</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- ✅ Main Content -->
<div class="main-content">
    <div class="welcome-box">
        <h2>Welcome, <%= session.getAttribute("fullname") %>!</h2>
        <p class="lead">You have successfully logged in.</p>
        <a href="dashboard.jsp" class="btn btn-success mt-3">Go to Dashboard</a>
    </div>
</div>

<!-- ✅ Footer -->
<footer>
    <div class="container">
        <p>&copy; 2025 MyApp. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
