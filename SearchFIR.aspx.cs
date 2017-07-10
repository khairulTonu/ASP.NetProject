using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
using System.Data;

using System.Text.RegularExpressions;


public partial class SearchFIR : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataAdapter dad = new SqlDataAdapter("select * from Fir_data where LocalPolice='" + txtFilter.Text + "'", c);
        DataSet ds = new DataSet();
        dad.Fill(ds);
        GridFilter.DataSource = ds;
        GridFilter.DataBind();
        txtFilter.Text = string.Empty;
    }
}