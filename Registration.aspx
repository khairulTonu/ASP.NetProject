<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="regStyle.css"/>
    <style type="text/css" >
        .label
        {
            color: #10aa0f;
            font-weight:700;

        }

        .auto-style1 {
            width: 100%;
            
        }
        .auto-style2 {
            width: 240px;
            text-align: right;
        }
        .auto-style3 {
            width: 240px;
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 186px;
        }
        .auto-style6 {
            height: 26px;
            width: 186px;
        }
        .auto-style9 {
            width: 240px;
            text-align: right;
            height: 35px;
        }
        .auto-style10 {
            width: 186px;
            height: 35px;
        }
        .auto-style11 {
            height: 35px;
        }
        .auto-style12 {
            background: #333;
            color: #ccc;
            padding: 6px 15px 6px 35px;
            border-radius: 20px;
            box-shadow: 0 1px 0 #ccc inset;
            transition: 500ms all ease;
            outline: 0;
        }
        </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMsg" CssClass="label" runat="server" Text=""></asp:Label>
        </div>
        <h1><center>Registration Form</center></h1>
    <div style="margin-left:300px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFirstName" CssClass="textbox" runat="server"   placeholder="First Name"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="true" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*First Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLastName" CssClass="textbox" runat="server" placeholder="Last Name"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Bold="true"  runat="server" ControlToValidate="txtLastName" ErrorMessage="*Last Name Requred"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUserName" CssClass="textbox" runat="server" placeholder="User Name"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Bold="true"  ControlToValidate="txtUserName" ErrorMessage="*Username Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPwd" CssClass="textbox" runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Font-Bold="true"  runat="server" ControlToValidate="txtPwd" ErrorMessage="*Password is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCP" CssClass="textbox"  runat="server" TextMode="Password" placeholder="Confirm Password"  ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Font-Bold="true"  runat="server" ControlToValidate="txtCP" ErrorMessage="*Please Confirm your password"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCP" ErrorMessage="*Password doesn't match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmailID" CssClass="textbox" runat="server" placeholder="Email" ></asp:TextBox>
                    
                </td>
                <td class="auto-style4">
                    <asp:RegularExpressionValidator ID="revEmailID" runat="server" ControlToValidate="txtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Email is not valid!</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Font-Bold="true"  runat="server" ControlToValidate="txtEmailID" ErrorMessage="*Please enter a valid email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownListGender" CssClass="auto-style12" runat="server" Height="37px" Width="159px" >
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Font-Bold="true"  runat="server" ControlToValidate="DropDownListGender" ErrorMessage="*Gender is Required" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNID" CssClass="textbox" runat="server" placeholder="NID" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Font-Bold="true"  runat="server" ControlToValidate="txtNID" ErrorMessage="*NID Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContact" CssClass="textbox" runat="server" placeholder="Contact No" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Font-Bold="true"  runat="server" ControlToValidate="txtContact" ErrorMessage="*Contact no Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" CssClass="textbox" runat="server" />
                    
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Register" runat="server" OnClick="Register_Click" Text="Register" CssClass="action-button shadow animate color" Height="40px" Width="145px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
