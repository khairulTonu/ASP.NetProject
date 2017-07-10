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

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from login where username  = '" + Session["Login"] + "' ", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);


        Label1.Text = dt.Rows[0]["username"].ToString();*/

        if (!IsPostBack)
        {

            /*if (Session["Login"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                //this.Profile1.Text = Session["Login"].ToString();
                //Response.Write("Hello" + Session["Login"]);
                //ProfileButton.Text = s;
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache,no-store,max-age=0,must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }*/

            if (Request.Cookies["Preferences"] == null && Session["Login"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }



            else if (Request.Cookies["Preferences"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from login where username  = '" + Request.Cookies["Preferences"]["username"].ToString() + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                Label1.Text = dt.Rows[0]["username"].ToString();
                


                if (dt.Rows[0]["User_Image"].ToString().Length > 1)
                {
                    Image1.ImageUrl = dt.Rows[0]["User_Image"].ToString();
                    
                }
                else
                {
                    Image1.ImageUrl = "Images/User.png";
                    
                }
            }

            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from login where username  = '" + Session["Login"] + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                Label1.Text = dt.Rows[0]["username"].ToString();
                

                if (dt.Rows[0]["User_Image"].ToString().Length > 1)
                {
                    Image1.ImageUrl = dt.Rows[0]["User_Image"].ToString();
                    
                }
                else
                {
                    Image1.ImageUrl = "Images/User.png";
                    
                }

            }
        }
    }

   
}