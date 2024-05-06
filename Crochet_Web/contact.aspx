<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Crochet_Web.contact" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="icon" href="images/crochet_logo.png"/>
    <title>StitchCraft</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Sedan:ital@0;1&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

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
.navbar{
    display: flex;
}

.navbar a{
    color: white;
    font-size: 1.1rem;
    font-weight: 500;
    padding:5px 0;
    margin: 0px 30px;
    transition: all .50s ease;
}
.navbar a:hover {
    color: orange;   
}
.navbar a.active{
    color: orange;  
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

.container {
    background-color: orange;
    border-radius: 20px;
    box-shadow: 5px 5px 15px #000000, -5px -5px 15px #000000;
    display: flex;
    overflow: hidden;
    margin-top: 2in; /* Add margin-top to create space between header and contact container */
    position: relative; /* Ensure container stays on top of background */
    z-index: 1; /* Ensure container is behind header */
    width: 85%;
    margin-left:1in;
    
}

.contact-info {
    flex: 1;
    padding: 30px;
    padding-left: 230px;
}

.contact-form {
    flex: 1;
    padding: 30px;
}

.contact-info h2, .contact-form h2 {
    color: #333;
    margin-bottom: 20px;
}

.contact-info p {
    color: white;
    padding-bottom: 30px;
}

.input-fields {
    margin-bottom: 20px;
}

.input {
    width: 50%;
    padding: 10px;
    margin-bottom: 20px;
    border: none;
    background-color: #f0f0f0;
    border-radius: 5px;
    box-shadow: inset 5px 5px 10px #bcbcbc, inset -5px -5px 10px #ffffff;
    outline: none;
}

.textarea {
    width: 50%;
    padding: 10px;
    margin-bottom: 20px;
    border: none;
    background-color: #f0f0f0;
    border-radius: 5px;
    box-shadow: inset 5px 5px 10px #bcbcbc, inset -5px -5px 10px #ffffff;
    outline: none;
}

.btn {
    width: 50%;
    padding: 10px;
    border: none;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    outline: none;
}

.btn:hover {
    background-color: #2980b9;
}
</style>

</head>
<body>
    <form id="form1" runat="server">
      <header class="header">
        <a href="home.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span>
        </a>
           <ul class="navbar">
               <li><a href="home.aspx">Home</a></li>
               <li><a href="products.aspx">Products</a></li>
               <li><a href="about.aspx">About Us</a></li>
               <li><a href="contact.aspx" class="active">Contact</a></li>
           </ul>
       </header>
        <div class="container">
            <div class="contact-info">
                <h2>Contact Information</h2>
                <p><i class="fas fa-map-marker-alt"></i> #4 Amuslan St. Brgy. Masambong Quezon City 1105</p>
                <p><i class="fas fa-envelope"></i> francisco.ralffieheart.doctolero@gmail.com</p>
                <p><i class="fas fa-phone"></i> +639055298637 or 8-7000</p>
            </div>
            <div class="contact-form">
                <h2>Contact Us</h2>
                <div class="input-fields">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="input" placeholder="Full Name"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email"></asp:TextBox>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="textarea" placeholder="Your Message"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>

        
           
</body>
</html>
