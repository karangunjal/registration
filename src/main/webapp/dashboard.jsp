<%@ page session="true" %>
<%
    // Optional: Redirect to login if not logged in
    if (session.getAttribute("fullname") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <!-- ✅ Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background: #f0f2f5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .dashboard-header {
            background-color: #007bff;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .main-content {
            flex: 1;
            padding: 40px;
        }
        .card {
            border-radius: 12px;
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
        <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <span class="nav-link">Welcome, <strong><%= session.getAttribute("fullname") %></strong></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- ✅ Dashboard Content -->
<div class="main-content container">
    <div class="row">
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Your Profile</h5>
                    <p class="card-text">View and update your profile details.</p>
                    <a href="#" class="btn btn-outline-primary">Go</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Settings</h5>
                    <p class="card-text">Change your preferences and password.</p>
                    <a href="#" class="btn btn-outline-primary">Go</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Help & Support</h5>
                    <p class="card-text">Contact support or read FAQs.</p>
                    <a href="#" class="btn btn-outline-primary">Go</a>
                </div>
            </div>
        </div>
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
