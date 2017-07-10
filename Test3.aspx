<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test3.aspx.cs" Inherits="Test3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
       
 Name
        <asp:TextBox ID="TextBox1" runat="server"  />
       
        <br />
       
        Select Image 
       
        <asp:FileUpload ID="FileUpload1" runat="server"  />
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        
<p><asp:Label ID="Label2" runat="server" Text=""></asp:Label>  </p>

<div>
</div>
    
 </form>
</body>
</html>