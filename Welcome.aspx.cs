using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["Login"]==null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                
                //this.Profile1.Text = Session["Login"].ToString();
               
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache,no-store,max-age=0,must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }

    }




    

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.google.com.bd/maps?source=tldsi&hl=en");
    }
    protected void LocalPolice_Click(object sender, EventArgs e)
    {
        Response.Redirect("LocalPoliceTeam.aspx");
    }
    


    protected void LogOutButton_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);
        Response.Redirect("LoginPage.aspx");
    }
    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}