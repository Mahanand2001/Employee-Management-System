<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
     <style>
        .card-img-top {
            height: auto;
            width: auto;
            max-height: 200px; /* Adjust max-height as needed */
        }
    </style>
</head>
<%@ include file="Header.jsp" %>
<body>
    <div class="container d-flex justify-content-center align-items-center mb-5 min-vh-100">
    <div class="card text-center" style="width: 18rem;">
        <img src="/EmployeeManagementSystem/Images/DefaultProfile1.jpeg" class="card-img-top rounded-circle" alt="Employee Image">
        <div class="card-body text-start">
            <h5 class="card-title text-center">Suraj Yadav</h5>
            <p class="card-text"><strong>Date Of Birth:</strong> 02-02-2001</p>
            <p class="card-text"><strong>Mobile:</strong> +91234567890</p>
            <p class="card-text"><strong>Email:</strong> test@example.com</p>
            <p class="card-text"><strong>Address:</strong> Near hiranandani,patlipada</p>
            <p class="card-text"><strong>Department:</strong> IT</p>
            <p class="card-text"><strong>Date of joining:</strong> 09-06-2024</p>
            <p class="card-text"><strong>Position:</strong> Software Engineer</p>
            <p class="card-text"><strong>Working Schedule:</strong> Mon-Fri, 9am - 5pm</p>
        </div>
    </div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>
</body>
<%@ include file="footer.jsp" %>
</html>
