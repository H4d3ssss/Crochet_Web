using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crochet_Web
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize cart items and display totals
                UpdateCart();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            // Extract product details from command argument
            string[] args = ((Button)sender).CommandArgument.ToString().Split(',');
            string productName = args[0];
            int price = Convert.ToInt32(args[1]);

            // Add product to cart
            Cart.Add(productName, price);

            // Update cart UI
            UpdateCart();
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            // Perform checkout action, e.g., redirect to checkout page

            // Clear the cart
            Cart.Clear();
            // Show alert message
            string script = "alert('Purchase successful!');";
            ScriptManager.RegisterStartupScript(this, GetType(), "PurchaseAlert", script, true);

            // Redirect to the products page
            Response.Redirect("Products.aspx");
        }

        private void UpdateCart()
        {
            // Update cart UI with current items and totals
            cartItems.DataSource = Cart.GetItems();
            cartItems.DataBind();
            lblTotalQuantity.Text = Cart.GetTotalQuantity().ToString();
            lblTotalPrice.Text = Cart.GetTotalPrice().ToString();
        }
    }

    public static class Cart
    {
        private static readonly List<(string, int)> items = new List<(string, int)>();

        public static void Add(string productName, int price)
        {
            items.Add((productName, price));
        }

        public static List<string> GetItems()
        {
            return items.Select(item => $"{item.Item1} - ₱{item.Item2}").ToList();
        }

        public static int GetTotalQuantity()
        {
            return items.Count;
        }

        public static int GetTotalPrice()
        {
            return items.Sum(item => item.Item2);
        }
        public static void Clear()
        {
            items.Clear();
        }
    }
}