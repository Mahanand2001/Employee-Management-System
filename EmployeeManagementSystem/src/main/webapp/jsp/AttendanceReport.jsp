<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Employee Attendance Report</title>
</head>
<body>
    <%@ include file="Header.jsp" %>
    <div class="container mt-5">
        <h2 class="mb-4">Employee Attendance Report</h2>
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h5 class="mb-0">Suraj Yadav </h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Total Present Days
                                <span class="badge bg-success rounded-pill">200</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Total Absent Days
                                <span class="badge bg-danger rounded-pill">15</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Total Holidays Taken
                                <span class="badge bg-info rounded-pill">10</span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Total Working Days
                                <span class="badge bg-secondary rounded-pill">225</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Total Leaves
                                <span class="badge bg-warning rounded-pill">20</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Overtime Hours
                                <span class="badge bg-primary rounded-pill">50</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
