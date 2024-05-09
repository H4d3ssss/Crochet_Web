using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        protected void RegisterUser(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=ZEUS\\SQLEXPRESS;Initial Catalog=ProgrammingDB;User ID=admin;Password=admin123");
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into customer_info values " + "('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "')", con);
        
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        
        
        
        }
    }
}