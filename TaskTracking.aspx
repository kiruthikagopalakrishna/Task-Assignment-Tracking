<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="TaskTracking.aspx.cs"
    Inherits="HRTaskManagement.TaskTracking" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>Task Tracking</title>

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
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 18px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            margin-top: 25px;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
        }

        .grid th {
            background: #eec6d8;
            color: #70495c;
            padding: 12px;
        }

        .grid td {
            padding: 12px;
            border-bottom: 1px solid #f0dce5;
            text-align: center;
        }

        .status {
            padding: 7px;
            border-radius: 8px;
            border: 1px solid #d9b6c7;
        }

        .update-btn {
            background: #d99ab7;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 8px;
            cursor: pointer;
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

        <a href="#" class="menu">
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

        <h1>Task Tracking 📊</h1>

        <div class="card">

            <asp:GridView
                ID="gvTracking"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="grid"
                OnRowCommand="gvTracking_RowCommand"
                OnRowDataBound="gvTracking_RowDataBound">

                <Columns>

                    <asp:BoundField
                        DataField="TaskID"
                        HeaderText="Task ID" />

                    <asp:BoundField
                        DataField="TaskTitle"
                        HeaderText="Task Title" />

                    <asp:BoundField
                        DataField="AssignedEmployee"
                        HeaderText="Assigned To" />

                    <asp:BoundField
                        DataField="Priority"
                        HeaderText="Priority" />

                    <asp:TemplateField HeaderText="Status">

                        <ItemTemplate>

                            <asp:DropDownList
                                ID="ddlStatus"
                                runat="server"
                                CssClass="status">

                                <asp:ListItem Text="Pending" Value="Pending" />
                                <asp:ListItem Text="In Progress" Value="In Progress" />
                                <asp:ListItem Text="Completed" Value="Completed" />

                            </asp:DropDownList>

                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:BoundField
                        DataField="DueDate"
                        HeaderText="Due Date"
                        DataFormatString="{0:dd-MM-yyyy}" />

                    <asp:TemplateField HeaderText="Action">

                        <ItemTemplate>

                            <asp:Button
                                ID="btnUpdate"
                                runat="server"
                                Text="Update"
                                CssClass="update-btn"
                                CommandName="UpdateStatus"
                                CommandArgument='<%# Eval("TaskID") %>' />

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</form>

</body>
</html>