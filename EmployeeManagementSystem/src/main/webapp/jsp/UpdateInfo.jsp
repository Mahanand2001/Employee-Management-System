<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Personal Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hidden {
            display: none;
        }
    </style>
</head>
<%@ include file="Header.jsp" %>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Change Personal Details</h2>
        <form id="changeDetailsForm">
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeName">
                <label class="form-check-label" for="changeName">Change Name</label>
            </div>
            <div id="nameFields" class="hidden mb-3">
                <label for="newName" class="form-label">New Name</label>
                <input type="text" class="form-control" id="newName" placeholder="Enter new name">
                <label for="nameProof" class="form-label mt-2">Identity Proof</label>
                <input type="file" class="form-control" id="nameProof" accept=".pdf,.jpg,.jpeg,.png">
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeMobile">
                <label class="form-check-label" for="changeMobile">Change Mobile Number</label>
            </div>
            <div id="mobileFields" class="hidden mb-3">
                <label for="newMobile" class="form-label">New Mobile Number</label>
                <input type="text" class="form-control" id="newMobile" placeholder="Enter new mobile number">
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeEmail">
                <label class="form-check-label" for="changeEmail">Change Email</label>
            </div>
            <div id="emailFields" class="hidden mb-3">
                <label for="newEmail" class="form-label">New Email</label>
                <input type="email" class="form-control" id="newEmail" placeholder="Enter new email">
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeAddress">
                <label class="form-check-label" for="changeAddress">Change Address</label>
            </div>
            <div id="addressFields" class="hidden mb-3">
                <label for="newAddress" class="form-label">New Address</label>
                <textarea class="form-control" id="newAddress" rows="3" placeholder="Enter new address"></textarea>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeImage">
                <label class="form-check-label" for="changeImage">Change Image</label>
            </div>
            <div id="imageFields" class="hidden mb-3">
                <label for="newImage" class="form-label">Upload New Image</label>
                <input type="file" class="form-control" id="newImage" accept=".jpg,.jpeg,.png">
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="changeDOB">
                <label class="form-check-label" for="changeDOB">Change Date of Birth</label>
            </div>
            <div id="dobFields" class="hidden mb-3">
                <label for="newDOB" class="form-label">New Date of Birth</label>
                <input type="date" class="form-control" id="newDOB">
                <label for="dobProof" class="form-label mt-2">DOB Proof</label>
                <input type="file" class="form-control" id="dobProof" accept=".pdf,.jpg,.jpeg,.png">
            </div>

            <button type="submit" class="btn btn-primary">Submit Changes</button>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const changeDetailsForm = document.getElementById("changeDetailsForm");
            const fieldsMapping = {
                changeName: "nameFields",
                changeMobile: "mobileFields",
                changeEmail: "emailFields",
                changeAddress: "addressFields",
                changeImage: "imageFields",
                changeDOB: "dobFields"
            };

            Object.keys(fieldsMapping).forEach(id => {
                document.getElementById(id).addEventListener("change", function() {
                    const field = document.getElementById(fieldsMapping[id]);
                    if (this.checked) {
                        field.classList.remove("hidden");
                    } else {
                        field.classList.add("hidden");
                    }
                });
            });

            changeDetailsForm.addEventListener("submit", function(event) {
                event.preventDefault();
                // Add logic here to handle form submission, validation, and file uploads.
                alert("Form submitted!");
            });
        });
    </script>
</body>
<%@ include file="footer.jsp" %>
</html>
