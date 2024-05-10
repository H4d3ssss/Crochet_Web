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
.container {
            margin-top: 1.5in;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 20px;
        }
        .products {
            width: 70%;
            border: 1px solid #ccc;
            padding: 10px;
            background-color: orange;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .products h2{
            text-align:center;
            padding-bottom: 15px;
        }
        .cart {
            width: 25%;
            border: 1px solid #ccc;
            padding: 10px;
            background-color:#bd4900;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .cart h2{
            text-align:center;
            padding-bottom: 10px;
        }
        .cart p{
            color: black;
        }
        #cartItems{
            color:white;
        }
.product-item {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}

.product-item img {
    margin-right: 10px;
    border-radius: 5px;
}

.product-item .product-details {
    flex-grow: 1;
}

.product-item h3 {
    margin-bottom: 5px;
    font-size: 18px;
}

.product-item p {
    margin-bottom: 5px;
    font-size: 16px;
}

.product-item .btn {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
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
            <div class="main">
                <a href="Default.aspx">Log out</a>
            </div>
        </header>
<div class="container">
    <div class="products">
        <h2>Products</h2>
        <div class="product-item">
            <img src="images/crochet_hook.png" alt="crochet hook" width="100" height="100" />
            <div class="product-details">
                <h3>Crochet Hook</h3>
                <p>₱10</p>
                <asp:Button ID="btnProduct1" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Crochet Hook, 10" />
            </div>
        </div>
        <div class="product-item">
            <img src="images/crochet_yarn.jpg" alt="Crochet yarn" width="100" height="100" />
            <div class="product-details">
                <h3>Crochet yarn</h3>
                <p>₱20</p>
                <asp:Button ID="btnProduct2" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Crochet Yarn, 20" />
            </div>
        </div>        
        <div class="product-item">
            <img src="images/Crochet_book.jpg" alt="Crochet Book" width="100" height="100" />
            <div class="product-details">
                <h3>Crochet Book</h3>
                <p>₱80</p>
                <asp:Button ID="btnProduct3" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Crochet Book, 80" />
            </div>
        </div>
        <div class="product-item">
            <img src="images/stitch_marker.jpeg" alt="Crochet Marker" width="100" height="100" />
            <div class="product-details">
                <h3>Crochet yarn</h3>
                <p>₱5</p>
                <asp:Button ID="btnProduct4" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument="Crochet Marker, 5" />
            </div>
        </div>
    </div>
    <div class="cart">
        <h2>Shopping Cart</h2>
        <asp:BulletedList ID="cartItems" runat="server"></asp:BulletedList>
        <p>Total Quantity: <span id="total-quantity"><asp:Label ID="lblTotalQuantity" runat="server" Text="0" /></span></p>
        <p>Total Price: ₱<span id="total-price"><asp:Label ID="lblTotalPrice" runat="server" Text="0" /></span></p>
        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="Checkout_Click" />
    </div>
</div>

    </form>
</body>
</html>
