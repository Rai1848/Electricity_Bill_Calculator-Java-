<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bill Result</title>
     <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4 text-center" style="width: 100%; max-width: 400px;">
            <h3 class="card-title mb-4">Electricity Bill Result </h3>
            <p><strong>Consumer Name:</strong> ${name}</p>
            <p><strong>Units Consumed:</strong> ${units}</p>
            <p><strong>Total Bill Amount:</strong> ${billAmount}</p>
            <a href="index.jsp" class="btn btn-primary mt-3">Back</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>