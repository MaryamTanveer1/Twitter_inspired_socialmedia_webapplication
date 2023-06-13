using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace WebApplication34
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Retrieve the uploaded file data
                HttpPostedFile uploadedFile = FileUpload1.PostedFile;

                // Convert the file data to bytes
                byte[] fileData;
                using (Stream stream = uploadedFile.InputStream)
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        stream.CopyTo(ms);
                        fileData = ms.ToArray();
                    }
                }

                // Establish a database connection
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Prepare and execute the SQL command
                    string sql = "INSERT INTO TableFile(fileData, fileName, fileType) VALUES (@fileData, @fileName, @fileType)";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@fileData", fileData);
                        command.Parameters.AddWithValue("@fileName", FileUpload1.FileName);
                        command.Parameters.AddWithValue("@fileType", uploadedFile.ContentType);
                        command.ExecuteNonQuery();
                    }
                }

                // Provide an option to download the file
                string fileUrl = ResolveUrl("~/DownloadFile.aspx?fileName=" + HttpUtility.UrlEncode(FileUpload1.FileName));
                Response.Write("<a href='" + fileUrl + "'>Download File</a>");


            }
        }

    }
}