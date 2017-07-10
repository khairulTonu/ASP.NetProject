using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = TextBoxUsername.Text.ToString();

                Response.Redirect("Home.aspx");

            }
        }

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();
        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from login where username='" + TextBoxUsername.Text.ToString() + "' and password= '" + TextBoxPassword.Text.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter("select * from login where username='" + TextBoxUsername.Text + "'and password= '" + TextBoxPassword.Text + "'", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
       
        if (reader.Read())
        {
            Session["Login"] = TextBoxUsername.Text.ToString();
            Session["Value"] = (string)(Session["Login"]);

            if (CheckBoxRememberMe.Checked == true)
            {
                
                HttpCookie usercookie;
                usercookie = Request.Cookies["Preferences"];


                if (usercookie == null)
                {

                    usercookie = new HttpCookie("Preferences");
                    usercookie["username"] = dt.Rows[0]["username"].ToString();
                    usercookie.Expires = DateTime.Now.AddMinutes(3);
                    Response.Cookies.Add(usercookie);
                    
                }
            }
            Response.Redirect("Home.aspx");

        }

        else
        {
            //Response.Write("Username Or Password doesn't match!!");
            ErrorMsg.Text = "*Username Or Password doesn't match!!";
        }

        reader.Close();
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void LinkButtonGuest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Guest.aspx");
    }
    protected void LinkButtonAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void LinkButtonForgotPass_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgetPassword.aspx");
    }
    protected void LinkButtonRecover_Click(object sender, EventArgs e)
    {
        Response.Redirect("RecoveryPassword.aspx");
    }
}