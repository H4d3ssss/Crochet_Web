using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crochet_Web
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Perform any initialization if needed
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Here you can add your login authentication logic
                string username = txtUsername.Text;
                string password = txtPassword.Text;

                // Example: Check if the username and password match a database record
                if (username == "admin" && password == "12345")
                {
                    // Successful login
                    Response.Redirect("welcome.aspx"); // Redirect to the welcome page
                }
                else
                {
                    // Failed login
                    // You can display an error message or perform any other action here

                }
            }

        }
    }

}