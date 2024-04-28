<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Crochet_Web.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>StitchCraft</title>
<link href="styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>  
</head>
<body>
    <form id="form1" runat="server">
            <header>
                <a href="home.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span></a>
            </header>
        <div class="registration-container">
            <h2>Registration Form</h2>
            <div class="input-group">
            <asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="txtUsername"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username can only contain letters and numbers." ValidationExpression="^[a-zA-Z0-9]+$" ForeColor="White"></asp:RegularExpressionValidator>
        </div>
            <div class="input-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="input-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address." ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ForeColor="White"></asp:RegularExpressionValidator>
            </div>
            <div class="input-group">
                <asp:Label ID="lblPhone" runat="server" Text="Phone:" AssociatedControlID="txtPhone"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid phone number." ValidationExpression="^\d{10}$" ForeColor="White"></asp:RegularExpressionValidator>
            </div>
            <div class="input-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" ValidationGroup="RegistrationValidation" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="RegistrationValidation" ForeColor="White" Width="304px" />
            </div>
        </div>
    </form>
</body>
</html>
