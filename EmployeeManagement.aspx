<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="EmployeeManagement.aspx.cs"
    Inherits="HRTaskManagement.EmployeeManagement" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Employee Management</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #fceef5, #eee9ff, #e8f5f2);
            color: #4f4350;
        }

        .sidebar {
            width: 240px;
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            background: #f7ddea;
            padding: 30px 20px;
        }

        .logo {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: #76566b;
            margin-bottom: 40px;
        }

        .menu a {
            display: block;
            text-decoration: none;
            color: #76566b;
            padding: 13px 15px;
            margin: 8px 0;
            border-radius: 14px;
            font-size: 15px;
        }

        .menu a:hover {
            background: #efd0e1;
        }

        .main {
            margin-left: 240px;
            padding: 35px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .header h1 {
            margin: 0;
            color: #654d60;
            font-size: 30px;
        }

        .add-btn {
            background: #c99ab4;
            color: white;
            border: none;
            padding: 12px 22px;
            border-radius: 14px;
            cursor: pointer;
            font-size: 14px;
        }

        .card {
            background: rgba(255,255,255,0.85);
            border-radius: 22px;
            padding: 25px;
            box-shadow: 0 8px 25px rgba(120,90,110,0.08);
        }

        .search-box {
            width: 100%;
            padding: 13px 16px;
            border: 1px solid #ead7e1;
            border-radius: 12px;
            margin-bottom: 20px;
            outline: none;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background: #f7ddea;
            color: #654d60;
            padding: 14px;
            text-align: left;
        }

        td {
            padding: 14px;
            border-bottom: 1px solid #f0e4eb;
        }

        tr:hover {
            background: #fff7fb;
        }

        .action-btn {
            background: #eadcf5;
            color: #654d60;
            border: none;
            padding: 7px 12px;
            border-radius: 9px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="sidebar">

        <div class="logo">
            🌷 HR Manager
        </div>

        <div class="menu">
            <a href="HRDashboard.aspx">🏠 Dashboard</a>
            <a href="EmployeeManagement.aspx">👩‍💼 Employees</a>
            <a href="#">📋 Tasks</a>
            <a href="#">📊 Task Tracking</a>
            <a href="#">📈 Reports</a>
            <a href="#">🔔 Notifications</a>
            <a href="Login.aspx">🚪 Logout</a>
        </div>

    </div>

    <div class="main">

        <div class="header">
            <h1>Employee Management 🌸</h1>

            <asp:Button
                ID="btnAddEmployee"
                runat="server"
                Text="+ Add Employee"
                CssClass="add-btn"
                OnClick="btnAddEmployee_Click" />
        </div>

        <div class="card">

            <asp:TextBox
                ID="txtSearch"
                runat="server"
                CssClass="search-box"
                placeholder="🔍 Search employee...">
            </asp:TextBox>

            <asp:GridView
                ID="gvEmployees"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="employee-table"
                GridLines="None">

                <Columns>

                    <asp:BoundField
                        DataField="EmployeeID"
                        HeaderText="ID" />

                    <asp:BoundField
                        DataField="Name"
                        HeaderText="Name" />

                    <asp:BoundField
                        DataField="Email"
                        HeaderText="Email" />

                    <asp:BoundField
                        DataField="Phone"
                        HeaderText="Phone" />

                    <asp:BoundField
                        DataField="Department"
                        HeaderText="Department" />

                    <asp:BoundField
                        DataField="Username"
                        HeaderText="Username" />

                </Columns>

            </asp:GridView>

        </div>

    </div>

</form>

</body>
</html>