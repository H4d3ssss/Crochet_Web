using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            string connectionString = "Data Source=ZEUS\\SQLEXPRESS;Initial Catalog=ProgrammingDB;User ID=admin;Password=admin123";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM customer_info WHERE username = @Username AND password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                con.Open();
                int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    
                    Session["username"] = txtUsername.Text;
                    string script = "alert('Login successful.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                    Response.Redirect("Home.aspx"); 
                }
                else
                {
                    string script = "alert('Invalid username or password.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
        }

    }

}