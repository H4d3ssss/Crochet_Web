    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Crochet_Web.home" %>

    <!DOCTYPE html>
    <html lang="en">
    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="icon" href="images/crochet_logo.png"/>
        <title>StitchCraft</title>
        <link href="styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"/>

    </head>
    
    <body>  
        <form id="form1" runat="server">
           <header class="header">
               <a href="home.aspx" class="logo"><img src="images/crochet_logo.png" alt="Logo" style="height: 28px; width: auto; margin-right:3px;"/><span>Stitch Craft</span>
               </a>
               <ul class="navbar">
                   <li><a href="home.aspx" class="active">Home</a></li>
                   <li><a href="products.aspx">Products</a></li>
                   <li><a href="about.aspx">About Us</a></li>
                   <li><a href="contact.aspx">Contact</a></li>
               </ul>
    
           </header>
            
            <div class="welcome">
                <h1 id="welcome-h1">WELCOME TO STITCH CRAFT</h1>
                <p id="home-wel-p">Discover a world of handcrafted coziness and endless creativity at Stitch Craft. 
                    Explore our curated selection of patterns, yarns, and supplies to spark your next project.</p>
                <a class="my-button" href="products.aspx" role="button">Shop Now</a>
                <a class="my-button" href="about.aspx" role="button">Learn More</a>            

            </div>
        </form>
    </body>
    </html>
