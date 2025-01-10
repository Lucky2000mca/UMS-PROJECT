<%-- 
    Document   : dashboard
    Created on : 9 Nov, 2024, 11:35:09 PM
    Author     : asuto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simple Bootstrap Dashboard</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .sidebar {
                height: 100vh;
                background-color: #343a40;
                padding: 20px;
                color: white;
            }

            .sidebar h2 {
                margin-bottom: 30px;
                font-size: 24px;
            }

            .sidebar a {
                color: white;
                text-decoration: none;
                padding: 10px 0;
                display: block;
            }

            .sidebar a:hover {
                background-color: #495057;
                padding-left: 10px;
            }

            .topbar {
                background-color: #6200ea;
                padding: 15px;
                color: white;
            }

            .card {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            /* Footer logout button */
            .logout-btn {
                background-color: #ff4d4d;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                text-align: center;
                width: 100%;
                margin-top: 20px;
            }

            .logout-btn:hover {
                background-color: #ff6666;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-md-2 sidebar">
                    <h5><%= session.getAttribute("fname")%><%= session.getAttribute("lname")%> </h5>
                    <a href="#">Home</a>
                    <a href="#">Analytics</a>
                    <a href="#">Users</a>
                    <a href="#">Settings</a>
                    <a href="delete.html">Delete Account</a>
                    <!-- Logout Button -->
                    <!-- Logout Button -->
                    <form action="logout" method="post" style="margin-top: 20px;">
                        <button type="submit" class="logout-btn">Logout</button>
                    </form>

                </div>

                <!-- Main Content -->
                <div class="col-md-10">
                    <!-- Top Bar -->
                    <div class="topbar">
                        <h1>Welcome to Your Dashboard</h1>
                    </div>

                    <!-- Content -->
                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card p-3 text-center">
                                    <h3>Total Users</h3>
                                    <p>1000</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card p-3 text-center">
                                    <h3>New Signups</h3>
                                    <p>50</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card p-3 text-center">
                                    <h3>Active Users</h3>
                                    <p>800</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS (Optional) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

