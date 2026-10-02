<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="HRDashboard.aspx.cs"
    Inherits="HRTaskManagement.HRDashboard" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HR Dashboard</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #fff7fb;
        }

        .sidebar {
            width: 230px;
            height: 100vh;
            background: #f8dce8;
            position: fixed;
            left: 0;
            top: 0;
            padding-top: 25px;
        }

        .sidebar h2 {
            text-align: center;
            color: #8b5d72;
            margin-bottom: 30px;
        }

        .menu {
            display: block;
            padding: 15px 25px;
            text-decoration: none;
            color: #70495c;
            font-size: 16px;
        }

        .menu:hover {
            background: #f2c6d9;
        }

        .content {
            margin-left: 230px;
            padding: 40px;
        }

        h1 {
            color: #8b5d72;
            margin-bottom: 10px;
        }

        .welcome {
            color: #a98a98;
            margin-bottom: 30px;
        }

        .cards {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            width: 220px;
            padding: 25px;
            border-radius: 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.07);
        }

        .card h3 {
            color: #8b5d72;
            margin-top: 0;
        }

        .card p {
            color: #8b5d72;
            font-size: 32px;
            font-weight: bold;
            margin: 15px 0;
        }

        .card span {
            color: #70495c;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="sidebar">

        <h2>HR Management 🌸</h2>

        <a href="HRDashboard.aspx" class="menu">
            🏠 Dashboard
        </a>

        <a href="EmployeeManagement.aspx" class="menu">
            👩‍💼 Employees
        </a>

        <a href="TaskManagement.aspx" class="menu">
            📋 Tasks
        </a>

        <a href="TaskTracking.aspx" class="menu">
            📊 Task Tracking
        </a>

        <a href="Reports.aspx" class="menu">
            📈 Reports
        </a>

        <a href="Notifications.aspx" class="menu">
            🔔 Notifications
        </a>

        <a href="Logout.aspx" class="menu">
            🚪 Logout
        </a>

    </div>


    <div class="content">

        <h1>Welcome to HR Dashboard 🌷</h1>

        <div class="welcome">
            Manage employees, tasks and tracking from here.
        </div>


        <div class="cards">

            <div class="card">

                <h3>👩‍💼 Employees</h3>

                <p>
                    <asp:Label ID="lblEmployees" runat="server"></asp:Label>
                </p>

                <span>Total Employees</span>

            </div>


            <div class="card">

                <h3>📋 Tasks</h3>

                <p>
                    <asp:Label ID="lblTasks" runat="server"></asp:Label>
                </p>

                <span>Total Tasks</span>

            </div>


            <div class="card">

                <h3>⏳ Pending</h3>

                <p>
                    <asp:Label ID="lblPending" runat="server"></asp:Label>
                </p>

                <span>Pending Tasks</span>

            </div>


            <div class="card">

                <h3>🔄 In Progress</h3>

                <p>
                    <asp:Label ID="lblInProgress" runat="server"></asp:Label>
                </p>

                <span>Tasks In Progress</span>

            </div>


            <div class="card">

                <h3>✅ Completed</h3>

                <p>
                    <asp:Label ID="lblCompleted" runat="server"></asp:Label>
                </p>

                <span>Completed Tasks</span>

            </div>

        </div>

    </div>

</form>

</body>
</html>