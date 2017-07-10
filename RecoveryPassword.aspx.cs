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

public partial class RecoveryPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ButtonChangePass_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter("select username,password from login where username='" + TextBoxUsername.Text.ToString() + "' and password= '" + TextBoxPassword.Text.ToString() + "' ", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count.ToString()=="1")
        {
            if(TextBoxNP.Text==TextBoxCNP.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update login set password='" + TextBoxCNP.Text.ToString() + "' where password= '" + TextBoxPassword.Text.ToString() + "' ",con);

                cmd.ExecuteNonQuery();
                con.Close();
                Msg.Text = "Your Password Updated Successfully!";
                Msg.ForeColor=System.Drawing.Color.Green;
            }
            else
            {
                Msg.Text = "New Password and doesn't be confirmed!!";
                Msg.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            Msg.Text = "Username or Password doesn't match!!";
            Msg.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
}