<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Employee Leave Application</title>
    <style>
        .hidden {
            display: none;
        }
    </style>
</head>
<%@ include file="Header.jsp" %>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Employee Leave Application</h2>
        <form>
            <div class="mb-3">
                <label for="leaveType" class="form-label">Type of Leave</label>
                <select class="form-select" id="leaveType" aria-label="Leave Type" required>
                    <option value="single" selected>Single Day Leave</option>
                    <option value="multiple">Multiple Days Leave</option>
                </select>
            </div>
            
            <div id="singleDayLeave" class="mb-3">
                <label for="singleDate" class="form-label">Select Date</label>
                <input type="date" class="form-control" id="singleDate" required>
            </div>
            
            <div id="multipleDayLeave" class="mb-3 hidden">
                <label for="startDate" class="form-label">Start Date</label>
                <input type="date" class="form-control mb-2" id="startDate" required>
                <label for="endDate" class="form-label">End Date</label>
                <input type="date" class="form-control" id="endDate" required>
            </div>
            
            <div class="mb-3">
                <label for="reason" class="form-label">Reason for Leave</label>
                <textarea class="form-control" id="reason" rows="3" placeholder="Enter your reason here" required></textarea>
            </div>
            
            <button type="submit" class="btn btn-primary">Submit Application</button>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const leaveType = document.getElementById("leaveType");
            const singleDayLeave = document.getElementById("singleDayLeave");
            const multipleDayLeave = document.getElementById("multipleDayLeave");
            const singleDate = document.getElementById("singleDate");
            const startDate = document.getElementById("startDate");
            const endDate = document.getElementById("endDate");

            leaveType.addEventListener("change", function() {
                if (leaveType.value === "single") {
                    singleDayLeave.classList.remove("hidden");
                    multipleDayLeave.classList.add("hidden");
                    singleDate.required = true;
                    startDate.required = false;
                    endDate.required = false;
                } else {
                    singleDayLeave.classList.add("hidden");
                    multipleDayLeave.classList.remove("hidden");
                    singleDate.required = false;
                    startDate.required = true;
                    endDate.required = true;
                }
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<%@ include file="footer.jsp" %>
</html>
