<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Header</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    String currentPage = request.getRequestURI();
%>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
    <a class="navbar-brand" href="/EmployeeManagementSystem/jsp/AdminHome.jsp">Admin Master EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item <%= currentPage.contains("EmployeeSearch.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("EmployeeSearch.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/EmployeeSearch.jsp">Manage Employee</a>
            </li>
            <li class="nav-item <%= currentPage.contains("ApplyLeave.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("ApplyLeave.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/ApplyLeave.jsp">Leaves Check</a>
            </li>
            <li class="nav-item <%= currentPage.contains("UpdateInfo.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("UpdateInfo.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/UpdateInfo.jsp">Change Info</a>
            </li>
            <li class="nav-item <%= currentPage.contains("MakeComplaint.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("MakeComplaint.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/MakeComplaint.jsp">Grievance & Redressals</a>
            </li>
        </ul>
    </div>
</nav>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.7/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>
