<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="loginStyle.css"/>
    <style type="text/css">
        .newStyle1 {
            font-family: Consolas;
            font-style: normal;
            font-size: large;
            background-image: url('police4.jpg');
        }
        .auto-style1 {
            margin-left: 254px;
        }
        .auto-style3 {
            margin-left: 264px;
        }
        .auto-style4 {
            font-family: Consolas;
            font-style: normal;
            font-size: large;
            background-image: url('loginback.jpg');
            margin-left: 6px;
            margin-top: 93px;
        }
    </style>
</head>
<body style="background-color:rgb(22, 186, 222); margin-left: 133px;">
    <form id="form1" runat="server" style="align-items:center">
    <div class="auto-style1">
    
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style4" Font-Names="Verdana" Font-Size="10pt" Height="288px" OnAuthenticate="Login1_Authenticate" style="text-align: left" Width="438px">
            <CheckBoxStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
    
    </div>
        <asp:Button ID="Registration" runat="server" CssClass="action-button shadow animate color auto-style3"  ForeColor="Black" OnClick="Registration_Click" Text="Sign Up" style="left: 26px; top: 0px; width: 140px;" />
    </form>
</body>
</html>
