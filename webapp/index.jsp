<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Electricity Bill Calculator</title>
    <link rel="stylesheet" href="style.css">
    
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4" style="width: 100%; max-width: 400px;">
            <h3 class="card-title text-center mb-4">Electricity Bill Calculator </h3>
            <form action="Bill" method="post">
                <div class="mb-3">
                    <label class="form-label">Consumer Name</label>
                    <input type="text" class="form-control" name="name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Units Consumed</label>
                    <input type="number" class="form-control" name="units" required>
                </div>
                <button type="submit" class="btn btn-primary w-100 mb-2">Calculate Bill</button>
                <a href="viewBills.jsp" class="btn btn-success w-100">View All Bills</a>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>