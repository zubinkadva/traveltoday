<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Travel Today Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<%
try{
String logged=(String)session.getAttribute("UserName");
	if(logged!=null) {%>
	<jsp:forward page="home_logged.jsp">
    <jsp:param name="" value=""/>
    </jsp:forward>
	<%}
	else {
	out.print("");
	}
	}catch(Exception e){
	out.println(e);
	}%>
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<script>
function ghj() {
var a=document.LoginForm.uname.value;
var b=document.LoginForm.upass.value;

	if(a=="")
	alert("Please Enter your User Name");
	else if(b=="")
	alert("Please Enter Your Password");
	else {
	document.LoginForm.action="login_successfull.jsp";
	}
}
</script>
<style type="text/css">
<!--
.style13 {font-size: 16px}
.style18 {
	font-family: harrington;
	font-weight: bold;
	font-style: italic;
	font-size: 36px;
	color: #003366;
}
.style19 {color: #FFCCFF}
.style20 {color: #FF3F55}
.style21 {color: #D400AA}
.style22 {color: #7F3F00}
.style23 {color: #D45F55}
.style24 {color: #D49FAA}
.style25 {color: #D49FFF}
.style26 {color: #55FF55}
.style28 {color: #FF7F55}
.style29 {color: #D43FAA}
.style30 {color: #6826B7}
.style31 {color: #99FFFF}
.style32 {color: #7F9FFF}
.style33 {color: #FF0055}
.style34 {color: #009F55}
.style35 {
	font-family: magneto;
	font-size: 18px;
	color: #2AFF55;
}
.style36 {font-family: harrington}
.style37 {font-family: harrington; font-size: 36px; }
.style38 {font-size: 36px}
.style39 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style40 {
	font-size: 16px;
	color: #9933FF;
	font-family: "Times New Roman", Times, serif;
}
.style43 {
	font-size: 24px;
	font-family: "Lucida Handwriting";
}
.style44 {color: #FF0033}
.style53 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
.style56 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
.style57 {font-size: 18px; font-family: "Times New Roman", Times, serif; }
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td height="58" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
      <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="5" id="dateformat" height="25">   
		  <marquee>
<span class="style39">Online Bus Booking and much more !&nbsp;&nbsp; </span>
  	  </marquee>
   
   		  <div align="right">
		  	<span class="style39">
	    		<script language="JavaScript" type="text/javascript">
      			document.write(TODAY);	
				</script>
	 	  </span>	      </div></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="226" valign="top" bgcolor="#E6F3FF">
	<table width="100%"   border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%" height="12%"><p>&nbsp;</p>
          <p>&nbsp;</p></td>
        </tr>
	      <td height="10%" nowrap="nowrap"><a href="home.jsp" class="style37">Home Page </a></td>
        </tr>
		<tr>
		<tr>
          <td height="10%" nowrap="nowrap"><a href="customerreviews.jsp" class="style37">Testimonials </a></td>
        </tr>
        <tr>
          <td height="10%"><a href="businfo.jsp" class="navText style36 style38">Bus Info </a></td>
        </tr>
        <tr>
          <td height="10%"><a href="booking.jsp" class="navText style36 style38">Booking</a></td>
        </tr>
        <tr>
          <td height="10%"><a href="locations.jsp" class="navText style36 style38">Locations</a></td>
        </tr>
        <tr>
          <td height="10%"><a href="sitemap.jsp" class="navText style36 style38">Site Map</a></td>
        </tr>
		 <tr>
          <td height="10%"><a href="aboutus.jsp" class="style37">About Us </a></td>
        </tr>
        <tr>
          <td height="10%"><a href="contactus.jsp" class="style37">Contact Us </a></td>
        </tr>
      </table>
 	 <br />
  	&nbsp;&nbsp;<br /> 	</td>
    <td width="18">&nbsp;</td>
    <td colspan="2" valign="top"><div align="justify"><img src="img/mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
  &nbsp;
      &nbsp;
      <table border="0" cellspacing="0" cellpadding="0" width="582">
        <tr>
          <td width="582" class="pageName"><img src="img/BackgroundTop.jpg" width="589" height="103" /></td>
	      </tr>
      </table>
       
    </div>
      <p> <span class="style40">Welcome	to the world's first online bus booking travel portal for booking tickets.</span></p>
	  <p class="style40">On the Left, you will find access to most useful links along with history and our contact information.</p>
	  <p class="style40">We, at TravelToday.com strive to provide you the best offers and services to our valued customers.</p>
	  <p class="style40">Happy Booking ! !</p>
	  <form name="LoginForm" method="post" action="javascript:void(0)">
	  <table width="100%"  border="0">
        <tr>
          <td width="38%" height="28"><div align="center" class="style56">User Name </div></td>
          <td width="62%"><div align="center" class="style57">
            <input type = "text" name = "uname" />
            &nbsp;</div></td>
        </tr>
        <tr>
          <td height="28"><div align="center" class="style57"><strong>Password</strong></div></td>
          <td><div align="center" class="style57">
            <input type = "password" name = "upass" />
            &nbsp;</div></td>
        </tr>
        <tr>
          <td height="26"><div align="center" class="style57"><strong>
            <input name="radio" type="radio" checked="checked" value="member">
&nbsp;Site Member </strong></div></td>
          <td><div align="center" class="style57"><strong>
            <input type="radio" name="radio" value="admin">
&nbsp;Administrator</strong></div></td>
        </tr>
        <tr>
          <td height="30"><div align="center" class="style57"><strong>&nbsp;<a href="forgot.jsp"><img src="img/ForgotPasswordIcon.gif" alt="" width="222" height="48" border="0"/></a></strong></div></td>
          <td>
            
              <div align="center" class="style57">
                <input type="image" name="imageField" src="img/login.png" onclick="ghj()" />
              </div>            </td>
        </tr>
      </table>
	  </form>  
	  <div align="center"><span class="style43"> <span class="style44">New User?</span> &nbsp;&nbsp;&nbsp;&nbsp;</span><a href="register.jsp"><img src="img/SignUp-Button.png" alt="Sign Up" width="118" height="35" border="0"  /></a></div></td>
    <td width="111">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="18">&nbsp;</td>
    <td width="163"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="444">&nbsp;</td>
    <td width="111">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style53">&copy; Copyright Protected, 2012 </span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="520" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style53">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style53">About TravelToday </a></td>
        <td width="181"><a href="home.jsp" class="style53">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
