<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Crochet_Web.Registration" %>

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
    top: 11px;
    right: -6px;
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
    font-family: 'sedan', sans-serif;
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
.form-container {
    width: 300px;
    margin: 50px auto;
}
        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border-radius: 5px; 
        }
        
        .registration-container {
            width: 300px;
            margin-top: 2in;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: orange;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }    
        .registration-container h2{
            color: black;
            font-family:'Sedan', sans-serif;
            text-align:center;
            margin-bottom: 20px;
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
    <div class="form-container">
        <header class="header">
            <a href="Default.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span></a>
            <div class="main">
               <a href="Default.aspx" class="user"><i class="ri-arrow-left-line"></i>Go Back</a>
            </div>
        </header>
       
        <form id="registrationForm" runat="server" onsubmit="return validateForm()">
            <div class="registration-container">
            <h2>Registration Form</h2>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." CssClass="error-message"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="error-message"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error-message"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error-message"></asp:RegularExpressionValidator>

            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required." CssClass="error-message"></asp:RequiredFieldValidator>
            <div class="button">
                <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="RegisterUser" CssClass="btn btn-primary" />
            </div>
                <div class="existing-account">
                    <p>Already have an account? <a href="Login.aspx">Log-in here.</a></p>
                </div>
            </div>
        </form>
    </div>

</body>
</html>
