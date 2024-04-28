<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Crochet_Web.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>StitchCraft</title>
    <link href="styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>
    <style type="text/css">
        .form-control {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <a href="home.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span></a>
        </header>
        <h1>Sign Up</h1>
        <div class="login-container">
            <div class="login-logo">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="images/crochet_logo.png" alt="Logo" id="loginlogo" draggable="true" /></div>
            <div class="brand-name">
                <h1>Stitch Craft</h1>
            </div>
            <div class="input-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" placeHolder="example@gmail.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." Text="Field cannot be blank" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeHolder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Text="Field cannot be blank" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="Login_Click" CssClass="btn btn-primary" ValidationGroup="LoginValidation" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="LoginValidation" DisplayMode="List" ShowMessageBox="True" ForeColor="White" HeaderText="Validation Summary:" Width="302px" />
            <div class="existing-account">
                <p>Don't have an account?<a href="existing_account_page.aspx">Register here.</a></p>
            </div>
        </div>
            
            
        
    </form>
</body>
</html>
