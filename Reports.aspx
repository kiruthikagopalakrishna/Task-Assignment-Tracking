<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HR Reports</title>

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
            margin-bottom: 30px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(2, 270px);
            gap: 25px;
        }

        .card {
            background: #fdeaf2;
            padding: 30px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.06);
        }

        .card p {
            color: #70495c;
            font-size: 17px;
        }

        .number {
            color: #8b5d72;
            font-size: 36px;
            font-weight: bold;
            margin-top: 15px;
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

        <a href="#" class="menu">
            🔔 Notifications
        </a>

        <a href="Login.aspx" class="menu">
            🚪 Logout
        </a>

    </div>


    <div class="content">

        <h1>HR Reports 📈</h1>

        <div class="cards">

            <div class="card">
                <p>👩‍💼 Total Employees</p>
                <div class="number">5</div>
            </div>

            <div class="card">
                <p>📋 Total Tasks</p>
                <div class="number">1</div>
            </div>

            <div class="card">
                <p>⏳ Pending Tasks</p>
                <div class="number">1</div>
            </div>

            <div class="card">
                <p>🔄 In Progress</p>
                <div class="number">0</div>
            </div>

            <div class="card">
                <p>✅ Completed Tasks</p>
                <div class="number">0</div>
            </div>

        </div>

    </div>

</form>

</body>
</html>