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
    public partial class Settings : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the username from the session
                string username = (string)Session["Username"];

                // Display the username in the desired place
                usernameLabel.Text = username;
            }

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE Settingsinfo SET username = @username WHERE email = 'johndoe@example.com'";
            cmd.Parameters.AddWithValue("@username", username.Text);

            cmd.ExecuteNonQuery();



        }
    }
}