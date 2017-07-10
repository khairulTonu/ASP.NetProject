using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;



public partial class _Default : System.Web.UI.Page
{
    public String Str;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if(userCookie!=null)
        {
            if(!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = Login1.UserName.ToString();
                
                Response.Redirect("Welcome.aspx");
                
            }
        }

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();
        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from login where username='" + Login1.UserName.ToString() + "' and password= '" + Login1.Password.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        if(reader.Read())
        {
            Session["Login"] = Login1.UserName.ToString();

            if(Login1.RememberMeSet==true)
            {
                HttpCookie usercookie;
                usercookie = Request.Cookies["Preferences"];
               
                
                if(usercookie==null)
                {
                    usercookie = new HttpCookie("Preferences");
                    usercookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(usercookie);
                }
            }
            Response.Redirect("Welcome.aspx");
            
        }
        reader.Close();
        con.Close();
    }
    protected void Registration_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}