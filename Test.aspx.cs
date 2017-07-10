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

public partial class Test : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Cookies["Login"]==null)
        {
            Response.Redirect("Test2.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Test where User_Name  = '" + Request.Cookies["Login"]["User_Name"].ToString() + "' " ,con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Label1.Text = dt.Rows[0]["First_Name"].ToString();
            Label2.Text = dt.Rows[0]["First_Name"].ToString() + " " + dt.Rows[0]["Last_Name"].ToString();
            

            if (dt.Rows[0]["User_Image"].ToString().Length > 1)
            {
                Image1.ImageUrl = dt.Rows[0]["User_Image"].ToString();
                Image2.ImageUrl = dt.Rows[0]["User_Image"].ToString();
            }
            else
            {
                Image1.ImageUrl = "Images/User.png";
                Image2.ImageUrl = "Images/User.png";
            }
        }
        
    }


   




}