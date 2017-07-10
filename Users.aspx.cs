using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdmLogin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
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
}