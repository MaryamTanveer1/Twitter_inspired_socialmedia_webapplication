using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication34
{
    public partial class DownloadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = Request.QueryString["fileName"];

            if (!string.IsNullOrEmpty(fileName))
            {
                // Establish a database connection
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Retrieve the file data from the database
                    string sql = "SELECT fileData, fileType FROM TableFile WHERE fileName = @fileName";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@fileName", fileName);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                byte[] fileData = (byte[])reader["fileData"];
                                string fileType = (string)reader["fileType"];

                                // Send the file to the browser for download
                                Response.Clear();
                                Response.ContentType = fileType;
                                Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);
                                Response.BinaryWrite(fileData);
                                Response.End();


                            }
                        }
                    }
                }
            }
        
    }
    }
}