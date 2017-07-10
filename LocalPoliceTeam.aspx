<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LocalPoliceTeam.aspx.cs" Inherits="LocalPoliceTeam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Local Police Teams</title>

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- css -->
<link href="css_home/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css_home/popup-box.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="css_home/style.css" type="text/css" media="all" />
<link rel="stylesheet" 	href="css_home/chocolat.css" type="text/css" media="all"/>
<!--// css -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<!-- //font -->
<script src="js_home/jquery-1.11.1.min.js"></script>
<script src="js_home/bootstrap.js"></script>
	<!-- Popup-Box-JavaScript -->
	<script src="js_home/modernizr.custom.97074.js"></script>
	<script src="js_home/jquery.chocolat.js"></script>
	<script type="text/javascript">
	    $(function () {
	        $('.gallery-grids a').Chocolat();
	    });
	</script>
	<!-- //Popup-Box-JavaScript -->
	<!-- start-smooth-scrolling -->
			<script type="text/javascript" src="js_home/move-top.js"></script>
			<script type="text/javascript" src="js_home/easing.js"></script>
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        $(".scroll").click(function (event) {
			            event.preventDefault();
			            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			        });
			    });
			</script>
	<!-- //start-smoth-scrolling -->
		<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<script src="js_home/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="js_home/modernizr.custom.53451.js"></script> 
 <script>
     $(document).ready(function () {
         $('.popup-with-zoom-anim').magnificPopup({
             type: 'inline',
             fixedContentPos: false,
             fixedBgPos: true,
             overflowY: 'auto',
             closeBtnInside: true,
             preloader: false,
             midClick: true,
             removalDelay: 300,
             mainClass: 'my-mfp-zoom-in'
         });

     });
</script>


    

    <style>

       

        .button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 12px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: orange;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: red}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.button1 {
  display: inline-block;
  padding: 15px 25px;
  font-size: 12px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: orange;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: blue;}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}





a {
	color: #2A679F;
}
/*========*/

.form-wrapper {
	background-color: #f6f6f6;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f6f6f6), to(#eae8e8));
	background-image: -webkit-linear-gradient(top, #f6f6f6, #eae8e8);
	background-image: -moz-linear-gradient(top, #f6f6f6, #eae8e8);
	background-image: -ms-linear-gradient(top, #f6f6f6, #eae8e8);
	background-image: -o-linear-gradient(top, #f6f6f6, #eae8e8);
	background-image: linear-gradient(top, #f6f6f6, #eae8e8);
	border-color: #dedede #bababa #aaa #bababa;
	border-style: solid;
	border-width: 1px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
	-moz-box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
	box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
	margin: 100px auto;
	overflow: hidden;
	padding: 8px;
	width: 450px;
}

.form-wrapper #search1 {
	border: 1px solid #CCC;
	-webkit-box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
	-moz-box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
	box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #FFF;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
  color: #999;
	float: left;
	font: 16px Lucida Sans, Trebuchet MS, Tahoma, sans-serif;
	padding: 10px;
	}

.form-wrapper #search1:focus {
	border-color: #aaa;
	-webkit-box-shadow: 0 1px 1px #bbb inset;
	-moz-box-shadow: 0 1px 1px #bbb inset;
	box-shadow: 0 1px 1px #bbb inset;
	outline: 0;
}

.form-wrapper #search1:-moz-placeholder,
.form-wrapper #search1:-ms-input-placeholder,
.form-wrapper #search1::-webkit-input-placeholder {
	color: #999;
	font-weight: normal;
}

.form-wrapper #submit {
	background-color: #0483a0;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#31b2c3), to(#0483a0));
	background-image: -webkit-linear-gradient(top, #31b2c3, #0483a0);
	background-image: -moz-linear-gradient(top, #31b2c3, #0483a0);
	background-image: -ms-linear-gradient(top, #31b2c3, #0483a0);
	background-image: -o-linear-gradient(top, #31b2c3, #0483a0);
	background-image: linear-gradient(top, #31b2c3, #0483a0);
	border: 1px solid #00748f;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #FFF;
	color: #fafafa;
	cursor: pointer;
	height: 42px;
	float: right;
	font: 15px Arial, Helvetica;
	padding: 0;
	text-transform: uppercase;
	text-shadow: 0 1px 0 rgba(0, 0 ,0, .3);
	width: 100px;
}

.form-wrapper #submit:hover,
.form-wrapper #submit:focus {
	background-color: #31b2c3;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#0483a0), to(#31b2c3));
	background-image: -webkit-linear-gradient(top, #0483a0, #31b2c3);
	background-image: -moz-linear-gradient(top, #0483a0, #31b2c3);
	background-image: -ms-linear-gradient(top, #0483a0, #31b2c3);
	background-image: -o-linear-gradient(top, #0483a0, #31b2c3);
	background-image: linear-gradient(top, #0483a0, #31b2c3);
}

.form-wrapper #submit:active {
	-webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
	-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
	outline: 0;
}

.form-wrapper #submit::-moz-focus-inner {
	border: 0;
}


    </style>
    	
    </head>
<body>


    
   
	<div class="header">
		<div class="container">
			<div class="w3l_header_left"> 
				<ul>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+880 1750-673198</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:bdfir2017@example.com">bdfir2017@gmail.com</a></li>
				</ul>
			</div>
			
			
                
			
			<div class="clearfix"> </div>
			
		</div>
	</div>
	<div class="logo-navigation-w3layouts">
		<div class="container">
		<div class="logo-w3">
			<a href="#"><h1><img src="images_home/BDpolice.jpg" alt=" " /><span> FIR System</span></h1></a>
		</div>
		<div class="navigation agileits w3layouts">
			<nav class="navbar agileits w3layouts navbar-default">
				<div class="navbar-header agileits w3layouts">
					<button type="button" class="navbar-toggle agileits w3layouts collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
						<span class="sr-only agileits w3layouts">Toggle navigation</span>
						<span class="icon-bar agileits w3layouts"></span>
						<span class="icon-bar agileits w3layouts"></span>
						<span class="icon-bar agileits w3layouts"></span>
					</button>
				</div>
				<div class="navbar-collapse agileits w3layouts collapse hover-effect" id="navbar">
					<ul class="agileits w3layouts">
						<li class="agileits w3layouts"><a href="Home.aspx" class="active">Home</a></li>
						<li class="agileits w3layouts"><a class="scroll" href="#team">Administrator</a></li>
						<li class="agileits w3layouts"><a href="FirForm.aspx">FIR</a></li>
						<li class="agileits w3layouts"><a href="PoliceStationsFile.aspx">Police Stations</a></li>
                        <li class="agileits w3layouts"><a href="LocalPoliceTeam.aspx">Local Police</a></li>
                        <li class="agileits w3layouts"><a class="scroll" href="#services">Rating</a></li>
						<li class="agileits w3layouts"><a class="scroll" href="#contact">Contact</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
    
     <form id="form1" runat="server">

         

         <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css"
    rel="Stylesheet" type="text/css" />
<script type="text/javascript">
    $(function () {
        $("[id$=search1]").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: '<%=ResolveUrl("~/LocalPoliceTeam.aspx/GetCustomers") %>',
                    data: "{ 'prefix': '" + request.term + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {
                                label: item.split('-')[0],
                                val: item.split('-')[1]
                            }
                        }))
                    },

                    error: function (response) {
                        alert(response.responseText);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    }

                });
            },
            select: function (e, i) {
                $("[id$=hPolicestation]").val(i.item.val);
            },
            minLength: 1
        });
    });
</script>


        <div class="form-wrapper" style="width:756px;">
         <asp:TextBox ID="search1" runat="server" type="text"  placeholder="Search for..." required="required" Height="40px" Width="634px"></asp:TextBox>
    <asp:HiddenField ID="hPolicestation"  runat="server" />
            <asp:Button ID="submit" type="submit" value="go"  runat="server" Text="Search" />
        </div>
    
        <div>
            <asp:DetailsView ID="DetailsView1" HorizontalAlign="Center" runat="server" Height="450px" Width="555px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PoliceStation" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6"  Font-Bold="True" />
                <EditRowStyle  BackColor="#999999" />
                <FieldHeaderStyle HorizontalAlign="Center" BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" ReadOnly="True" SortExpression="PoliceStation" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Duty Officer" HeaderText="Duty Officer" SortExpression="Duty Officer" />
                    <asp:BoundField DataField="T&amp;T" HeaderText="T&amp;T" SortExpression="T&amp;T" />
                    <asp:BoundField DataField="Cell" HeaderText="Cell" SortExpression="Cell" />
                    <asp:BoundField DataField="Inspector Investigation Cell" HeaderText="Inspector Investigation Cell" SortExpression="Inspector Investigation Cell" />
                    <asp:BoundField DataField="FAX" HeaderText="FAX" SortExpression="FAX" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:logConnectionString %>" SelectCommand="SELECT * FROM [LocalPolice] WHERE ([PoliceStation] = @PoliceStation)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="search1" Name="PoliceStation" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>

    <div class="footer-w3l" style="margin-top:30px;">
		<p> &copy; 2017 Bangladesh Police . All Rights Reserved | Design by <a href="khairulislamtonu0509@gmail.com">Md. Khairul Islam</a></p>
	</div>
    
    
</body>
</html>
