<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs"  Inherits="Welcome"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FIR System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">



<link rel="stylesheet" type="text/css" href="style.css"/>
    <style type="text/css">
       
        
       
         marquee span { 
    margin-right: 100%; 
    } 
    marquee p { 
    white-space:nowrap;
    margin-right: 1000px; 
    } 
        

        

        .auto-style1 {
            width: 100%;
            background-color: #00CCFF;
        }
        

        

        .auto-style2 {
           
            width:500px;
        }
        

        

    </style>

    </head>
<body style="background-color:lightgray; font-family:Calibri;">
    <form id="form1" runat="server">
<div style="background-color:lightgray;height:100px;">
<img align="left"; src="BDpolice.jpg" alt="Bangladesh Police" style="width:110px;height:110px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="SignUpButton" runat="server" OnClick="SignUpButton_Click">Sign Up</asp:LinkButton>
    |<asp:LinkButton ID="LogOutButton" runat="server" OnClick="LogOutButton_Click1">Log Out</asp:LinkButton>
<h1 >FIR System</h1>
</div>

<div style="background-color:rgb(11, 49, 233);">
	<div class="dropdown">
  <button class="dropbtn">Home</button>
  </div>
  <div class="dropdown">
  <button class="dropbtn">About Police</button>
  <div class="dropdown-content">
    
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn">Local Police</button>
  <div class="dropdown-content">
    <a href="LocalPoliceTeam.aspx">Dhaka Metropoliton Police</a>
    <a href="LocalPoliceTeam.aspx">Chittagong Metropoliton Police</a>
    <a href="LocalPoliceTeam.aspx">Khulna Metropoliton Police</a>
	<a href="LocalPoliceTeam.aspx">Rajshahi Metropoliton Police</a>
    <a href="LocalPoliceTeam.aspx">Barisal Metropoliton Police</a>
    <a href="LocalPoliceTeam.aspx">Sylhet Metropoliton Police</a>
    

  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn">FIR</button>
  <div class="dropdown-content">
    <a href="FirForm.aspx">FIR Form</a>
    <a href="#">What is FIR</a>
    <a href="#">Why FIR</a>
      <a href="#">Sample FIR</a>
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn">Crimes</button>
  <div class="dropdown-content">
    
	
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn">Notice Board</button>
  </div>
  <div class="dropdown">
  <button class="dropbtn">Your Safety</button>
  <div class="dropdown-content">
    
    
	
  </div>
  </div>
  <div class="dropdown">
  <button class="dropbtn">Contact Us</button>
  </div>
</div>
        <marquee style="background-color:rgb(0, 255, 0); color:rgb(255, 0, 0)">Say no to terrorism.<span> </span>Stay with us giving valid information.<span> </span>Fear no Evil,just take one step</marquee> 
<div class="fixed-bg">
<div class="row">
<div class="col-3 menu">

<asp:Button ID="Location"  runat="server" Height="40px" Text="Your Current Location" Width="270px" BackColor="#0099ff" OnClick="Button1_Click" />
    <br />
    <asp:Button ID="LocalPolice" runat="server" Height="40px" Text="Local Police Teams" Width="270px" BackColor="#0099ff" OnClick="LocalPolice_Click" />
    <br />
    <asp:Button ID="Button3" runat="server" Height="40px" Text="Victims of Crime" Width="270px" BackColor="#0099ff"/>
    <br />
    <asp:Button ID="Button4" runat="server" Height="40px" Text="Feedback/Other Enquiries" Width="270px" BackColor="#0099ff" />
    
</div>
</div>
</div>
<div style="height:1200px;background-color:lightgray;">
<div class="btn-group" style="margin-left:160px;">
<button style="font-family:consolus;">Emergency Number<p><b>999</b></p><p style="font-size:65%;">For life-threatening situation</p></button>
<button style="font-family:consolus;">Women Helpline<p><b>10921</b></p><p style="font-size:65%;">When women face trouble</p></button>
<button style="font-family:consolus;">Police Commissioner<p><b>8316248</b></p><p style="font-size:65%;">For any complain against our service</p></button>



   
     
     </div>
   



    <div style="margin-top:50px;">


<div class="slideshow-container" style=" width: 1046px;">

<div class="mySlides">
  
  <img src="slide1.jpg" style="width:1000px; height:300px;">
  
</div>

<div class="mySlides">
  
  <img src="slide4.jpg" style="width:1000px; height:300px;">
  
</div>

<div class="mySlides">
  
  <img src="slide3.jpg" style="width:1000px; height:300px;">
  
</div>

</div>
<br>

        
        

<div style="text-align:center; width: 672px; margin-left:300px;">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

    <div style="margin-top:90px; width: 617px;">
    <div style="float:left;" >
       
         <div class="container" style="width:300px">
  
  <button type="button" class="btn btn-info" style="width:250px;" data-toggle="collapse" data-target="#demo1">Missing Children</button>
  <div id="demo1" class="collapse">
      <p>If you see anyone of them,please contact with us urgently</p>
    <div style="display:inline-block;">
        <img src="child1.jpg" height="100px" width="100px" />
        
        <img src="child2.jpg" height="100px" width="100px" style="margin-left:10px;" />
        
    </div>
      <figcaption style="width:300px;"><pre style="background-color:lightgray;">Hosne Ara     Emon Hasan</pre></figcaption>
  </div>
</div>



        <div class="container" style="width:300px">
  
  <button type="button" class="btn btn-info" style="width:250px;" data-toggle="collapse" data-target="#demo">Missing Persons</button>
  <div id="demo" class="collapse">
      <p>If you see anyone of them,please contact with us urgently</p>
    <div>
        <img src="missing1.jpg" height="100px" width="100px" />
        
        <img src="missing2.jpg" height="100px" width="100px" style="margin-left:10px;" />
        
    </div>
      <figcaption style="width:300px;"><pre style="background-color:lightgray;">Helal Uddin    Abul Kashem</pre></figcaption>
  </div>
</div>

<div class="container" style="width:300px">
  
  <button type="button" class="btn btn-info" style="width:250px;" data-toggle="collapse" data-target="#demo2">Most Wanted</button>
  <div id="demo2" class="collapse">
    <p>If you see anyone of them,please contact with us urgently</p>
    <div style="display:inline-block;">
        <img src="wanted1.jpg" height="100px" width="100px" />
        
        <img src="wanted2.jpg" height="100px" width="100px" style="margin-left:5px;"/>
        
    </div>
      <figcaption style="width:300px;"><pre style="background-color:lightgray;">Shujon Halder  Shirazul Kabir</pre></figcaption>
  </div>
</div>
        </div>

        <div style="width: 209px; height: 223px; margin-left: 410px; margin-bottom: 0px" >
            
            <table class="auto-style1">
                <tr>
                    <td>
                        <img src="speech.jpg" width="500px" height="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <p>
                            I would like to extend my special thanks and heartiest congratulations to the citizens of Chittagong city.
Chittagong Metropolitan Police has stated its digital journey. CMP has already launched Mobile Apps, Installment of surveillance camera and Vehicle theft and recovery database (VTRD) software. CMP has its own Facebook page naming https://www.facebook. com/cmp.ctg . Now CMP launches its own web page naming www.cmp.gov.bd
Our aim is to make the city safe for all and our mission is to work for better and safer Chittagong. Our commitment is to ensure protection of life and property and to keep the peace and tranquility in the city.

A core funtion of CMP is to take all the possible steps to prevent crime, to identify the criminals responsible for crime and to bring them under the process of law.
It is our dream to make the city free from all kinds of crime, but it is near to imposible. We are trying our best to do this job. We have some restriction and limitations in manpower, vihicle, equipments and logistics. Despite of this limitations our promise is to pursue all the criminals to bring them to book under justice.
I believe Chittagong Metropolitan Police (CMP) web page will open up for a new avenue for us to reach our goal. I wish this web page a grand success.


Md. Iqbal Bahar BPM, PPM
Police Commissioner
Chittagong Metropolitan Police


                        </p>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>

    </div>

        
            <div style="width:300px; float:right; background-color:rgb(154, 216, 208); text-decoration:none; height: 528px; margin-top: 0px; margin-left: 0px;">
        
        
        <span style="margin-left:828px;width:50px;"><center>Latest news</center></span>
        
        <marquee align="center" behavior="scroll" direction="up" height="450px" onmouseover="this.stop();" onmouseout="this.start();" style="margin-left: 16px" >
            <div style="margin-top:50px"><center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/govt-publishes-gazette-on-highest-qawmi-madrasa-degree-recognition"> Govt publishes gazette on highest Qawmi madrasa degree recognition</a></center>
            </div>
            <div style="margin-top:50px">
                <center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/one-killed-in-cox-s-bazar-shootout-between-border-guards-and-suspected-drug-smugglers">Woman killed in Cox's Bazar shootout between border guards and suspected drug smugglers</a></center>
            </div>
            <div style="margin-top:50px">
                <center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/home-minister-khan-sees-no-security-threat-over-bangla-new-year-celebrations">Home Minister Khan sees no security threat over Bangla New Year celebrations</a></center>
            </div>
            <div style="margin-top:50px">
                <center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/bangladesh-russia-agree-to-pursue-shared-goals-as-foreign-ministers-meet-in-moscow">Bangladesh, Russia agree to pursue 'shared goals' as foreign ministers meet in Moscow</a></center>
            </div>
            <div style="margin-top:50px">
                <center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/franceencouragesbangladeshto-document-genocide-for-un-recognition">France encourages Bangladesh to document genocide for UN recognition</a></center>
            </div>
            <div style="margin-top:50px">
                <center><a style="text-decoration:none; color:black; font-size:small" href="http://bdnews24.com/bangladesh/2017/04/13/eu-calls-on-bangladesh-to-abolish-death-sentence">EU calls on Bangladesh to abolish death sentence</a></center>
            </div></marquee>
       
</div>
    </div>
        
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2500);
    }
</script>
   
        </form>   

</body>
</html>

