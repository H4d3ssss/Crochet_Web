<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Crochet_Web.Shop" %>

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
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}
.container h1{
    text-align:center;
    color:white;
    padding-bottom: 1in;
    padding-top: 1in;
}
/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: orange;
  border-radius: 10%
}

.card img{
    width: 100%;
    height:auto;
    border-radius: 10%;
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
                   <li><a href="products.aspx" class="active">Products</a></li>
                   <li><a href="about.aspx">About Us</a></li>
                   <li><a href="contact.aspx">Contact</a></li>
               </ul>
            <div class="shopping">
                <img src="images/shop_bag.png" />
                <span class="quantity">0</span>
            </div>
        </header>
        <div class="container">
        <h1>Crochet Equipment Shop</h1>
        </div>
    <div class="row">
  <div class="column">
    <div class="card">
      <img src="images/crochet_hook.png" alt="Crochet Hook" />
      <h3>Crochet Hook</h3>
      <p>$5.99</p>
        <button onclick="addToCart('Crochet Hook', 5.99)">Add to Cart</button>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/crochet_yarn.jpg" alt="Crochet Yarn" />
      <h3>Crochet Yarn</h3>
      <p>$6.99</p>
        <button onclick="addToCart('Crochet Hook', 5.99)">Add to Cart</button>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
    <img src="images/Crochet_book.jpg" alt="Crochet Book" />
      <h3>Crochet Book</h3>
      <p>$10.99</p>
        <button onclick="addToCart('Crochet Hook', 5.99)">Add to Cart</button>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
        <img src="images/stitch_marker.jpeg" alt="Stitch Marker" />
      <h3>Stitch Marker</h3>
      <p>$1.99</p>
        <button onclick="addToCart('Crochet Hook', 5.99)">Add to Cart</button>
    </div>
  </div>
</div>

      
    </form>
</body>
</html>
