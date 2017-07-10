<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirForm.aspx.cs" Inherits="FirForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FIR Form</title>
    <link rel="stylesheet" type="text/css" href="FIRstyle.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 200px;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style5 {
            width: 200px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 23px;
            width: 180px;
        }
        .auto-style8 {
            width: 180px;
        }
        .auto-style9 {
            width: 180px;
            height: 26px;
        }
        .auto-style10 {
            width: 200px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
            width: 474px;
        }
        .auto-style13 {
            width: 474px;
        }
        .auto-style14 {
            height: 22px;
            width: 200px;
        }
        .auto-style15 {
            height: 22px;
            width: 180px;
        }
        .auto-style16 {
            height: 22px;
        }
        .auto-style17 {
            width: 200px;
            height: 24px;
        }
        .auto-style18 {
            width: 180px;
            height: 24px;
        }
        .auto-style19 {
            height: 24px;
        }
        .auto-style20 {
            width: 474px;
            height: 71px;
        }
        .auto-style21 {
            width: 200px;
            height: 71px;
        }
        .auto-style22 {
            width: 129px;
            height: 27px;
        }
        .auto-style23 {
            width: 129px;
        }
        .auto-style24 {
            width: 129px;
            height: 71px;
        }
        .auto-style25 {
            width: 129px;
            height: 26px;
        }
        .auto-style26 {
            width: 474px;
            height: 26px;
        }
        .auto-style28 {
            height: 23px;
            width: 445px;
        }
        .auto-style29 {
            height: 23px;
            width: 189px;
        }
    </style>
</head>
<body style="background-color:rgb(213, 245, 136)">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <fieldset>
        <h1><center>FIR Form</center></h1>
        <h2>Instructions:</h2>
        <p>1. Fill the form very carefully.</p>
        <p>2. The fields marked (<span class="ewRequired" style="color: red; font-family: &quot; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span>) are mandatory to be filled.</p>
    </fieldset>
    <fieldset>
        <h2>COMPLAINANT DETAILS</h2>

    </fieldset>
    <fieldset >
    <table class="auto-style1">
        <tr>
            <td class="auto-style14">Name<span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"> *</span></td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBoxName" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="* Please enter your Name" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Father&#39;s Name <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxFatherName" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFatherName" ErrorMessage="* Please enter your Father's Name" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mothert&#39;s Name <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBoxMothertName" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMothertName" ErrorMessage="* Please enter your Mother's Name" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
    
        <tr>
            <td class="auto-style4">NID <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxNID" runat="server" CssClass="textbox" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxNID" ErrorMessage="* NID is required" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Present Address <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBoxPresentADD" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxPresentADD" ErrorMessage="* Please give us your Present address" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Home District <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownHomeDistrict" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select Home District </asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Barishal</asp:ListItem>
                    <asp:ListItem>Sylhet</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Mymensingh</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownHomeDistrict" ErrorMessage="* Please select your Home District" InitialValue="Select Home District" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Home Police Station <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownHomePoliceStation" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select Police Station </asp:ListItem>
                    <asp:ListItem>Dhaka Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Chittagong Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Khulna Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Rajshahi Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Barishal Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Sylhet Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Rangpur Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Mymensingh Police</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownHomePoliceStation" ErrorMessage="* Please select your Home Police station" InitialValue="Select Police Station" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
        </fieldset>
        <fieldset>
            <h2>Further Information</h2>
        </fieldset>
        <fieldset>
        <table>
        <tr>
            <td class="auto-style3">Gender <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style29">
                <asp:DropDownList ID="DropDownListGender" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select an option</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="* Please select an option " InitialValue="Select an option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Date of Birth <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style29">
                <cc1:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></cc1:ToolkitScriptManager>
    <div>
    <asp:TextBox ID="TextBoxBirthday" CssClass="textbox" runat="server"></asp:TextBox>
    <cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBoxBirthday" Format="dd/MM/yyyy">
    </cc1:CalendarExtender>
    </div>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBoxBirthday" ErrorMessage="* Birthdate is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Nationality <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBoxNationality" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBoxNationality" ErrorMessage="* Nationality is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Marital Status <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style29">
                <asp:DropDownList ID="DropDownListMarritualStatus" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select an option</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="* Please select an option" InitialValue="Select an option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
        </fieldset>
        <fieldset>
            <h2>INFORMATION REPORT</h2>
        </fieldset>
        <fieldset>
            <table>
        <tr>
            <td class="auto-style10">Date<span> of Incident</span><span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;*</span></td>
            <td class="auto-style22">      
    <div>
    <asp:TextBox ID="TextBoxDateOfINcident" CssClass="textbox" runat="server"></asp:TextBox>
    <cc1:CalendarExtender ID="CalendarExtender2" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBoxDateOfINcident" Format="dd/MM/yyyy">
    </cc1:CalendarExtender>
    </div>
            </td>
            <td class="auto-style12">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxDateOfINcident" ErrorMessage="* Date Of Inciednt is required"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
        
        <tr>
            <td class="auto-style10">Time of Incident <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBoxTimeofIncident" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBoxTimeofIncident" ErrorMessage="* Time of Incident is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style5"><span style="color: rgb(0, 0, 0);  orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Place of Incident</span><span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;*</span></td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBoxPlaceOfIncident" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxPlaceOfIncident" ErrorMessage="* Place of Incident is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">District<span style="color: rgb(0, 0, 0);  text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> of Incident</span><span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;*</span></td>
            <td class="auto-style29">
                <asp:DropDownList ID="DropDistrictOfIncident" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select a District </asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Barishal</asp:ListItem>
                    <asp:ListItem>Sylhet</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Mymensingh</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDistrictOfIncident" ErrorMessage="* Please select a district" InitialValue="Select a District"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Local Police Station <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style29">
                <asp:DropDownList ID="DropLocalPoliceStaion" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select a Police Station</asp:ListItem>
                    <asp:ListItem>Dhaka Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Chittagong Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Khulna Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Rajshahi Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Sylhet Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Barishal Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Rangpur Metropoliton Police</asp:ListItem>
                    <asp:ListItem>Mymensingh Police</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropLocalPoliceStaion" ErrorMessage="* Please select your nearest Police Station" InitialValue="Select a Police Station"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Details of Incident <span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">*</span></td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBoxDetailsOfIncident" CssClass="textbox" runat="server" Height="49px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxDetailsOfIncident" ErrorMessage="* Please write the details of Incdent"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Already Visited Police Station</span><span class="ewRequired" style="color: red; font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"> *</span></td>
            <td class="auto-style23">
                <asp:DropDownList ID="DropDownListYESNO" CssClass="textbox" runat="server" Width="250px">
                    <asp:ListItem>Select an option</asp:ListItem>
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownListYESNO" ErrorMessage="* Please select an option" InitialValue="Select an option"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><span style="color: rgb(0, 0, 0); font-family: &quot; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Visit Details<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" />
                <span style="color: rgb(0, 0, 0); font-family: &quot;Times font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">(Name/Rank of Police Officer<span class="Apple-converted-space">&nbsp;visited)&nbsp;</span></span></td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBoxVisitDetails" CssClass="textbox" runat="server" Height="48px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><span style="color: rgb(0, 0, 0); font-family: &quot; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Visit Date</span></td>
            <td class="auto-style23">

                <div>
    <asp:TextBox ID="TextBoxVisitDate" CssClass="textbox" runat="server"></asp:TextBox>
    <cc1:CalendarExtender ID="CalendarExtender3" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBoxVisitDate" Format="dd/MM/yyyy">
    </cc1:CalendarExtender>
    </div>

            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><span style="color: rgb(0, 0, 0); font-family: &quot; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Visit Time</span></td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBoxVisitTime" CssClass="textbox" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">
                <asp:Button ID="FirSubmit" runat="server" OnClick="FirSubmit_Click" CssClass="action-button shadow animate color" Text="Submit" />
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
        </fieldset>
    </form>
    </body>
</html>
