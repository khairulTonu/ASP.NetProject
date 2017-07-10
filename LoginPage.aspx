<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    
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
		<h1>User Login Form</h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<div class="wthree-pro">
			<img src="images/BDFlag2.gif" alt="image">
			<h2>Login Now</h2>
            <div>
            <asp:Label ID="ErrorMsg" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
        </div>
		</div>
		<form action="#" method="post">
            <asp:TextBox ID="TextBoxUsername" runat="server"  placeholder="Username" name="Name" class="user" type="text" required=""></asp:TextBox>
			<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br><br>
            <asp:TextBox ID="TextBoxPassword" runat="server"  placeholder="Password" name="Password" class="pass" type="password" required="" TextMode="Password"></asp:TextBox>
			<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
			<div class="sub-w3l">
				<span>
                    <asp:CheckBox ID="CheckBoxRememberMe" runat="server" Text="Remember Me" /></span>
				<div class="right-w3l">
                    <asp:Button ID="ButtonLogin" runat="server" Text="Login"  type="submit" value="Login" OnClick="ButtonLogin_Click" />
				</div>

               
			</div>



             
		</form>
	</div>
    <asp:LinkButton ID="LinkButtonForgotPass" runat="server" Font-Bold="true" OnClick="LinkButtonForgotPass_Click">Forgot Password?</asp:LinkButton>
</div>
<!--//main-->
        
        
        
        <div>
            <asp:LinkButton ID="LinkButtonRecover" Font-Bold="true" runat="server" OnClick="LinkButtonRecover_Click">Recover your Password</asp:LinkButton>
       <br />
            <p style="color:white; font-size:large;">Don't Have an account Please <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register</asp:LinkButton> </p>
    </div>   
        <br /> 
        
        <div>
            <p style="color:white; font-size:large;">I am a <asp:LinkButton ID="LinkButtonGuest" runat="server" OnClick="LinkButtonGuest_Click" >Guest User</asp:LinkButton><b>|</b><asp:LinkButton ID="LinkButtonAdmin" runat="server" OnClick="LinkButtonAdmin_Click">Admin</asp:LinkButton></p>
        <br />
            <br />
        
        </div>    
    </form>
    
    
</body>
</html>
