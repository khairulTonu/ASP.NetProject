<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Personal Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->


</head>
<body>
    <form id="form1" runat="server">
    <div class="header-w3l">
		<h1>Forgot Password</h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<div class="wthree-pro">
			<img src="images/BDFlag2.gif" alt="image">
			<h2>Enter your Email</h2>
		</div>
		<form action="#" method="post">
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="Email" name="Name" class="user" type="text" required=""></asp:TextBox>
			
			<div class="sub-w3l">
				<span>
                   
				<div class="right-w3l">
                    <asp:Button ID="Button1" runat="server" Text="Submit"  type="submit" value="Login" OnClick="Button1_Click" />
				</div>
               
			</div>

             
		</form>
	</div>
</div>
<!--//main-->
        <br />
        <div>
            <asp:Label ID="lbmsg" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
        </div>
        <p style="color:white; font-size:large;">Back to <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton> </p>
        <br />
        <br />
        <div style="margin-top:30px;">
       
    </div>   
        <br />
        <br /> 
        
        <div>
            
        <br />
            <br />
        
        </div>    
    </form>
    
    
</body>
</html>
