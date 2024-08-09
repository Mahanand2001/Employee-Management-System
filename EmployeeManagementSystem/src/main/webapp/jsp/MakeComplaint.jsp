<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Employee Complaint Form</title>
</head>
<%@ include file="Header.jsp" %>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Submit a Complaint</h2>
        <form id="complaintForm">
            <div class="mb-3">
                
                <textarea class="form-control" id="complaint" rows="5" placeholder="Enter your complaint here" required></textarea>
                <div class="invalid-feedback">
                    Complaint must be at least 15 words.
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        document.getElementById('complaintForm').addEventListener('submit', function(event) {
            const complaint = document.getElementById('complaint').value.trim();
            const wordCount = complaint.split(/\s+/).filter(word => word.length > 0).length;

            if (wordCount < 15) {
                event.preventDefault();
                document.getElementById('complaint').classList.add('is-invalid');
            } else {
                document.getElementById('complaint').classList.remove('is-invalid');
            }
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<%@ include file="footer.jsp" %>
</html>
