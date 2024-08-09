<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Registration</title>
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
                <h2 class="card-title text-center">Registration</h2>
                <form id="registrationForm">
                    <div class="mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" required>
                    </div>
                    <div class="mb-3">
                        <label for="middleName" class="form-label">Middle Name</label>
                        <input type="text" class="form-control" id="middleName">
                    </div>
                    <div class="mb-3">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastName" required>
                    </div>
                    <div class="mb-3">
                        <label for="mobileNumberReg" class="form-label">Mobile Number</label>
                        <input type="text" class="form-control" id="mobileNumberReg" required>
                    </div>
                    <div class="mb-3" id="otpSectionReg" style="display: none;">
                        <label for="otpReg" class="form-label">OTP</label>
                        <input type="text" class="form-control" id="otpReg" required>
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const registrationForm = document.getElementById('registrationForm');
            const otpSectionReg = document.getElementById('otpSectionReg');
            const mobileNumberInputReg = document.getElementById('mobileNumberReg');
            const submitButton = registrationForm.querySelector('button[type="submit"]');

            registrationForm.addEventListener('submit', function(event) {
                event.preventDefault();
                const mobileNumber = mobileNumberInputReg.value.trim();
                const isValidMobileNumber = /^[0-9]{10}$/.test(mobileNumber);

                console.log('Mobile number:', mobileNumber);
                console.log('Is valid:', isValidMobileNumber);

                if (isValidMobileNumber) {
                    console.log('Valid number, showing OTP section');
                    otpSectionReg.style.display = 'block';
                    mobileNumberInputReg.setAttribute('readonly', true);
                    submitButton.textContent = 'Verify OTP';
                } else {
                    alert('Please enter a valid 10-digit mobile number.');
                }
            });
        });
    </script>
</body>
<%@ include file="footer.jsp" %>
</html>
