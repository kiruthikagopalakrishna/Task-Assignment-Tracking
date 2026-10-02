<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>Notifications</title>

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

        .notification {
            background: white;
            padding: 20px;
            margin-bottom: 18px;
            border-radius: 18px;
            max-width: 850px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.07);
        }

        .notification h3 {
            margin: 0 0 8px 0;
            color: #8b5d72;
        }

        .notification p {
            margin: 5px 0;
            color: #70495c;
        }

        .time {
            font-size: 13px;
            color: #a98a98;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="sidebar">

        <h2>HR Management 🌸</h2>

        <a href="HRDashboard.aspx" class="menu">🏠 Dashboard</a>

        <a href="EmployeeManagement.aspx" class="menu">👩‍💼 Employees</a>

        <a href="TaskManagement.aspx" class="menu">📋 Tasks</a>

        <a href="TaskTracking.aspx" class="menu">📊 Task Tracking</a>

        <a href="Reports.aspx" class="menu">📈 Reports</a>

        <a href="Notifications.aspx" class="menu">🔔 Notifications</a>

        <a href="Login.aspx" class="menu">🚪 Logout</a>

    </div>

    <div class="content">

        <h1>Notifications 🔔</h1>

        <div class="notification">
            <h3>📋 New Task Assigned</h3>
            <p>A new task has been assigned to an employee.</p>
            <div class="time">Today</div>
        </div>

        <div class="notification">
            <h3>⏰ Task Due Soon</h3>
            <p>Please check tasks that are approaching their due date.</p>
            <div class="time">Today</div>
        </div>

        <div class="notification">
            <h3>✅ Task Completed</h3>
            <p>A task has been marked as completed.</p>
            <div class="time">Today</div>
        </div>

        <div class="notification">
            <h3>👩‍💼 Employee Added</h3>
            <p>A new employee has been added to the system.</p>
            <div class="time">Today</div>
        </div>

    </div>

</form>

</body>
</html>