using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FirForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void FirSubmit_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        //string insertSql = "INSERT INTO Fir (Name,FName,MName,NID,PAddress,HDistrict,HPoliceStation,Gender,Birth,Nationality,MarritalStatus,DateOfIncident,TimeOfIncidence,PlaceOfIncidence,DistrictOfIncidence,Localpolice,Details,Visited,VisitDetails,VisitDate,VisitTime) values(@Name,@FName,@MName,@NID,@PAddress,@HDistrict,@HPoliceStation,@Gender,@Birth,@Nationality,@MarritalStatus,@DateOfIncident,@TimeOfIncidence,@PlaceOfIncidence,@DistrictOfIncidence,@Localpolice,@Details,@Visited,@VisitDetails,@VisitDate,@VisitTime)";
        string insertSql = "INSERT INTO Fir_data (Name,FatherName,MotherName,NID,PresentAddress,HomeDistrict,HomePoliceStation,Gender,BirthDate,Nationality,MaritalStatus,DateOfIncident,TimeOfIncident,PlaceOfIncident,DistrictOfIncident,Localpolice,Details,Visited,VisitDetails,VisitDate,VisitTime) values(@Name,@FatherName,@MotherName,@NID,@PresentAddress,@HomeDistrict,@HomePoliceStation,@Gender,@Birth,@Nationality,@MaritalStatus,@DateOfIncident,@TimeOfIncidence,@PlaceOfIncidence,@DistrictOfIncidence,@Localpolice,@Details,@Visited,@VisitDetails,@VisitDate,@VisitTime)select scope_identity()";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter Name = new SqlParameter("@Name", SqlDbType.VarChar, 50);
        Name.Value = TextBoxName.Text.ToString();
        cmd.Parameters.Add(Name);

        SqlParameter FName = new SqlParameter("@FatherName", SqlDbType.VarChar, 50);
        FName.Value = TextBoxFatherName.Text.ToString();
        cmd.Parameters.Add(FName);

        SqlParameter MName = new SqlParameter("@MotherName", SqlDbType.VarChar, 50);
        MName.Value = TextBoxMothertName.Text.ToString();
        cmd.Parameters.Add(MName);

        SqlParameter NID = new SqlParameter("@NID", SqlDbType.VarChar, 50);
        NID.Value = TextBoxNID.Text.ToString();
        cmd.Parameters.Add(NID);

        SqlParameter PAddress = new SqlParameter("@PresentAddress", SqlDbType.VarChar, 50);
        PAddress.Value = TextBoxPresentADD.Text.ToString();
        cmd.Parameters.Add(PAddress);

        SqlParameter HDistrict = new SqlParameter("@HomeDistrict", SqlDbType.VarChar, 50);
        HDistrict.Value = DropDownHomeDistrict.SelectedItem.ToString();
        cmd.Parameters.Add(HDistrict);

        SqlParameter HPoliceStation = new SqlParameter("@HomePoliceStation", SqlDbType.VarChar, 50);
        HPoliceStation.Value = DropDownHomePoliceStation.SelectedItem.ToString();
        cmd.Parameters.Add(HPoliceStation);

        SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);
        Gender.Value = DropDownListGender.SelectedItem.ToString();
        cmd.Parameters.Add(Gender);

        SqlParameter Birth = new SqlParameter("@Birth", SqlDbType.VarChar, 20);
        Birth.Value = TextBoxBirthday.Text.ToString();
        cmd.Parameters.Add(Birth);

        SqlParameter Nationality = new SqlParameter("@Nationality", SqlDbType.VarChar, 50);
        Nationality.Value = TextBoxNationality.Text.ToString();
        cmd.Parameters.Add(Nationality);

        SqlParameter MarritalStatus = new SqlParameter("@MaritalStatus", SqlDbType.VarChar, 20);
        MarritalStatus.Value = DropDownListMarritualStatus.Text.ToString();
        cmd.Parameters.Add(MarritalStatus);

        SqlParameter DateOfIncident = new SqlParameter("@DateOfIncident", SqlDbType.VarChar, 20);
        DateOfIncident.Value = TextBoxDateOfINcident.Text.ToString();
        cmd.Parameters.Add(DateOfIncident);

        SqlParameter TimeOfIncidence = new SqlParameter("@TimeOfIncidence", SqlDbType.VarChar, 20);
        TimeOfIncidence.Value = TextBoxTimeofIncident.Text.ToString();
        cmd.Parameters.Add(TimeOfIncidence);

        SqlParameter PlaceOfIncidence = new SqlParameter("@PlaceOfIncidence", SqlDbType.VarChar, 20);
        PlaceOfIncidence.Value = TextBoxPlaceOfIncident.Text.ToString();
        cmd.Parameters.Add(PlaceOfIncidence);

        SqlParameter DistrictOfIncidence = new SqlParameter("@DistrictOfIncidence", SqlDbType.VarChar, 50);
        DistrictOfIncidence.Value = DropDistrictOfIncident.SelectedItem.ToString();
        cmd.Parameters.Add(DistrictOfIncidence);

        SqlParameter LocalPolice = new SqlParameter("@LocalPolice", SqlDbType.VarChar, 50);
        LocalPolice.Value = DropLocalPoliceStaion.SelectedItem.ToString();
        cmd.Parameters.Add(LocalPolice);

        SqlParameter Details = new SqlParameter("@Details", SqlDbType.VarChar, 5000);
        Details.Value = TextBoxDetailsOfIncident.Text.ToString();
        cmd.Parameters.Add(Details);

        SqlParameter Visited = new SqlParameter("@Visited", SqlDbType.VarChar, 10);
        Visited.Value = DropDownListYESNO.SelectedItem.ToString();
        cmd.Parameters.Add(Visited);

        SqlParameter VisitDetails = new SqlParameter("@VisitDetails", SqlDbType.VarChar, 1000);
        VisitDetails.Value = TextBoxVisitDetails.Text.ToString();
        cmd.Parameters.Add(VisitDetails);

        SqlParameter VisitDate = new SqlParameter("@VisitDate", SqlDbType.VarChar, 50);
        VisitDate.Value = TextBoxVisitDate.Text.ToString();
        cmd.Parameters.Add(VisitDate);

        SqlParameter VisitTime = new SqlParameter("@VisitTime", SqlDbType.VarChar, 50);
        VisitTime.Value = TextBoxVisitTime.Text.ToString();
        cmd.Parameters.Add(VisitTime);


        try
        {
            
            con.Open();
            int id = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.ExecuteNonQuery();
            //lblMsg.Text = "User Registration Successful!!!";
            Response.Write("FIR Submission Successful!!!Your ID is "+id);
            ClearControls(Page);
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in Submitting FIR!";
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
}