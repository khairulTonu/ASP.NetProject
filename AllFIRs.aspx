<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllFIRs.aspx.cs" Inherits="AllFIRs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All FIRs</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <style>

.mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 80%;
}
.header
{
	background-color: #179f07;
	font-family: Arial;
	color: White;
	height: 25px;
	text-align: center;
	font-size: 16px;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: left;
}
.rows:hover
{
	background-color: #218fed;
}

.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #000;
	text-decoration: none;
	font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
{
	background-color: #fff;
	color: #000;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	
	padding: 5px 5px 5px 5px;
	background-color: #000;
	color: #fff;
}
.pager
{
		background-color: #22c81a;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: left;
}

.mydatagrid td
{
	padding: 5px;
}
.mydatagrid th
{
	padding: 5px;
}

    </style>
    </head>
    
<body style="background-color:lightgray;">
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Admin.aspx">
                    
					<h2 style="color:white;">FIR System</h2>
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                

                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        
                    </a>
                    <!-- dropdown alerts-->
                    
                    <!-- end dropdown-alerts -->
                </li>

                
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            
                            
                        </div>
                        <!--end user image section-->
                    </li>
                    <li class="sidebar-search">
                        <!-- search section-->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!--end search section-->
                    </li>
                    <li class="selected">
                        <a href="Admin.aspx"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                    </li>

                    <li>
                        <a href="AdminPanel.aspx"><i class="fa fa-bar-chart-o fa-fw"></i> Admin Panel<span class="fa arrow"></span></a>
                        
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="Users.aspx"><i class="fa fa-bar-chart-o fa-fw"></i> Users<span class="fa arrow"></span></a>
                        
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="PoliceStations.aspx"><i class="fa fa-table fa-fw"></i>Police Stations</a>
                    </li>

                     <li>
                        <a href="AllFIRs.aspx"><i class="fa fa-flask fa-fw"></i>All FIRs</a>
                    </li>
                    
                    <li>
                        <a href="IndividualFIR.aspx"><i class="fa fa-table fa-fw"></i>FIR Details</a>
                    </li>

                     <li>
                        <a href="Messages.aspx"><i class="fa fa-table fa-fw"></i>Messages</a>
                    </li>

                        
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    
                </div>
                <!--end  Welcome -->
            </div>


            <div class="row">
                <!--quick info section -->
                <div class="col-lg-3">
                    <div class="alert alert-danger text-center">
                        <i class="fa fa-calendar fa-3x"></i>&nbsp;<b>5,000 </b>FIRs Submitted This Month

                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="alert alert-success text-center">
                        <i class="fa  fa-beer fa-3x"></i>&nbsp;<b>80% </b> Cases has been solved  
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="alert alert-info text-center">
                        <i class="fa fa-rss fa-3x"></i>&nbsp;<b>5%</b> rejected for invalid indformation

                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="alert alert-warning text-center">
                        <i class="fa  fa-pencil fa-3x"></i>&nbsp;<b>1,900 </b>new Users have regestered this year
                    </div>
                </div>
                <!--end quick info section -->
            </div>

            <div class="row">
                <div class="col-lg-8">



    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="datagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                    <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName" />
                    <asp:BoundField DataField="NID" HeaderText="NID" SortExpression="NID" />
                    <asp:BoundField DataField="PresentAddress" HeaderText="PresentAddress" SortExpression="PresentAddress" />
                    <asp:BoundField DataField="HomeDistrict" HeaderText="HomeDistrict" SortExpression="HomeDistrict" />
                    <asp:BoundField DataField="HomePoliceStation" HeaderText="HomePoliceStation" SortExpression="HomePoliceStation" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                    <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                    <asp:BoundField DataField="DateOfIncident" HeaderText="DateOfIncident" SortExpression="DateOfIncident" />
                    <asp:BoundField DataField="TimeOfIncident" HeaderText="TimeOfIncident" SortExpression="TimeOfIncident" />
                    <asp:BoundField DataField="PlaceOfIncident" HeaderText="PlaceOfIncident" SortExpression="PlaceOfIncident" />
                    <asp:BoundField DataField="DistrictOfIncident" HeaderText="DistrictOfIncident" SortExpression="DistrictOfIncident" />
                    <asp:BoundField DataField="LocalPolice" HeaderText="LocalPolice" SortExpression="LocalPolice" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="Visited" HeaderText="Visited" SortExpression="Visited" />
                    <asp:BoundField DataField="VisitDetails" HeaderText="VisitDetails" SortExpression="VisitDetails" />
                    <asp:BoundField DataField="VisitDate" HeaderText="VisitDate" SortExpression="VisitDate" />
                    <asp:BoundField DataField="VisitTime" HeaderText="VisitTime" SortExpression="VisitTime" />
                </Columns>
<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
</asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logConnectionString %>" DeleteCommand="DELETE FROM [Fir_data] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Fir_data] ([Name], [FatherName], [MotherName], [NID], [PresentAddress], [HomeDistrict], [HomePoliceStation], [Gender], [BirthDate], [Nationality], [MaritalStatus], [DateOfIncident], [TimeOfIncident], [PlaceOfIncident], [DistrictOfIncident], [LocalPolice], [Details], [Visited], [VisitDetails], [VisitDate], [VisitTime]) VALUES (@Name, @FatherName, @MotherName, @NID, @PresentAddress, @HomeDistrict, @HomePoliceStation, @Gender, @BirthDate, @Nationality, @MaritalStatus, @DateOfIncident, @TimeOfIncident, @PlaceOfIncident, @DistrictOfIncident, @LocalPolice, @Details, @Visited, @VisitDetails, @VisitDate, @VisitTime)" SelectCommand="SELECT * FROM [Fir_data]" UpdateCommand="UPDATE [Fir_data] SET [Name] = @Name, [FatherName] = @FatherName, [MotherName] = @MotherName, [NID] = @NID, [PresentAddress] = @PresentAddress, [HomeDistrict] = @HomeDistrict, [HomePoliceStation] = @HomePoliceStation, [Gender] = @Gender, [BirthDate] = @BirthDate, [Nationality] = @Nationality, [MaritalStatus] = @MaritalStatus, [DateOfIncident] = @DateOfIncident, [TimeOfIncident] = @TimeOfIncident, [PlaceOfIncident] = @PlaceOfIncident, [DistrictOfIncident] = @DistrictOfIncident, [LocalPolice] = @LocalPolice, [Details] = @Details, [Visited] = @Visited, [VisitDetails] = @VisitDetails, [VisitDate] = @VisitDate, [VisitTime] = @VisitTime WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="FatherName" Type="String" />
                    <asp:Parameter Name="MotherName" Type="String" />
                    <asp:Parameter Name="NID" Type="String" />
                    <asp:Parameter Name="PresentAddress" Type="String" />
                    <asp:Parameter Name="HomeDistrict" Type="String" />
                    <asp:Parameter Name="HomePoliceStation" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="String" />
                    <asp:Parameter Name="Nationality" Type="String" />
                    <asp:Parameter Name="MaritalStatus" Type="String" />
                    <asp:Parameter Name="DateOfIncident" Type="String" />
                    <asp:Parameter Name="TimeOfIncident" Type="String" />
                    <asp:Parameter Name="PlaceOfIncident" Type="String" />
                    <asp:Parameter Name="DistrictOfIncident" Type="String" />
                    <asp:Parameter Name="LocalPolice" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="Visited" Type="String" />
                    <asp:Parameter Name="VisitDetails" Type="String" />
                    <asp:Parameter Name="VisitDate" Type="String" />
                    <asp:Parameter Name="VisitTime" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="FatherName" Type="String" />
                    <asp:Parameter Name="MotherName" Type="String" />
                    <asp:Parameter Name="NID" Type="String" />
                    <asp:Parameter Name="PresentAddress" Type="String" />
                    <asp:Parameter Name="HomeDistrict" Type="String" />
                    <asp:Parameter Name="HomePoliceStation" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="String" />
                    <asp:Parameter Name="Nationality" Type="String" />
                    <asp:Parameter Name="MaritalStatus" Type="String" />
                    <asp:Parameter Name="DateOfIncident" Type="String" />
                    <asp:Parameter Name="TimeOfIncident" Type="String" />
                    <asp:Parameter Name="PlaceOfIncident" Type="String" />
                    <asp:Parameter Name="DistrictOfIncident" Type="String" />
                    <asp:Parameter Name="LocalPolice" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="Visited" Type="String" />
                    <asp:Parameter Name="VisitDetails" Type="String" />
                    <asp:Parameter Name="VisitDate" Type="String" />
                    <asp:Parameter Name="VisitTime" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </div>
</form>

</body>
        
</html>