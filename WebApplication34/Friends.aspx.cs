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
    public partial class Friends : System.Web.UI.Page
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
                BindFriendData();
            }
        }

        protected void BindFriendData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM friendstable", con);
            SqlDataReader reader = cmd.ExecuteReader();

            rptFriends.DataSource = reader;
            rptFriends.DataBind();

            reader.Close();
            con.Close();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            string friendId = btnDelete.CommandArgument;
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM friendstable WHERE frndid = @friendId", con);
            cmd.Parameters.AddWithValue("@friendId", friendId);
            cmd.ExecuteNonQuery();
            con.Close();
            BindFriendData();
        }

    }
}