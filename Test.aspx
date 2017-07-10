<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home: FIR System</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"   type="text/javascript"></script>
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
    content: "\f007";    
}
.CP_Head_down_icon {
  color: #000;
font-family: FontAwesome;
font-size: 10px;
margin: 0px 0px 0px 5px;
}

.CP_Head_down_icon:before {
    content: "\f0dd";    
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
    </style>

    </head>
<body>
    
	<h1>Welcome  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>       </h1>
<%--=-=-=-=-=-=-=-=-=-=-=-=-=- User Panel -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==---%>    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#usr").click(function () {
                $("#usrr").animate({
                    height: 'toggle'
                });
            });
        });
   </script>     
    <form id="form1" runat="server">           
 <div class="CP_Head_Usr" id="Usr_Panel" runat="server" >                    
     <div id="usr">
       <!-- User Icon  -->
<asp:Image ID="Image1" runat="server" class="img_thumb" AlternateText="UserIcon"/>                         
  <h4 class="h4"><asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
   <b id="b2" class="CP_Head_down_icon"></b>
  </h4>                    
</div>
 <div id="usrr" class="CP_Head_Usr_Pan">
   <div class="CP_Head_Pan_topdiv">
     <center>  
       <!-- User Image  -->
      <asp:Image ID="Image2" runat="server" AlternateText="UserImage"/>
     <h5><asp:Label ID="Label3" runat="server" Text="User Email"></asp:Label></h5>
    </center>
  </div>
<div class="CP_Head_Pan_btmdiv">
  <asp:Button ID="Profile1" runat="server" Text="Profile" CssClass="Profile"  />
  <asp:Button ID="Logout" runat="server" Text="Logout" CssClass="Logout" />
</div>
 </div>               
</div>   
    <div class="div">    </div>
        </form>

</body>
</html>
