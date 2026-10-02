<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="HRTaskManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>HR Task Management</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;

            background: linear-gradient(
                135deg,
                #fceef5,
                #eee9ff,
                #e8f5f2
            );

            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;
        }


        /* MAIN CONTAINER */

        .login-container {

            width: 900px;
            min-height: 550px;

            display: flex;

            background: white;

            border-radius: 28px;

            overflow: hidden;

            box-shadow:
                0 15px 45px
                rgba(150, 120, 150, 0.18);
        }


        /* LEFT SECTION */

        .welcome-section {

            width: 50%;

            padding: 55px 45px;

            background: #f7ddea;

            display: flex;

            flex-direction: column;

            justify-content: center;

            text-align: center;
        }


        .flower {

            font-size: 55px;

            margin-bottom: 15px;
        }


        .welcome-section h1 {

            color: #71445f;

            font-size: 34px;

            margin: 5px 0;
        }


        .welcome-section h2 {

            color: #9b6685;

            font-size: 20px;

            font-weight: 500;
        }


        .welcome-section p {

            color: #765f6c;

            line-height: 1.7;

            font-size: 15px;
        }


        /* RIGHT LOGIN SECTION */

        .login-section {

            width: 50%;

            padding: 55px;

            background: #fffafc;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }


        .login-section h2 {

            color: #68485c;

            font-size: 28px;

            margin-bottom: 8px;
        }


        .subtitle {

            color: #9a8490;

            font-size: 14px;

            margin-bottom: 25px;
        }


        /* INPUT BOX */

        .input {

            width: 100%;

            padding: 14px 16px;

            margin: 9px 0;

            border:

                1px solid #ead6e1;

            border-radius: 12px;

            background: white;

            color: #624b58;

            font-size: 14px;

            outline: none;
        }


        .input:focus {

            border-color: #c99ab4;

            box-shadow:

                0 0 0 3px
                rgba(201, 154, 180, 0.12);
        }


        /* LOGIN BUTTON */

        .btn {

            width: 100%;

            padding: 14px;

            margin-top: 18px;

            border: none;

            border-radius: 12px;

            background: #c99ab4;

            color: white;

            font-size: 15px;

            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;
        }


        .btn:hover {

            background: #b783a0;

            transform: translateY(-2px);
        }


        /* ERROR MESSAGE */

        .message {

            display: block;

            margin-top: 15px;

            color: #c47791;

            text-align: center;

            font-size: 13px;
        }


        /* FOOTER */

        .footer-text {

            text-align: center;

            color: #aa929f;

            font-size: 12px;

            margin-top: 25px;
        }


        /* MOBILE */

        @media (max-width: 750px) {

            .login-container {

                width: 90%;

                flex-direction: column;
            }

            .welcome-section,
            .login-section {

                width: 100%;
            }

            .welcome-section {

                padding: 35px;
            }

            .login-section {

                padding: 35px;
            }
        }

    </style>

</head>


<body>

    <form id="form1" runat="server">

        <div class="login-container">


            <!-- LEFT SIDE -->

            <div class="welcome-section">

                <div class="flower">
                    🌷
                </div>

                <h1>
                    Welcome
                </h1>

                <h2>
                    HR Task Management
                </h2>

                <p>
                    Organize tasks, manage employees,
                    track progress and keep your workplace
                    running smoothly.
                </p>

            </div>


            <!-- RIGHT SIDE -->

            <div class="login-section">

                <h2>
                    Sign In
                </h2>

                <div class="subtitle">
                    Login to your HR workspace
                </div>


                <!-- USERNAME -->

                <asp:TextBox
                    ID="txtUsername"
                    runat="server"
                    CssClass="input"
                    placeholder="Username">
                </asp:TextBox>


                <!-- PASSWORD -->

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    CssClass="input"
                    TextMode="Password"
                    placeholder="Password">
                </asp:TextBox>


                <!-- LOGIN BUTTON -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Sign In"
                    CssClass="btn"
                    OnClick="btnLogin_Click" />


                <!-- MESSAGE -->

                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>


                <!-- FOOTER -->

                <div class="footer-text">
                    HR Task Management &amp; Tracking System
                </div>

            </div>

        </div>

    </form>

</body>

</html>