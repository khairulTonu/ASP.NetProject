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

public partial class Home : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRatingControl();

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

            if (Request.Cookies["Preferences"] == null && Session["Login"]==null)
            {
                Response.Redirect("LoginPage.aspx");
            }



            else if (Request.Cookies["Preferences"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from login where username  = '" + Request.Cookies["Preferences"]["username"].ToString() + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                Label3.Text = dt.Rows[0]["FirstName"].ToString();
                Label2.Text = dt.Rows[0]["FirstName"].ToString() + " " + dt.Rows[0]["LastName"].ToString();


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

            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("Select * from login where username  = '" + Session["Login"] + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                Label3.Text = dt.Rows[0]["FirstName"].ToString();
                Label2.Text = dt.Rows[0]["FirstName"].ToString() + " " + dt.Rows[0]["LastName"].ToString();

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


    protected void RatingControlChanged(object sender, AjaxControlToolkit.RatingEventArgs e)
    {

        int value = int.Parse(e.Value);

        string result = string.Empty;
        switch (value)
        {
            case 0:
                result = "Not yet rated";
                break;
            case 1:
                result = "Bad!";
                break;
            case 2:
                result = "Non-Professional!";
                break;
            case 3:
                result = "Not so good!";
                break;
            case 4:
                result = "Not very good";
                break;
            case 5:
                result = "Average";
                break;
            case 6:
                result = "Good";
                break;
            case 7:
                result = "Very good";
                break;
            case 8:
                result = "Professional";
                break;
            case 9:
                result = "Very much Professional";
                break;
            case 10:
                result = "Excellent!";
                break;

        }
        lblthanks.Text = "Thanks for your review!";
        lblresult.Text = result;


        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into UserRating(Rating)values(@Rating)", conn);
        cmd.Parameters.AddWithValue("@Rating", ratingControl.CurrentRating);
        cmd.ExecuteNonQuery();
        conn.Close();
        BindRatingControl();
    }
    protected void BindRatingControl()
    {
        int total = 0;

        DataTable dt = new DataTable();
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select Rating from UserRating", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                total += Convert.ToInt32(dt.Rows[i][0].ToString());
            }
            int average = total / (dt.Rows.Count);
            ratingControl.CurrentRating = average;
            lbltxt.Text = dt.Rows.Count + " People have rated Us!Average Rating " + average;
        }
    }



    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        HttpCookie myCookie = new HttpCookie("Preferences");
        myCookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(myCookie);
        Response.Redirect("LoginPage.aspx");
    }

    protected void ProfileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Test.aspx");
    }


    protected void SendmsgButton_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        string insertSql = "INSERT INTO Message (FirstName,LastName,Email,Subject,Details) values(@FirstName,@LastName,@Email,@Subject,@Details)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;


        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = TextBoxFN.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = TextBoxLN.Text.ToString();
        cmd.Parameters.Add(lastName);

        SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        Email.Value = TextBoxEMAIL.Text.ToString();
        cmd.Parameters.Add(Email);


        SqlParameter Subject = new SqlParameter("@Subject", SqlDbType.VarChar, 50);
        Subject.Value = TextBoxSUB.Text.ToString();
        cmd.Parameters.Add(Subject);

        SqlParameter Details = new SqlParameter("@Details", SqlDbType.VarChar, 500);
        Details.Value = TextBoxDETAILS.Text.ToString();
        cmd.Parameters.Add(Details);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            
            //Response.Write("Registration Successful!!!");
            ClearControls(Page);
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in sending user!";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);
        }
        finally
        {
            con.Close();

        }


    }

    public static void ClearControls(Control Parent)
    {
        foreach (Control c in Parent.Controls)
            ClearControls(c);
    }

    protected void Profile1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx");
    }
    




}