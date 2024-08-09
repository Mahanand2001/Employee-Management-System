<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Search</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .search-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .table-container {
            margin-top: 20px;
        }
        .search-container .form-select {
            flex: 0 0 30%;
            max-width: 30%;
        }
        .search-container .form-control {
            flex: 0 0 50%;
            max-width: 50%;
        }
        .search-container .btn {
            flex: 0 0 20%;
            max-width: 20%;
        }
    </style>
</head>
<%@ include file="AdminHeader.jsp" %>
<body>
    <div class="container">
        <!-- Search Bar -->
        <div class="search-container">
            <div class="input-group mb-3">
                <select class="form-select" id="searchType">
                    <option value="name">By Name</option>
                    <option value="employeeID">By Employee ID</option>
                    <option value="department">By Department</option>
                    <option value="position">By Position</option>
                    <option value="mobileNumber">By Mobile Number</option>
                    <option value="employeeEmail">By Employee Email</option>
                </select>
                <input type="text" class="form-control" id="searchInput" placeholder="Enter the name">
                <button class="btn btn-primary" type="button" id="searchButton">Search</button>
            </div>
        </div>

        <!-- Employee Table -->
        <div class="table-container" id="resultsTable" style="display: none;">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Mobile Number</th>
                        <th>Department</th>
                        <th>Position</th>
                        <th>Email</th>
                        <th>Attendance Report</th>
                        <th>Edit Details</th>
                        <th>More Options</th>
                    </tr>
                </thead>
                <tbody id="tableBody">
                    <!-- Dynamic rows will be added here -->
                </tbody>
            </table>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const searchType = document.getElementById('searchType');
            const searchInput = document.getElementById('searchInput');
            const searchButton = document.getElementById('searchButton');
            const resultsTable = document.getElementById('resultsTable');
            const tableBody = document.getElementById('tableBody');

            // Update placeholder text based on search type selection
            searchType.addEventListener('change', function() {
                const selectedType = searchType.value;
                switch (selectedType) {
                    case 'name':
                        searchInput.placeholder = 'Enter the name';
                        break;
                    case 'employeeID':
                        searchInput.placeholder = 'Enter the employee ID';
                        break;
                    case 'department':
                        searchInput.placeholder = 'Enter the department';
                        break;
                    case 'position':
                        searchInput.placeholder = 'Enter the position';
                        break;
                    case 'mobileNumber':
                        searchInput.placeholder = 'Enter the mobile number';
                        break;
                    case 'employeeEmail':
                        searchInput.placeholder = 'Enter the employee email';
                        break;
                }
            });

            // Simulate search and show results
            searchButton.addEventListener('click', function() {
                // Clear existing rows
                tableBody.innerHTML = '';

                // Dummy data for demonstration purposes
                const dummyData = [
                    {
                        name: 'Suraj Yadav',
                        mobileNumber: '1234567890',
                        department: 'IT',
                        position: 'Dev',
                        email: 'Test@gmail.com',
                    },
                    // Add more dummy data as needed
                ];

                // Populate table with dummy data
                dummyData.forEach(employee => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${employee.name}</td>
                        <td>${employee.mobileNumber}</td>
                        <td>${employee.department}</td>
                        <td>${employee.position}</td>
                        <td>${employee.email}</td>
                        <td><a href="#">View Report</a></td>
                        <td><a href="#">Edit</a></td>
                        <td><a href="#">Options</a></td>
                    `;
                    tableBody.appendChild(row);
                });

                // Show the results table
                resultsTable.style.display = 'block';
            });
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.7/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
<%@include file="footer.jsp" %>
</html>
