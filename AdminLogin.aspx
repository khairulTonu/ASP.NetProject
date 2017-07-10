<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body style="background-image:url(monument.jpg);">
 <div style="margin-left:180px;">
<div class="container" style="margin-top:190px;">
	<section id="content">
		<form id="form1" runat="server">
			<h1>Admin Login Form</h1>
			<div>
                <asp:TextBox ID="username" type="text" placeholder="Admin ID" required="" runat="server"></asp:TextBox>
			</div>
			<div>
				
                <asp:TextBox ID="password" type="password" placeholder="Password" required="" runat="server" TextMode="Password"></asp:TextBox>
			</div>
			<div>
				<asp:Label ID="errMsg" runat="server" ForeColor="Red"></asp:Label>
				<asp:Button ID="adminLogin" type="submit" runat="server" Text="Login" OnClick="adminLogin_Click" />
			</div>

		</form><!-- form -->
		
	</section><!-- content -->
</div><!-- container -->
    </div>
  
    <script src="js/index.js"></script>

</body>
</html>
