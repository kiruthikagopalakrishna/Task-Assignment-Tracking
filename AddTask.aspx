<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddTask.aspx.cs"
    Inherits="HRTaskManagement.AddTask" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Task</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", sans-serif;
        }

        body {
            margin: 0;
            background: linear-gradient(135deg, #fceef5, #eee9ff, #e8f5f2);
            min-height: 100vh;
        }

        .container {
            width: 650px;
            margin: 50px auto;
        }

        .card {
            background: #fffafc;
            padding: 40px;
            border-radius: 28px;
            box-shadow: 0 10px 30px rgba(120, 90, 110, 0.15);
        }

        h1 {
            color: #624f5d;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #8b7883;
            margin-bottom: 30px;
        }

        .label {
            display: block;
            color: #624f5d;
            font-weight: 600;
            margin-top: 18px;
            margin-bottom: 7px;
        }

        .input {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #ead5df;
            border-radius: 12px;
            outline: none;
            background: white;
        }

        textarea.input {
            height: 100px;
            resize: vertical;
        }

        .buttons {
            margin-top: 30px;
            display: flex;
            gap: 12px;
        }

        .save-btn {
            background: #c99ab4;
            color: white;
            border: none;
            padding: 13px 24px;
            border-radius: 14px;
            cursor: pointer;
        }

        .back-btn {
            background: #eee9ff;
            color: #624f5d;
            border: none;
            padding: 13px 24px;
            border-radius: 14px;
            cursor: pointer;
        }

        .message {
            display: block;
            margin-top: 20px;
            color: #7a9b8e;
            font-weight: 600;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <div class="card">

            <h1>🌷 Add New Task</h1>

            <p class="subtitle">
                Create and assign a task to an employee
            </p>

            <asp:Label
                ID="lblTaskTitle"
                runat="server"
                Text="Task Title"
                CssClass="label">
            </asp:Label>

            <asp:TextBox
                ID="txtTaskTitle"
                runat="server"
                CssClass="input">
            </asp:TextBox>


            <asp:Label
                ID="lblDescription"
                runat="server"
                Text="Description"
                CssClass="label">
            </asp:Label>

            <asp:TextBox
                ID="txtDescription"
                runat="server"
                CssClass="input"
                TextMode="MultiLine">
            </asp:TextBox>


            <asp:Label
                ID="lblAssignedTo"
                runat="server"
                Text="Assign To"
                CssClass="label">
            </asp:Label>

            <asp:DropDownList
                ID="ddlAssignedTo"
                runat="server"
                CssClass="input">
            </asp:DropDownList>


            <asp:Label
                ID="lblPriority"
                runat="server"
                Text="Priority"
                CssClass="label">
            </asp:Label>

            <asp:DropDownList
                ID="ddlPriority"
                runat="server"
                CssClass="input">

                <asp:ListItem Text="Low" Value="Low"></asp:ListItem>
                <asp:ListItem Text="Medium" Value="Medium"></asp:ListItem>
                <asp:ListItem Text="High" Value="High"></asp:ListItem>

            </asp:DropDownList>


            <asp:Label
                ID="lblStatus"
                runat="server"
                Text="Status"
                CssClass="label">
            </asp:Label>

            <asp:DropDownList
                ID="ddlStatus"
                runat="server"
                CssClass="input">

                <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                <asp:ListItem Text="In Progress" Value="In Progress"></asp:ListItem>
                <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>

            </asp:DropDownList>


            <asp:Label
                ID="lblDueDate"
                runat="server"
                Text="Due Date"
                CssClass="label">
            </asp:Label>

            <asp:TextBox
                ID="txtDueDate"
                runat="server"
                CssClass="input"
                TextMode="Date">
            </asp:TextBox>


            <div class="buttons">

                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Task 🌸"
                    CssClass="save-btn"
                    OnClick="btnSave_Click" />

                <asp:Button
                    ID="btnBack"
                    runat="server"
                    Text="← Back"
                    CssClass="back-btn"
                    OnClick="btnBack_Click" />

            </div>

            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

        </div>

    </div>

</form>

</body>
</html>