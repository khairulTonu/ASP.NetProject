using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

public partial class Guest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void SendmsgButton_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        string insertSql = "INSERT INTO Message (FirstName,LastName,Email,Subject,Details) values(@FirstName,@LastName,@Email,@Subject,@Details)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;


        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = TextBoxFN.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = TextBoxLN.Text.ToString();
        cmd.Parameters.Add(lastName);

        SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        Email.Value = TextBoxEMAIL.Text.ToString();
        cmd.Parameters.Add(Email);


        SqlParameter Subject = new SqlParameter("@Subject", SqlDbType.VarChar, 50);
        Subject.Value = TextBoxSUB.Text.ToString();
        cmd.Parameters.Add(Subject);

        SqlParameter Details = new SqlParameter("@Details", SqlDbType.VarChar, 500);
        Details.Value = TextBoxDETAILS.Text.ToString();
        cmd.Parameters.Add(Details);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();

            //Response.Write("Registration Successful!!!");
            ClearControls(Page);
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in sending user!";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);
        }
        finally
        {
            con.Close();

        }
    }

    

    public static void ClearControls(Control Parent)
    {
        foreach (Control c in Parent.Controls)
            ClearControls(c);
    }

    
}