<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crochet_Web.Default" %>

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
.user{
    display:flex;
    align-items:center;
}

.user i{
    color: white;
    font-size: 28px;
    margin-right: 7px;
}

.main a:hover {
    color: orange;
}
.welcome{
    text-align:center;
}
.welcome h1 {
    
    color: white;
    font-size: 55px;
    font-family: 'Sedan', sans-serif;
    padding-top: 11rem;
    padding-left: 20rem;
    padding-right: 20rem;
}
.welcome p {
    text-align: center;
    color: white;
    font-family: 'Sedan';
    font-size: 20px;
    padding-left: 20rem;
    padding-right: 20rem;
    padding-top: 1rem;
    padding-bottom: 5rem;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <a href="Default.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span>
            </a>
            <div class="main">
                <a href="Login.aspx" class="user"><i class="ri-user-3-fill"></i>Log In</a>
                <a href="Registration.aspx">Register</a>
            </div>
        </header>
        <div class="welcome">
            <h1 id="welcome-h1">STITCH CRAFT</h1>
            <p id="home-wel-p">Discover a world of handcrafted coziness and endless creativity at Stitch Craft. 
                Explore our curated selection of patterns, yarns, and supplies to spark your next project.</p>            
        </div>
    </form>
</body>
</html>
