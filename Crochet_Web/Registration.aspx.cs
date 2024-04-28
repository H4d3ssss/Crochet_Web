using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crochet_Web
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Registration logic goes here
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;

                // Example: Save the user data to a database
                // You should replace this with your actual database logic

                // Redirect to a confirmation page after successful registration
                Response.Redirect("registration_confirmation.aspx");
            }
        }
    }
}