using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace WebApplication34
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request.QueryString["username"] != null)
                {
                    string username = Server.UrlDecode(Request.QueryString["username"]);

                    usernameLabel.Text = username;
                    Session["Username"] = username;

                }
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
               
                HttpPostedFile uploadedFile = FileUpload1.PostedFile;

                
                byte[] imageData;
                using (Stream stream = uploadedFile.InputStream)
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        stream.CopyTo(ms);
                        imageData = ms.ToArray();
                    }
                }

               
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                   
                    string sql = "INSERT INTO Tableimage(imagedata) VALUES (@imagedata)";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@imagedata", imageData);
                        command.ExecuteNonQuery();
                    }
                }

             
                uploadimage.Src = "data:image/png;base64," + Convert.ToBase64String(imageData);

            }
        }
    }
}