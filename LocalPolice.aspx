<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LocalPolice.aspx.cs" Inherits="LocalPolice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
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
  padding: 8px 15px;
  font-size: 13px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: rgb(54, 254, 32);
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: blue;}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    </style>
</head>
<body style="height:1200px;">
    
	<div class="header">
		<div class="container">
			<div class="w3l_header_left"> 
				<ul>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+ (123) 111 222 333</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">info@example.com</a></li>
				</ul>
			</div>
			
			<div class="w3l_header_right">
				<ul>
                    
                    
                        
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
						<li class="agileits w3layouts"><a href="Home.aspx">Administrator</a></li>
						<li class="agileits w3layouts"><a href="FirForm.aspx">FIR</a></li>
						<li class="agileits w3layouts"><a class="scroll" href="#gallery">Sample FIR</a></li>
                        <li class="agileits w3layouts"><a href="LocalPolice.aspx">Local Police</a></li>
						<li class="agileits w3layouts"><a class="scroll" href="#contact">Contact</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
    <form id="form1" runat="server">
    <div style="margin-top:50px;">
        <h3 style="margin-left:50px;">Dhaka Metropoliton Police</h3>
        <div style="margin-top:20px;margin-left:540px;">
            <asp:DropDownList ID="DropDownDMP" Height="30px" Width="300px" runat="server">
                <asp:ListItem>Select Your Police Station</asp:ListItem>
                <asp:ListItem>Adabor Police Station</asp:ListItem>
                <asp:ListItem>Badda Police Station</asp:ListItem>
                <asp:ListItem>Banani Police Station</asp:ListItem>
                <asp:ListItem>Chalkbazar Police Station</asp:ListItem>
                <asp:ListItem>Cantonment Police Station</asp:ListItem>
                <asp:ListItem>Gulshan Police Station</asp:ListItem>
                <asp:ListItem>Mirpur Model Police Station</asp:ListItem>
                <asp:ListItem>New Market Police Station</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="ButtonDMP" CssClass="button" runat="server" Text="Search" OnClick="ButtonDMP_Click" />
            
        </div>
        <div style="margin-left:80px;margin-top:30px;">
        <asp:GridView ID="GridViewDMP" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>


        <div style="margin-top:50px;">
        <h3 style="margin-left:50px;">Chittagong Metropoliton Police</h3>
        <div style="margin-top:20px;margin-left:540px;">
            <asp:DropDownList ID="DropDownCMP" Height="30px" Width="300px" runat="server">
                <asp:ListItem>Select Your Police Station</asp:ListItem>
                <asp:ListItem>Kotwali Police Station</asp:ListItem>
                <asp:ListItem>Bakalia Police Station</asp:ListItem>
                <asp:ListItem>Chawkbazar Police Station</asp:ListItem>
                <asp:ListItem>Panchlaish Police Station</asp:ListItem>
                <asp:ListItem>Sadarghat Police Station</asp:ListItem>
                <asp:ListItem>Bayazid Bostamy Police Station</asp:ListItem>
                
            </asp:DropDownList>
            <asp:Button ID="ButtonCMP" CssClass="button" runat="server" Text="Search" OnClick="ButtonCMP_Click"  />
            
        </div>
        <div style="margin-left:80px;margin-top:30px;">
        <asp:GridView ID="GridViewCMP" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>


        <div style="margin-top:50px;">
        <h3 style="margin-left:50px;">Rajshahi Metropoliton Police</h3>
        <div style="margin-top:20px;margin-left:540px;">
            <asp:DropDownList ID="DropDownRMP" Height="30px" Width="300px" runat="server">
                <asp:ListItem>Select Your Police Station</asp:ListItem>
                <asp:ListItem>Bagha Police Station</asp:ListItem>
                <asp:ListItem>Motihar Police Station</asp:ListItem>
                <asp:ListItem>Shahmokhdum Police Station</asp:ListItem>
                <asp:ListItem>Gorhanga Police Station</asp:ListItem>
                <asp:ListItem>Railway Police Station</asp:ListItem>
                <asp:ListItem>Mirzapur Police Fari</asp:ListItem>
                
            </asp:DropDownList>
            <asp:Button ID="ButtonRMP" CssClass="button" runat="server" Text="Search" OnClick="ButtonRMP_Click"   />
            
        </div>
        <div style="margin-left:80px;margin-top:30px;">
        <asp:GridView ID="GridViewRMP" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>


        <div style="margin-top:50px;">
        <h3 style="margin-left:50px;">Khulna Metropoliton Police</h3>
        <div style="margin-top:20px;margin-left:540px;">
            <asp:DropDownList ID="DropDownKMP" Height="30px" Width="300px" runat="server">
                <asp:ListItem>Select Your Police Station</asp:ListItem>
                <asp:ListItem>Khan Jahan Ali Police Station</asp:ListItem>
                <asp:ListItem>Daulatpur Police Fari</asp:ListItem>
                <asp:ListItem>Khulna Sadar Police Station</asp:ListItem>
                <asp:ListItem>Phultala Police Station</asp:ListItem>
                <asp:ListItem>Gollamari Police Box</asp:ListItem>
                <asp:ListItem>Sonadanga Model Thana</asp:ListItem>
                
            </asp:DropDownList>
            <asp:Button ID="ButtonKMP" CssClass="button" runat="server" Text="Search" OnClick="ButtonKMP_Click"   />
            
        </div>
        <div style="margin-left:80px;margin-top:30px;">
        <asp:GridView ID="GridViewKMP" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>


        <div style="margin-top:50px;">
        <h3 style="margin-left:50px;">Sylhet Metropoliton Police</h3>
        <div style="margin-top:20px;margin-left:540px;">
            <asp:DropDownList ID="DropDownSMP" Height="30px" Width="300px" runat="server">
                <asp:ListItem>Select Your Police Station</asp:ListItem>
                <asp:ListItem>Sylhet Police Line</asp:ListItem>
                <asp:ListItem>South Surma Police Station</asp:ListItem>
                <asp:ListItem>Sylhet Railway Police Station</asp:ListItem>
                <asp:ListItem>Lamabazar Police Fari</asp:ListItem>
                <asp:ListItem>Amberkhana Police Station</asp:ListItem>
                
                
            </asp:DropDownList>
            <asp:Button ID="ButtonSMP" CssClass="button" runat="server" Text="Search" OnClick="ButtonSMP_Click"  />
            
        </div>
        <div style="margin-left:80px;margin-top:30px;">
        <asp:GridView ID="GridViewSMP" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

        </div>
    </div>

    </form>

</body>
</html>
