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
    public partial class Signup : System.Web.UI.Page
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

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Signupinfo (fname, lname, eml, pass, repass) VALUES (@fname, @lname, @eml, @pass, @repass)";
                cmd.Parameters.AddWithValue("@fname", fname.Text);
                cmd.Parameters.AddWithValue("@lname", lname.Text);
                cmd.Parameters.AddWithValue("@eml", eml.Text);
                cmd.Parameters.AddWithValue("@pass", pass.Text);
                cmd.Parameters.AddWithValue("@repass", repass.Text);
                cmd.ExecuteNonQuery();

            Response.Redirect("Login.aspx");
        }
      
    }

}