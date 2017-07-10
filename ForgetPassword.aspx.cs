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
using System.Net;  
using System.Net.Mail; 


public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";  
        string password = "";  
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select username, password from login where Email=@email", con);  
        cmd.Parameters.AddWithValue("email", TextBox1.Text);  
        con.Open();  
        using(SqlDataReader sdr = cmd.ExecuteReader()) {  
  
            if (sdr.Read()) {  
                username = sdr["username"].ToString();  
                password = sdr["password"].ToString();  
  
            }  
  
        }  
        con.Close();  
  
        if (!string.IsNullOrEmpty(password)) {  
            MailMessage msg = new MailMessage();  
            msg.From = new MailAddress("bdfir2017@gmail.com");  
            msg.To.Add(TextBox1.Text);  
            msg.Subject = " Recover your Password";  
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);  
            msg.IsBodyHtml = true;  
  
            SmtpClient smt = new SmtpClient();  
            smt.Host = "smtp.gmail.com";  
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "bdfir2017@gmail.com"; //Your Email ID  
            ntwd.Password = "1407027aspproject"; // Your Password  
            smt.UseDefaultCredentials = true;  
            smt.Credentials = ntwd;  
            smt.Port = 587;  
            smt.EnableSsl = true;  
            smt.Send(msg);  
            lbmsg.Text = "Username and Password Sent Successfully";  
            lbmsg.ForeColor = System.Drawing.Color.ForestGreen;  
        }  
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
}