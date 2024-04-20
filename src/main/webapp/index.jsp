<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="style.css" type="text/css"/>
    <title>Admin Panel</title>
</head>
<body>
    <div class="side-menu">
        <div class="brand-name">
           <h2>RK Info<span> Systems</span></h2>
        </div>
        <ul>
            <li class="dashboard-option">
                <span class="material-symbols-outlined">grid_view</span>
                <h3>Dashboard</h3> </li>
            <li class="project-option"> <!-- Add a class to identify the Projects option -->
                <span class="material-symbols-outlined">task</span>
                <h3>Projects</h3>
            </li>
            <li class="Analytics-option"><span class="material-symbols-outlined">insights</span>
                <h3>Analytics</h3> </li>
            <li class="Reports-option"><span class="material-symbols-outlined">report_gmailerrorred</span>
                <h3>Reports</h3> </li>
            <li class="UploadData-option" ><span class="material-symbols-outlined">Upload</span>
                <h3>UploadData</h3> </li>
            <li><span class="material-symbols-outlined">help</span>
                <h3>Help</h3> </li>
            <li>
                <span class="material-symbols-outlined">settings</span>
                <h3>settings</h3>
            </li>
            <li>
                <span class="material-symbols-outlined">Logout</span>
                <h3>Logout</h3>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="header">
            <div class="nav">
                <div class="search">
                    <input type="text" placeholder="Search..">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </div>
                <div class="user">
                    <a href="#" class="btn">Add New</a>
<!--                    <button type="submit"><i class="fas fa-bell"></i></button>-->
<!--                    <div class="img-case">
                        <button type="submit"><i class="fas fa-user"></i></button>
                    </div>-->
                     <!-- Logout button -->
                    <a href="logout.jsp" class="btn">Logout</a>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="cards">
                <!-- Card elements -->
                 <div class="card">
                    <div class="box">
                        <h1>200</h1>
                        <h3>Projects</h3>
                    </div>
                    <div class="icon-case">
                             <i class="fas fa-tasks"></i>

                    </div>
                </div>
                  <div class="card">
                    <div class="box">
                        <h1>150</h1>
                        <h3>Completed</h3>
                    </div>
                    <div class="icon-case">
                           <i class="fas fa-check-circle"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>30</h1>
                        <h3>working</h3>
                    </div>
                    <div class="icon-case">
                        <i class="fas fa-spinner"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>20</h1>
                        <h3>schduled</h3>
                    </div>
                    <div class="icon-case">
                     <i class="schduled fas fa-calendar-alt"></i>
                    </div>
                </div>
            </div>
            </div>
        </div>
   
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Add event listener to the Projects option
            var projectOption = document.querySelector(".project-option");
            projectOption.addEventListener("click", function() {
                // Fetch data when the "Projects" option is clicked
                fetch('fetchData.jsp') // Replace 'fetchDataFromDashboard.jsp' with your actual endpoint
                .then(response => response.text())
                .then(data => {
                    // Display the fetched data in the content area
                    document.querySelector(".content").innerHTML = data;
                });
            });
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Add event listener to the Projects option
            var dashboard-Option = document.querySelector(".dashboard-option");
           dashboard-Option.addEventListener("click", function() {
                // Fetch data when the "Projects" option is clicked
                fetch('') // Replace 'fetchDataFromDashboard.jsp' with your actual endpoint
                .then(response => response.text())
                .then(data => {
                    // Display the fetched data in the content area
                    document.querySelector(".content").innerHTML = data;
                });
            });
        });
    </script>
    
     <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Add event listener to the Projects option
            var AnalyticsOption = document.querySelector(".Analytics-option");
           AnalyticsOption.addEventListener("click", function() {
                // Fetch data when the "Projects" option is clicked
                fetch('analyticsfetchdata.jsp') // Replace 'fetchDataFromDashboard.jsp' with your actual endpoint
                .then(response => response.text())
                .then(data => {
                    // Display the fetched data in the content area
                    document.querySelector(".content").innerHTML = data;
                });
            });
        });
    </script>
    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Add event listener to the Projects option
            var ReportsOption = document.querySelector(".Reports-option");
           ReportsOption.addEventListener("click", function() {
                // Fetch data when the "Projects" option is clicked
                fetch('reports.jsp') // Replace 'fetchDataFromDashboard.jsp' with your actual endpoint
                .then(response => response.text())
                .then(data => {
                    // Display the fetched data in the content area
                    document.querySelector(".content").innerHTML = data;
                });
            });
        });
    </script>
    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Add event listener to the Projects option
            var UploadDataOption = document.querySelector(".UploadData-option");
           UploadDataOption.addEventListener("click", function() {
                // Fetch data when the "Projects" option is clicked
                fetch('dashboard.jsp') // Replace 'fetchDataFromDashboard.jsp' with your actual endpoint
                .then(response => response.text())
                .then(data => {
                    // Display the fetched data in the content area
                    document.querySelector(".content").innerHTML = data;
                });
            });
        });
    </script>
</body>
</html>
