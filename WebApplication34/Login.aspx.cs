using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication34
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = u_name.Text;
            string password = pass.Text;

            // Check if the username exists in the table
            SqlCommand checkUserCmd = new SqlCommand("SELECT COUNT(*) FROM Signupinfo WHERE fname = @username AND pass = @password", con);
            checkUserCmd.Parameters.AddWithValue("@username", username);
            checkUserCmd.Parameters.AddWithValue("@password", password);
            int userCount = (int)checkUserCmd.ExecuteScalar();
            
            if (userCount > 0)
            {
                Response.Redirect("Home.aspx?username=" + Server.UrlEncode(username));
                string usernamee = Server.UrlDecode(Request.QueryString["username"]);
                Session["Username"] = usernamee;
            }
            
        }
        
    }
}