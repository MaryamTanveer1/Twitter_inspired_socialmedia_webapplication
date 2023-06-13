using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication34
{
    public partial class Trends : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the username from the session
                string username = (string)Session["Username"];

                // Display the username in the desired place
                usernameLabel.Text = username;
            }
        }
    }
}