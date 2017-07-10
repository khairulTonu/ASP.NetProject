<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="Test2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Ajax Rating Sample</title>
<style>


</style>
</head>
<body>
<form id="form1" runat="server">
    UserName: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Password: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    
</form>
</body>
</html>
