<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PoliceStationsFile.aspx.cs" Inherits="PoliceStationsFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Police Station Docs</title>
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
table,th,td {
  border : 1px solid black;
  
}
th,td {
  padding: 5px;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body style="background-color:#10edb0">
    <div class="header">
		<div class="container">
			<div class="w3l_header_left"> 
				<ul>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+ (123) 111 222 333</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">info@example.com</a></li>
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
    <div style="margin-top:50px;"><center>
        <button class="button" type="button"  onclick="loadDoc()">See Police Stations</button>
        
<br><br>
    <table id="demo"></table>
        </center>
<script>
    function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                myFunction(this);
            }
        };
        xhttp.open("GET", "PoliceStationsXml.xml", true);
        xhttp.send();
    }
    function myFunction(xml) {
        var i;
        var xmlDoc = xml.responseXML;
        var table = "<tr><th>POLICE STATION</th><th>ADDRESS</th><th>HOTLINE</th></tr>";
        var x = xmlDoc.getElementsByTagName("ZONE");
        for (i = 0; i < x.length; i++) {
            table += "<tr><td>" +
            x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("ADDRESS")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("HOTLINE")[0].childNodes[0].nodeValue +
            "</td></tr>";
        }
        document.getElementById("demo").innerHTML = table;
    }
</script>
         
 </form>
</body>
</html>

    
   
