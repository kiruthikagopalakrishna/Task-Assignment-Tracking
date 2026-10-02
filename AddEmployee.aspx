<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddEmployee.aspx.cs"
    Inherits="HRTaskManagement.AddEmployee" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Employee</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #fceef5, #eee9ff, #e8f5f2);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #4f4350;
        }

        .card {
            width: 650px;
            background: #fffafc;
            padding: 35px;
            border-radius: 28px;
            box-shadow: 0 12px 35px rgba(120, 90, 110, 0.12);
        }

        h1 {
            text-align: center;
            color: #654d60;
            margin-top: 0;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #927b8d;
            margin-bottom: 28px;
        }

        .row {
            display: flex;
            gap: 18px;
        }

        .field {
            flex: 1;
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            color: #654d60;
            font-weight: 600;
        }

        .input {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #ead7e1;
            border-radius: 12px;
            outline: none;
            font-size: 14px;
            background: white;
        }

        .input:focus {
            border-color: #c99ab4;
        }

        .buttons {
            display: flex;
            gap: 12px;
            margin-top: 12px;
        }

        .save-btn,
        .back-btn {
            flex: 1;
            padding: 13px;
            border: none;
            border-radius: 13px;
            cursor: pointer;
            font-size: 15px;
        }

        .save-btn {
            background: #c99ab4;
            color: white;
        }

        .back-btn {
            background: #eadcf5;
            color: #654d60;
        }

        .message {
            display: block;
            text-align: center;
            margin-top: 18px;
            font-weight: 600;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="card">

        <h1>🌷 Add Employee</h1>

        <div class="subtitle">
            Add a new employee to the HR system
        </div>

        <div class="row">

            <div class="field">
                <label>Name</label>

                <asp:TextBox
                    ID="txtName"
                    runat="server"
                    CssClass="input"
                    placeholder="Enter employee name">
                </asp:TextBox>
            </div>

            <div class="field">
                <label>Email</label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="input"
                    placeholder="Enter email">
                </asp:TextBox>
            </div>

        </div>

        <div class="row">

            <div class="field">
                <label>Phone</label>

                <asp:TextBox
                    ID="txtPhone"
                    runat="server"
                    CssClass="input"
                    placeholder="Enter phone number">
                </asp:TextBox>
            </div>

            <div class="field">
                <label>Department</label>

                <asp:TextBox
                    ID="txtDepartment"
                    runat="server"
                    CssClass="input"
                    placeholder="Example: IT">
                </asp:TextBox>
            </div>

        </div>

        <div class="row">

            <div class="field">
                <label>Username</label>

                <asp:TextBox
                    ID="txtUsername"
                    runat="server"
                    CssClass="input"
                    placeholder="Enter username">
                </asp:TextBox>
            </div>

            <div class="field">
                <label>Password</label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    CssClass="input"
                    TextMode="Password"
                    placeholder="Enter password">
                </asp:TextBox>
            </div>

        </div>

        <div class="buttons">

            <asp:Button
                ID="btnSave"
                runat="server"
                Text="Save Employee 🌸"
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

</form>

</body>
</html>