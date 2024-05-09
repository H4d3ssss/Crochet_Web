<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Crochet_Web.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="icon" href="images/crochet_logo.png"/>
    <title>StitchCraft</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Sedan:ital@0;1&display=swap" rel="stylesheet" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Sedan', sans-serif;
            text-decoration: none;
            list-style: none;
        }


        body{
            min-height: 100vh;
            background: url('images/crochet_bg2.jpg');
            background-size: cover;
            background-position: center;
     
        }

        .header{
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            padding: 28px 12%;
            background: transparent;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            transition: all .50s ease;
        }
        .logo{
            display: flex;
            align-items: center;
        }

        .logo span{
            color: white;
            font-size: 1.7rem;
            font-weight:600;
        }

        .main{
            display: flex;
            align-items:center;

        }
        .main a{
            margin-right: 25px;
            margin-left: 10px;
            color: white;
            font-size: 1.1rem;
            font-weight:500;
            transition: all .50s ease;
        }
        .main a:hover {
            color: orange;
        }
        .user{
    display:flex;
    align-items:center;
}

.user i{
    color: white;
    font-size: 28px;
    margin-right: 7px;
}
        .login-container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin-top: 2in;
            background-color: orange;
        }
        .brand-name h1{
            text-align:center;
        }
        .input-group {
            margin-bottom: 10px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: white;
        }

        .input-group input {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .button{
            text-align:center;
        }
        .btn {
            padding: 8px 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f0f0f0;
            color: #333;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    color: #fff;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
    color: #fff;
}

.btn:active,
.btn.active {
    background-color: #0056b3;
    border-color: #0056b3;
    color: #fff;
}

        .existing-account {
            margin-top:40px;
            text-align: center;
        }

        .existing-account a {
            color: #004efe;
            text-decoration: none;
            font-size:1.1rem;
        }
        .existing-account p {
            color: white;
            text-decoration: none;
            font-size:1.1rem;
        }

        .existing-account a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <a href="home.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span></a>
          <div class="main">
            <a href="Default.aspx" class="user"><i class="ri-arrow-left-line"></i>Go Back</a>
          </div>
        </header>
        <div class="login-container">
            <div class="login-logo">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="images/crochet_logo.png" alt="Logo" id="loginlogo" draggable="true" /></div>
            <div class="brand-name">
                <h1>Stitch Craft</h1>
            </div>
            <div class="input-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" placeHolder="Enter your Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." Text="Field cannot be blank" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeHolder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Text="Field cannot be blank" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="button">
                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="Login_Click" CssClass="btn btn-primary" ValidationGroup="LoginValidation" />
            </div>
            <div class="existing-account">
                <p>Don't have an account? <a href="Registration.aspx">Register here.</a></p>
            </div>
        </div>    
    </form>
</body>
</html>
