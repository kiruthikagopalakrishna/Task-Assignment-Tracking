<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="TaskManagement.aspx.cs"
    Inherits="HRTaskManagement.TaskManagement" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Task Management</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", sans-serif;
        }

        body {
            margin: 0;
            background: linear-gradient(135deg, #fceef5, #eee9ff, #e8f5f2);
        }

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 240px;
            height: 100vh;
            background: #f7ddea;
            padding: 30px 20px;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: #76556a;
            margin-bottom: 40px;
            text-align: center;
        }

        .menu {
            display: block;
            padding: 14px 18px;
            margin: 8px 0;
            text-decoration: none;
            color: #624f5d;
            border-radius: 15px;
        }

        .menu:hover {
            background: #ead0df;
        }

        .main {
            margin-left: 240px;
            padding: 40px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        h1 {
            color: #624f5d;
            margin: 0;
        }

        .add-btn {
            background: #c99ab4;
            color: white;
            border: none;
            padding: 13px 22px;
            border-radius: 14px;
            cursor: pointer;
            font-size: 15px;
        }

        .card {
            background: rgba(255, 250, 252, 0.95);
            padding: 25px;
            border-radius: 25px;
            box-shadow: 0 8px 25px rgba(120, 90, 110, 0.12);
        }

        .search {
            width: 280px;
            padding: 12px 15px;
            border: 1px solid #ead5df;
            border-radius: 12px;
            margin-bottom: 20px;
            outline: none;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th {
            background: #f7ddea;
            color: #624f5d;
            padding: 14px;
            text-align: left;
        }

        .table td {
            padding: 14px;
            border-bottom: 1px solid #f0e3e9;
            color: #665b63;
        }

        .status {
            padding: 6px 12px;
            border-radius: 12px;
            background: #e8f5f2;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <!-- Sidebar -->
    <div class="sidebar">

        <div class="logo">
            🌷 HR Management
        </div>

        <a href="HRDashboard.aspx" class="menu">🏠 Dashboard</a>

        <a href="EmployeeManagement.aspx" class="menu">
            👩‍💼 Employees
        </a>

        <a href="TaskManagement.aspx" class="menu">
            📋 Tasks
        </a>

        <a href="#" class="menu">📊 Task Tracking</a>

        <a href="#" class="menu">📈 Reports</a>

        <a href="#" class="menu">🔔 Notifications</a>

        <a href="Login.aspx" class="menu">🚪 Logout</a>

    </div>

    <!-- Main Content -->
    <div class="main">

        <div class="header">

            <div>
                <h1>Task Management 🌸</h1>
                <p>Manage and assign employee tasks</p>
            </div>

            <asp:Button
                ID="btnAddTask"
                runat="server"
                Text="+ Add Task"
                CssClass="add-btn"
                OnClick="btnAddTask_Click" />

        </div>

        <div class="card">

            <asp:TextBox
                ID="txtSearch"
                runat="server"
                CssClass="search"
                placeholder="🔍 Search tasks...">
            </asp:TextBox>

            <asp:GridView
                ID="gvTasks"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="table">

                <Columns>

                    <asp:BoundField
                        DataField="TaskID"
                        HeaderText="Task ID" />

                    <asp:BoundField
                        DataField="TaskTitle"
                        HeaderText="Task" />

                    <asp:BoundField
                        DataField="Description"
                        HeaderText="Description" />

                    <asp:BoundField
                        DataField="AssignedEmployee"
                        HeaderText="Assigned To" />

                    <asp:BoundField
                        DataField="Priority"
                        HeaderText="Priority" />

                    <asp:BoundField
                        DataField="Status"
                        HeaderText="Status" />

                    <asp:BoundField
                        DataField="DueDate"
                        HeaderText="Due Date" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</form>

</body>
</html>