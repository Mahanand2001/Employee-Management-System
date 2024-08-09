<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>
    <style>
        .card-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            width: 50%;
        }
    </style>
</head>
<%@ include file="Header1.jsp" %>
<body>
    <div class="card-container">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center">Login</h2>
                <form id="loginForm">
                    <div class="mb-3">
                        <label for="mobileNumber" class="form-label">Mobile Number</label>
                        <input type="text" class="form-control" id="mobileNumber" required>
                    </div>
                    <div class="mb-3" id="otpSection" style="display: none;">
                        <label for="otp" class="form-label">OTP</label>
                        <input type="text" class="form-control" id="otp" required>
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
                <p class="mt-3">Don't have an account? <a href="/EmployeeManagementSystem/jsp/RegistrationScreen.jsp">Click here</a></p>
            </div>
        </div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        console.log('Page loaded');

        const mobileNumberInput = document.getElementById('mobileNumber');
        const otpSection = document.getElementById('otpSection');
        const otpInput = document.getElementById('otp');
        const submitButton = document.querySelector('button[type="submit"]');

        // Define specific number and OTP
        const specificNumber = '1234567890';
        const definedOtp = '123456';

        submitButton.addEventListener('click', function(event) {
            event.preventDefault();
            const mobileNumber = mobileNumberInput.value.trim();
            const otp = otpInput.value.trim();
            const isValidMobileNumber = /^[0-9]{10}$/.test(mobileNumber);

            console.log('Mobile number entered:', mobileNumber);
            console.log('Is valid mobile number:', isValidMobileNumber);

            if (isValidMobileNumber) {
                if (otpSection.style.display === 'none') {
                    otpSection.style.display = 'block';
                    mobileNumberInput.setAttribute('readonly', true);
                    submitButton.textContent = 'Verify OTP';
                    console.log('OTP section displayed');
                } else {
                    if (mobileNumber === specificNumber && otp === definedOtp) {
                        console.log('Redirecting to adminHome.jsp');
                        window.location.href = '/EmployeeManagementSystem/jsp/AdminHome.jsp';
                    } else if (otp != definedOtp) {  // Assuming the OTP needs to be valid for both cases
                        console.log('Redirecting to employee.jsp');
                        window.location.href = '/EmployeeManagementSystem/index.jsp';
                    } else {
                        alert('Invalid OTP. Please try again.');
                    }
                }
            } else {
                alert('Please enter a valid 10-digit mobile number.');
            }
        });
    });
    </script>
</body>
<%@ include file="footer.jsp" %>
</html>
