<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoveryPassword.aspx.cs" Inherits="RecoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recovery Password</title>
    
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
		<h1>Recovery Password</h1>
	</div>
<!--//header-->
         <div>
            <asp:Label ID="Msg" runat="server" ForeColor="Green" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<div class="wthree-pro">
			<img src="images/BDFlag2.gif" alt="image">
			<h2>Fill the form</h2>
		</div>
		<form action="#" method="post">
            <asp:TextBox ID="TextBoxUsername" runat="server"  placeholder="Username" name="Name" class="user" type="text" required=""></asp:TextBox>
			
            <asp:TextBox ID="TextBoxPassword" runat="server"  placeholder="Old Password" name="Password" class="pass" type="password" required="" TextMode="Password"></asp:TextBox>

            <asp:TextBox ID="TextBoxNP" runat="server"  placeholder="New Password" name="Name" class="user" type="text" required="" TextMode="Password"></asp:TextBox>
			
            <asp:TextBox ID="TextBoxCNP" runat="server"  placeholder="Confirm New Password" name="Password" class="pass" type="password" required="" TextMode="Password"></asp:TextBox>
			
			<div class="sub-w3l">
				<span>
				<div class="right-w3l">
                    <asp:Button ID="ButtonChangePass" runat="server" Text="Update"  type="submit" value="Login" OnClick="ButtonChangePass_Click" />
				</div>

               
			</div>

            

             
		</form>
	</div>
    
</div>
<!--//main-->
        
        
        <br />
        <p style="color:white; font-size:large;">Back to <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton> </p>
        <div>

       <br />
           
        
        </div>    
    </form>
    
    
</body>
</html>
