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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {



        string com = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(com);
        string path = Server.MapPath("Images/");
        if(FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if(ext==".jpg"||ext==".png")
            {
                FileUpload1.SaveAs(path+FileUpload1.FileName);
                string name="Images/"+FileUpload1.FileName;
                string ss = "INSERT INTO login (FirstName,LastName,username,password,Email,Gender,NID,Contact,User_Image) values ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtUserName.Text + "','" + txtPwd.Text + "','" + txtEmailID.Text + "','" + DropDownListGender.SelectedItem.Text + "','" + txtNID.Text + "','" + txtContact.Text + "','" + name + "')";
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMsg.Text = "Registration Successful!!";
            }
        }


        /*string insertSql = "INSERT INTO login (FirstName,LastName,username,password,Email,Gender,NID,Contact) values(@FirstName,@LastName,@userName,@password,@Email,@Gender,@NID,@Contact)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);

        SqlParameter userName = new SqlParameter("@userName", SqlDbType.VarChar, 50);
        userName.Value = txtUserName.Text.ToString();
        cmd.Parameters.Add(userName);

        SqlParameter password = new SqlParameter("@password", SqlDbType.VarChar, 50);
        password.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(password);

        SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        Email.Value = txtEmailID.Text.ToString();
        cmd.Parameters.Add(Email);

        SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
        Gender.Value = DropDownListGender.SelectedItem.ToString();
        cmd.Parameters.Add(Gender);

        SqlParameter NID = new SqlParameter("@NID", SqlDbType.VarChar, 50);
        NID.Value = txtNID.Text.ToString();
        cmd.Parameters.Add(NID);

        SqlParameter Contact = new SqlParameter("@Contact", SqlDbType.VarChar, 50);
        Contact.Value = txtContact.Text.ToString();
        cmd.Parameters.Add(Contact);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "User Registration Successful!!!";
            //Response.Write("Registration Successful!!!");
            ClearControls(Page);
        }
        catch(SqlException ex)
        {
            string errorMessage = "Error in registering user!";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);
        }
        finally
        {
            con.Close();

        }*/


    }
    /*public static void ClearControls(Control Parent)
    {
        foreach (Control c in Parent.Controls)
            ClearControls(c);
    }*/
}