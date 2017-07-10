<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PoliceStations.aspx.cs" Inherits="PoliceStations" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
    .gridview{
    background-color:#fff;
   
   padding:2px;
   margin:2% auto;
   
   
}
        .gridview a{
  margin:auto 1%;
    border-radius:50%;
      background-color:#444;
      padding:5px 10px 5px 10px;
      color:#fff;
      text-decoration:none;
      -o-box-shadow:1px 1px 1px #111;
      -moz-box-shadow:1px 1px 1px #111;
      -webkit-box-shadow:1px 1px 1px #111;
      box-shadow:1px 1px 1px #111;
     
}

        .gridview a:hover{
    background-color:#1e8d12;
    color:#fff;
}

        .gridview span{
    background-color:#ae2676;
    color:#fff;
     -o-box-shadow:1px 1px 1px #111;
      -moz-box-shadow:1px 1px 1px #111;
      -webkit-box-shadow:1px 1px 1px #111;
      box-shadow:1px 1px 1px #111;

    border-radius:50%;
    padding:5px 10px 5px 10px;
}

    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | FIR System</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
   </head>
<body style="background-color:lightgray;">
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
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
                        <i class="fa  fa-pencil fa-3x"></i>&nbsp;<b>1,900 </b>new Users have been regestered this year
                    </div>
                </div>
                <!--end quick info section -->
            </div>
            
            <div class="row">
                <div class="col-lg-8">



                    <!--Area chart example -->
                    <form id="form1" runat="server">
                    <div>
                        <h2><center>Police Stations</center></h2>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="650px" Width="725px" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PoliceStation" DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle  BackColor="#FFFF99" ForeColor="Blue" Font-Bold="True" />
                            <FieldHeaderStyle BackColor="#10c4f8"  Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" ReadOnly="True" SortExpression="PoliceStation" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Duty Officer" HeaderText="Duty Officer" SortExpression="Duty Officer" />
                                <asp:BoundField DataField="T&amp;T" HeaderText="T&amp;T" SortExpression="T&amp;T" />
                                <asp:BoundField DataField="Cell" HeaderText="Cell" SortExpression="Cell" />
                                <asp:BoundField DataField="Inspector Investigation Cell" HeaderText="Inspector Investigation Cell" SortExpression="Inspector Investigation Cell" />
                                <asp:BoundField DataField="FAX" HeaderText="FAX" SortExpression="FAX" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle  CssClass="gridview" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" HorizontalAlign="Center" ForeColor="#333333" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logConnectionString %>" DeleteCommand="DELETE FROM [LocalPolice] WHERE [PoliceStation] = @PoliceStation" InsertCommand="INSERT INTO [LocalPolice] ([PoliceStation], [Address], [Duty Officer], [T&amp;T], [Cell], [Inspector Investigation Cell], [FAX], [Email]) VALUES (@PoliceStation, @Address, @Duty_Officer, @column1, @Cell, @Inspector_Investigation_Cell, @FAX, @Email)" SelectCommand="SELECT * FROM [LocalPolice]" UpdateCommand="UPDATE [LocalPolice] SET [Address] = @Address, [Duty Officer] = @Duty_Officer, [T&amp;T] = @column1, [Cell] = @Cell, [Inspector Investigation Cell] = @Inspector_Investigation_Cell, [FAX] = @FAX, [Email] = @Email WHERE [PoliceStation] = @PoliceStation">
                            <DeleteParameters>
                                <asp:Parameter Name="PoliceStation" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="PoliceStation" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="Duty_Officer" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Cell" Type="String" />
                                <asp:Parameter Name="Inspector_Investigation_Cell" Type="String" />
                                <asp:Parameter Name="FAX" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="Duty_Officer" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Cell" Type="String" />
                                <asp:Parameter Name="Inspector_Investigation_Cell" Type="String" />
                                <asp:Parameter Name="FAX" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="PoliceStation" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                        </form>
                    <!--End area chart example -->
                    
                </div>

                </div>
				
                
        <!-- end page-wrapper -->
		

    </div>
	</div>
	
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/plugins/morris/morris.js"></script>
    <script src="assets/scripts/dashboard-demo.js"></script>

</body>

</html>

