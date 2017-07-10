using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text.html;

public partial class IndividualFIR : System.Web.UI.Page
{
    string cons = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
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

    public DataSet Bind()
    {

        SqlConnection con = new SqlConnection(cons);
        SqlCommand cmd = new SqlCommand("select * from Fir_data where ID like'" + textinput.Text + "%'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }

        }


        return ds;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataSet ds = Bind();

        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.Visible = true;
                textinput.Text = " ";
                Label2.Text = " ";
            }


            else
            {
                GridView1.Visible = false;
                Label2.Visible = true;
                Label2.Text = "not available in the record";

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GetPdf();
    }
    public void GetPdf()
    {

        Response.ContentType = "application/DOC";
        Response.AddHeader("content-disposition", "attachment;filename=FIR.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter s_w = new StringWriter();
        HtmlTextWriter h_w = new HtmlTextWriter(s_w);

        GridView1.RenderControl(h_w);
        StringReader sr = new StringReader(s_w.ToString());
        Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        GridView1.AllowPaging = true;
        GridView1.DataBind();

        GridView1.HeaderRow.Style.Add("width", "15%");
        GridView1.HeaderRow.Style.Add("font-size", "10px");
        GridView1.Style.Add("text-decoration", "none");
        GridView1.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
        GridView1.Style.Add("font-size", "8px");


    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }   
}