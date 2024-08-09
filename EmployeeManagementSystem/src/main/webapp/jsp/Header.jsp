
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Navbar Example</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.1/css/bootstrap.min.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
    // Get the current page's URI
    String currentPage = request.getRequestURI();
%>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
    <a class="navbar-brand" href="/EmployeeManagementSystem/index.jsp">EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item <%= currentPage.contains("Profile.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("Profile.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/Profile.jsp">Profile</a>
            </li>
            <li class="nav-item <%= currentPage.contains("AttendanceReport.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("AttendanceReport.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/AttendanceReport.jsp">Attendance Report</a>
            </li>
            <li class="nav-item <%= currentPage.contains("ApplyLeave.jsp") ? "active" : "" %>">
                <a class="nav-link <%= currentPage.contains("ApplyLeave.jsp") ? "active" : "" %>" href="/EmployeeManagementSystem/jsp/ApplyLeave.jsp">Apply for leave</a>
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
</body>
</html>
