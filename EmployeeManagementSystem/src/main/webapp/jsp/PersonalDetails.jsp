<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Personal Details</title>
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
    </style>
</head>
<%@ include file="Header1.jsp" %>
<body>
    <div class="container">
        <h2 class="text-center">Personal Details</h2>
        <form id="personalDetailsForm">
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input type="text" class="form-control" id="address" required>
            </div>
            <div class="mb-3">
                <label for="employeeId" class="form-label">Employee ID</label>
                <input type="text" class="form-control" id="employeeId" required>
            </div>
            <div class="mb-3">
                <label for="department" class="form-label">Department</label>
                <input type="text" class="form-control" id="department" required>
            </div>
            <div class="mb-3">
                <label for="position" class="form-label">Position</label>
                <input type="text" class="form-control" id="position" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        const personalDetailsForm = document.getElementById('personalDetailsForm');

        personalDetailsForm.addEventListener('submit', function(event) {
            event.preventDefault();
            window.location.href = 'employee_home.html';
        });
    </script>
</body>
<%@ include file="footer.jsp" %>
</html>
