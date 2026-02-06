<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Bills</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container my-5">
        <h3 class="text-center mb-4">All Electricity Bills</h3>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Sl. No</th>
                        <th>Consumer Name</th>
                        <th>Units</th>
                        <th>Bill Amount</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(
                                "jdbc:mysql://localhost:3306/electricity_db", "root", "");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM bills ORDER BY id ASC");

                            int count = 1;
                            while (rs.next()) {
                    %>
                        <tr>
                            <td><%= count++ %></td>
                            <td><%= rs.getString("consumer_name") %></td>
                            <td><%= rs.getInt("units") %></td>
                            <td><%= rs.getDouble("bill_amount") %></td>
                            <td><%= rs.getTimestamp("bill_date") %></td>
                        </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>
        <div class="text-center mt-3">
            <a href="index.jsp" class="btn btn-primary">Back to Calculator</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
