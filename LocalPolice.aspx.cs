using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LocalPolice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        string com = "Select * from LocalPolice";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
    }


    protected void ButtonDMP_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from LocalPolice where PoliceStation = '" + DropDownDMP.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        GridViewDMP.DataSource = dt;
        GridViewDMP.DataBind();
    }
    protected void ButtonCMP_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from LocalPolice where PoliceStation = '" + DropDownCMP.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        GridViewCMP.DataSource = dt;
        GridViewCMP.DataBind();
    }
    protected void ButtonRMP_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from LocalPolice where PoliceStation = '" + DropDownRMP.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        GridViewRMP.DataSource = dt;
        GridViewRMP.DataBind();
    }
    protected void ButtonKMP_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from LocalPolice where PoliceStation = '" + DropDownKMP.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        GridViewKMP.DataSource = dt;
        GridViewKMP.DataBind();
    }
    protected void ButtonSMP_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select * from LocalPolice where PoliceStation = '" + DropDownSMP.SelectedValue + "'", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        GridViewSMP.DataSource = dt;
        GridViewSMP.DataBind();
    }
}