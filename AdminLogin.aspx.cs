
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

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void adminLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();
        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select AdminID from Admin where AdminID='" + username.Text.ToString() + "' and Password= '" + password.Text.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        

        if (reader.Read())
        {
            Session["AdmLogin"] = username.Text.ToString();
            //Session["Value"] = (string)(Session["Login"]);

            
            Response.Redirect("Admin.aspx");

        }

        else
        {
            //Response.Write("Username Or Password doesn't match!!");
            errMsg.Text = "*AdminID Or Password doesn't match!!";
        }

        reader.Close();
        con.Close();
    }
}