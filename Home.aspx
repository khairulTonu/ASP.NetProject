<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home: FIR System</title>

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

        .button
    {
     width: 85px;
        height: 33px;
        font: bold 17px segoe ui;
        float: right;
    }
    .CP_Head_Usr
{
  float: right;
  position: absolute;
  right: 25px;
  top: 8px;
  background: #fff;
}
.CP_Head_Usr #usr
{
  margin: 0px 0px 0px 0px;
  font: bold 13px 'Source Sans Pro', sans-serif;
  color: #000;
  padding: 4px 15px 4px 12px;
  cursor: pointer;
  border-top: 3px solid #09F;
  float: left;
  border-left: 8px solid #09F;
  border-right: 8px solid #09F;
  border-bottom: 3px solid #09f;
}
.img_thumb
{
       width: 30px;  
       height: 30px;
  border: 1px solid #D8D8D8;
  border-radius: 3px;
  float: left;
}
.h4
{
       float: left;
  margin: 0;
  padding: 10px 5px 0px 8px;
}
.usrhover
{
     background: #267FBB;     color: #fff;
}
.CP_Head_Usr h2:hover .CP_Head_down_icon 
{     
     color: #E42A2C;
}
.CP_Head_Usr_icon {
    position: relative;
color: #000;
font-family: FontAwesome;
font-size: 16px;
margin: 0px 8px;
}

.CP_Head_Usr_icon:before {
    content: "\f0d8";    
}
.CP_Head_down_icon {
  color: #000;
font-family: FontAwesome;
font-size: 10px;
margin: 0px 0px 0px 5px;
}

.CP_Head_down_icon:before {
    content: "\f0d7";    
}
#usrr
{
     display: none;
}
.CP_Head_Usr_Pan
{
position: absolute;
width: 230px;
right: 0px;
top: 50px;
z-index: 100;
border: 4px solid rgba(0, 0, 0, 0.2);
border-radius: 2px;
}
.CP_Head_Pan_topdiv
{
background: #fff;
width: 230px;
height: 150px;
float: right;
box-shadow: 0px 1.3px 1px #ccc;
}
.CP_Head_Pan_topdiv h5
{
margin: 5px 0px 0px 0px;
color: #D7690C;
font: bold 14px calibri;
}
.CP_Head_Pan_topdiv img
{
width: 65px;
background: #FFFFFF;
border-radius: 100%;
border: 8px solid #E5E5E5;
margin: 5px 0px 0px 0px;
}
.CP_Head_Pan_btmdiv
{
background: #f1f1f1;
height: 50px;
float: right;
width: 230px;
box-shadow: 0px 1.3px 1px #ccc;
}
.Logout
{
    background: #F4F4F4;
border: 1px solid #D5D5D5;
font: 14px segoe ui;
color: #333;
cursor: pointer;
padding: 5px 12px 7px 12px;
float: right;
margin: 8px 12px 0px 0px;
}
.Logout:hover
{
     background: #FAFAFA;
}
.Logout:focus
{
     outline: none;
}
.Profile
{
    background: #F4F4F4;
border: 1px solid #D5D5D5;
font: 14px segoe ui;
color: #333;
cursor: pointer;
padding: 5px 16px 7px 16px;
float: left;
margin: 8px 0px 0px 12px;
}
.Profile:hover
{
     background: #FAFAFA;
}
.Profile:focus
{
     outline: none;
}


       .ratingEmpty
{
background-image: url("images/EmptyStar.png");
width:45px;
height:45px;
}
.ratingFilled
{
background-image: url("images/FilledStar.png");
width:45px;
height:45px;
}
.ratingSaved
{
 background-image: url("images/WaitingStar.png");
width:45px;
height:45px;
}

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
    </style>
    	
    </head>
<body>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#usr").click(function () {
                $("#usrr").animate({
                    height: 'toggle'
                });
            });
        });
   </script>     
    
	<div class="header">
		<div class="container">
			<div class="w3l_header_left"> 
				<ul>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+880 1750-673198</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:bdfir2017@gmail.com">bdfir2017@gmail.com</a></li>
				</ul>
			</div>
			<form id="form1" runat="server">
			<div class="w3l_header_right">
				<ul>
                    <div class="CP_Head_Usr" id="Usr_Panel" runat="server" >                    
     <div id="usr">
       <!-- User Icon  -->
<asp:Image ID="Image1" runat="server" class="img_thumb" AlternateText="UserIcon"/>                         
  <h4 class="h4"><asp:Label ID="Label2" Font-Size="Small" runat="server" Text="User Name"></asp:Label>
   <b id="b2" class="CP_Head_down_icon"></b>
  </h4>                    
</div>
 <div id="usrr" class="CP_Head_Usr_Pan">
   <div class="CP_Head_Pan_topdiv">
     <center>  
       <!-- User Image  -->
      <asp:Image ID="Image2" runat="server" AlternateText="UserImage" Width="95px" Height="100px"/>
     <h5><asp:Label ID="Label3" runat="server" Text="User Email"></asp:Label></h5>
    </center>
  </div>
<div class="CP_Head_Pan_btmdiv">
  <asp:Button ID="Profile1" runat="server" Text="Profile" CssClass="Profile" OnClick="Profile1_Click"  />
  <asp:Button ID="Logout" runat="server" Text="Logout" CssClass="Logout"  OnClick="Logout_Click"  />
</div>
 </div>               
</div>   
    <div class="div">    </div>
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

	<div class="banner">
		<h3>The worst crime is</h3>
		<h2 style="color:orange;"><span>faking </span>it</h2>
		<h4>Our goal is to protect you</h4>
		<div class="arrow">
			<a href="#contact" class="scroll"><img src="images_home/arrow.png" alt=" " /></a>
		</div>
	</div>
	
    <!--Featured Work-->
    <div style="margin-top:50px">
    <div class="featured-work">
		<div class="container">
			<h3>Featured work</h3>
			<div class="col-md-6 featured-left">
				<div class="wmuSlider example1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<img src="images_home/fw1.jpg" alt=" " class="img-responsive" />
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<img src="images_home/fw2.jpg" alt=" " class="img-responsive" />
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<img src="images_home/fw3.jpg" alt=" " class="img-responsive" />
							</div>
						</article>
					</div>
				</div>
			</div>
			<script src="js_home/jquery.wmuSlider.js"></script> 
								<script>
								    $('.example1').wmuSlider();
								</script> 

			<div class="col-md-6 featured-right">
				<h4>Our Aims</h4>
				<p>Bangladesh Police is the core law enforcement agency of Bangladesh.
 It is administered under the Ministry of Home Affairs of the Government
 of Bangladesh. It plays the prime and pivotal role in maintaining law and
 order of the state. Though police is primarily concerned with maintaining 
 law and order assuring security of public life and property.</p>
				<p>Public can claim justice by FIR.
 Polices investigate injustice on people on the basis of their FIR.So FIR plays vital role
 in the law enforcement of the country.
 </p>
				
			</div>
			<div class="clearfix">
			</div>
		</div>
	</div>

        </div>
    <!--Featured Work -->

	<!-- team -->
	<div class="team" id="team">
		<div class="container">
			<h3>Our Admin Panel</h3>
			<div class="agile_team_grids">
				<div class="col-md-3 agile_team_grid  agile_team_gridf">
					<div class="agile_team_grid_main">
						<img src="images_home/IGP.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
								<li><a href="#" class="icon-button google"><i class="icon-google"></i><span></span></a></li>
								<li><a href="#" class="icon-button v"><i class="icon-v"></i><span></span></a></li>
								<li><a href="#" class="icon-button pinterest"><i class="pinterest"></i><span></span></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Shahidul Hoque</h4>
						<p>IGP</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid agile_team_grid2">
					<div class="agile_team_grid_main">
						<img src="images_home/DMPC.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
								<li><a href="#" class="icon-button google"><i class="icon-google"></i><span></span></a></li>
								<li><a href="#" class="icon-button v"><i class="icon-v"></i><span></span></a></li>
								<li><a href="#" class="icon-button pinterest"><i class="pinterest"></i><span></span></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Asaduzzaman Mia</h4>
						<p>DMP Commissioner</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid agile_team_grid3">
					<div class="agile_team_grid_main">
						<img src="images_home/RMPC.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
								<li><a href="#" class="icon-button google"><i class="icon-google"></i><span></span></a></li>
								<li><a href="#" class="icon-button v"><i class="icon-v"></i><span></span></a></li>
								<li><a href="#" class="icon-button pinterest"><i class="pinterest"></i><span></span></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Mahbubur Rahman</h4>
						<p>RMP Commissioner</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid agile_team_grid4">
					<div class="agile_team_grid_main">
						<img src="images_home/SMPC.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
								<li><a href="#" class="icon-button google"><i class="icon-google"></i><span></span></a></li>
								<li><a href="#" class="icon-button v"><i class="icon-v"></i><span></span></a></li>
								<li><a href="#" class="icon-button pinterest"><i class="pinterest"></i><span></span></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Golam Kibria</h4>
						<p>SMP Commissioner</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->

    <!--Rate Us -->
    <div class="services" id="services">
		<div class="container">
			<h3>Rate Us</h3>
			
            <ajax:ToolkitScriptManager ID="ScripManager1" runat="server"/>
<div>
<asp:UpdatePanel ID="pnlRating" runat="server">
<ContentTemplate>
<table width="100%">
<tr>
<td width="27%">
    <asp:Label ID="lblresult" runat="server" Font-Bold="true" ForeColor="#800000" Text="Selected value: "></asp:Label>
</td>
<td>
<ajax:Rating ID="ratingControl" HorizontalAlign="Center" AutoPostBack="true" OnChanged="RatingControlChanged" runat="server" StarCssClass="ratingEmpty" WaitingStarCssClass="ratingSaved" EmptyStarCssClass="ratingEmpty" FilledStarCssClass="ratingFilled" MaxRating="10">
</ajax:Rating>
</td>
</tr>
<tr>
<td colspan="2">
    <b>
        <asp:Label ID="lblthanks" runat="server" ForeColor="#009900" Text=""></asp:Label>
        <br />
    <asp:Label ID="lbltxt" runat="server" />
    </b>
</td>
</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>
</div>

			<div class="clearfix"></div>
		</div>
	</div>




    <!-- Slide Show -->

    <div style="margin-top:50px;">


<div class="slideshow-container" style=" width: 1046px; margin-left:150px;">

<div class="mySlides">
  
  <img src="slide1.jpg" style="width:1000px; height:300px;">
  
</div>

<div class="mySlides">
  
  <img src="slide4.jpg" style="width:1000px; height:300px;">
  
</div>

<div class="mySlides">
  
  <img src="slide3.jpg" style="width:1000px; height:300px;">
  
</div>

</div>
<br>

        
        

<div style="text-align:center; width: 672px; margin-left:300px;">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
        </div>

    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2500);
        }
</script>
   
    <!--slide show-->

    

	
	<div class="contact-w3-agileits" id="contact">
		<div class="container">
			<div class="col-md-5 contact-left-w3ls">
				<h3>Contact info</h3>
				<div class="visit">
					<div class="col-md-2 contact-icon-wthree">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
					</div>
					<div class="col-md-10 contact-text-agileinf0">
						<h4>Visit us</h4>
						<h5>Bangladesh Police Head Quarters,Phoenix Rd,Dhaka</h5>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="mail">
					<div class="col-md-2 contact-icon-wthree">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<div class="col-md-10 contact-text-agileinf0">
						<h4>Mail us</h4>
						<h5>bdfir2017@gmail.com</h5>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="call">
					<div class="col-md-2 contact-icon-wthree">
						<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
					</div>
					<div class="col-md-10 contact-text-agileinf0">
						<h4>Call us</h4>
						<h5>+880 1750-673198</h5>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="visit">
					<div class="col-md-2 contact-icon-wthree">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
					<div class="col-md-10 contact-text-agileinf0">
						<h4>Work hours</h4>
						<h5>24 hours/day</h5>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-7 contact-right-w3l">
				<h3>Leave message</h3>
				
					
                    <asp:TextBox ID="TextBoxFN" type="text" class="name" name="name" placeholder="First Name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBoxLN" type="text"  class="name" name="name" placeholder="Last Name" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBoxEMAIL" type="text"  class="name" name="name" placeholder="Email" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBoxSUB" type="text"  class="name" name="name" placeholder="Subject" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBoxDETAILS" placeholder="Your Message" TextMode="MultiLine" Height="100px" Width="620px" runat="server"></asp:TextBox>
				
                <asp:Button ID="SendmsgButton" type="submit" runat="server" Text="SEND MESSAGE" OnClick="SendmsgButton_Click"  />	

				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footer-w3l">
		<p> &copy; 2017 Bangladesh Police . All Rights Reserved | Design by <a href="khairulislamtonu0509@gmail.com">Md. Khairul Islam</a></p>
	</div>
<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">
		
		
	</div>
</div>
        

</body>
</html>

