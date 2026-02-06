<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Electricity Bill Calculator</title>
    <link rel="stylesheet" href="style.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        
        .login-container {
            backdrop-filter: blur(8px);
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            padding: 40px;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center">
    <div class="login-container" style="width: 100%; max-width: 400px;">
        <h3 class="text-center mb-4">⚡ Electricity Bill Calculator</h3>
        <form action="LoginServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Username</label>
                <input type="text" class="form-control" name="username" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>

            <% String error = (String) request.getAttribute("error"); 
               if (error != null) { %>
                <div class="alert alert-danger text-center"><%= error %></div>
            <% } %>

            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
