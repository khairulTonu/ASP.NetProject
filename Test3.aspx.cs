using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class Test3 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void Imageupload()
    {
        if(FileUpload1.HasFile)
        {
            int imagefilelength = FileUpload1.PostedFile.ContentLength;
            byte[] imgarray = new byte[imagefilelength];
            HttpPostedFile image = FileUpload1.PostedFile;
            image.InputStream.Read(imgarray, 0, imagefilelength);
            string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            string insertSql = "INSERT INTO ImageToDB (ImageName,Image) values(@ImageName,@Image)";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = insertSql;

            cmd.Parameters.AddWithValue("@ImageName", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Label2.Text = "Image uploaded successfully";
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in registering user!";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);
            }
            finally
            {
                con.Close();

            }
            



        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Imageupload();
    }
}