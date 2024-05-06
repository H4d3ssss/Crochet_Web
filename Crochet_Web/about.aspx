<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Crochet_Web.about" %>

<html lang="en">
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
        .about-container{
            text-align:center;
            margin-top: 150px;
        }
        .about-container h1{
            font-size: 50px;
            color: white;
            font-weight:900;
            padding-bottom: 5rem;

                           
        }
        .about-container h2{
             font-size: 35px;
             padding-bottom: 1rem;
             color:orange;
        }
        .about-container p{
            font-size: 20px;
            padding: 0px 400px 2in 400px;
            color: white;
        }
        .maker img{
            border-radius:50%;
            box-shadow: 0 10px 40px 8px rgba(0, 0, 0, 0.1);
        }
        .maker h2{
            padding-bottom: 2rem;
        }
        .maker h3{
            padding-top:1rem;
            color:white;        
        }
        .maker p{
            color: orange;  
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
           <li><a href="about.aspx" class="active">About Us</a></li>
           <li><a href="contact.aspx">Contact</a></li>
       </ul>
</header>

        <div class="about-container">
           <h1>About Us</h1>

            <h2>Our Story</h2>
            <p>We are passionate about providing high-quality crochet equipments to all of the enthusiast around the world. Our journey began with a love for the craft and a desire to share that passion with others. 
                Through dedication and hard work, we've grown into a trusted source for all things crochet.</p>
            
            <h2>Our Mission</h2>
            <p>Our mission is simple: to inspire creativity and empower individuals through the art of crochet. 
                We strive to offer a diverse range of products, exceptional customer service, and educational resources to support our community of makers.</p>
            
            <div class="maker">
                <h2>Meet the Owner</h2>
                <img src="images/self.png" />
                <h3>Ralffie Heart D. Francisco</h3>
                <p>CEO of StitchCraft</p>
            </div>
        </div>
    </form>
</body>
</html>
