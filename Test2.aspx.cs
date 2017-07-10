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



    public partial class Test2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            SqlDataAdapter sda=new SqlDataAdapter("select * from Test where User_Name='"+TextBox1.Text+"'and Password= '"+TextBox2.Text+"'",con);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count.ToString()=="1")
            {
                HttpCookie myCookie = new HttpCookie("Login");
                myCookie["User_Name"] = dt.Rows[0]["User_Name"].ToString();
                myCookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myCookie);
                Response.Redirect("Test.aspx");

            }
        }
}


   




    
