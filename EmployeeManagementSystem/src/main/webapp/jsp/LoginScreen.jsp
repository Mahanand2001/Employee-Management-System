<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Screen</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hidden {
            display: none;
        }
    </style>
</head>
<%@ include file="Header1.jsp" %>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center mb-4">Login</h3>
                        <form id="loginForm">
                            <div class="mb-3">
                                <label class="form-label">Select Role</label>
                                <select class="form-select" id="roleSelect">
                                    <option value="admin">Admin</option>
                                    <option value="employee">Employee</option>
                                </select>
                            </div>

                            <div id="adminFields" class="hidden">
                                <div class="mb-3">
                                    <label for="adminUsername" class="form-label">Username</label>
                                    <input type="text" class="form-control" id="adminUsername" placeholder="Enter username">
                                </div>
                                <div class="mb-3">
                                    <label for="adminPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="adminPassword" placeholder="Enter password">
                                </div>
                            </div>

                            <div id="employeeFields" class="hidden">
                                <div class="mb-3">
                                    <label for="employeeMobile" class="form-label">Mobile Number</label>
                                    <input type="text" class="form-control" id="employeeMobile" placeholder="Enter mobile number">
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="otpPage" class="container mt-5 hidden">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center mb-4">OTP Authentication</h3>
                        <form id="otpForm">
                            <div class="mb-3">
                                <label for="otp" class="form-label">Enter OTP</label>
                                <input type="text" class="form-control" id="otp" placeholder="Enter OTP">
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Verify OTP</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const roleSelect = document.getElementById("roleSelect");
            const adminFields = document.getElementById("adminFields");
            const employeeFields = document.getElementById("employeeFields");
            const loginForm = document.getElementById("loginForm");
            const otpPage = document.getElementById("otpPage");

            roleSelect.addEventListener("change", function() {
                if (roleSelect.value === "admin") {
                    adminFields.classList.remove("hidden");
                    employeeFields.classList.add("hidden");
                } else {
                    adminFields.classList.add("hidden");
                    employeeFields.classList.remove("hidden");
                }
            });

            loginForm.addEventListener("submit", function(event) {
                event.preventDefault();
                if (roleSelect.value === "employee") {
                    document.querySelector('.container.mt-5').classList.add("hidden");
                    otpPage.classList.remove("hidden");
                } else {
                    alert("Admin login submitted");
                    // Add your admin login logic here
                }
            });

            document.getElementById("otpForm").addEventListener("submit", function(event) {
                event.preventDefault();
                alert("OTP verified");
                window.location.href = "/EmployeeManagementSystem/index.jsp"
                // Add your OTP verification logic here
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<%@ include file="footer.jsp" %>
</html>
