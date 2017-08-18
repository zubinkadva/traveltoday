<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Locations</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<style type="text/css">
<!--
.style18 {	font-family: harrington;
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
	color: #2AFF55;
	font-size: 18px;
}
.style39 {	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style36 {
	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
.style40 {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
	color: #333333;
}
.style46 {font-family: Georgia, "Times New Roman", Times, serif; font-size: 14px; color: #0000CC; }
.style47 {color: #0000FF}
.style48 {
	font-size: 18px;
	font-family: "Perpetua Titling MT";
	font-weight: bold;
	color: #663333;
}
.style50 {font-size: 18px}
.style51 {font-family: "Times New Roman", Times, serif; font-size: 18px; color: #0000CC; }
.style52 {font-family: "Times New Roman", Times, serif}
.style54 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" /></td>
    <td width="58%" height="58" colspan="3" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" colspan="3" align="center" valign="top" id="tagline"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="7" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="7" id="dateformat" height="25"> 
	<marquee> 
  	  <span class="style39">Online Bus Booking and much more !&nbsp;&nbsp;	  </span>
  	</marquee>
      	<div align="right">
  	  <span class="style39">
  	  <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	
	  </script>
     </span></div></th>
</tr></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr bgcolor="#CCFF99"><th colspan="5" height="2"></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="226" valign="top" bgcolor="#E6F3FF">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%" height="19%"><p>&nbsp;</p>
            <table width="223" border="0">
              <tr>
                <th width="217" scope="col"> <%
	  String username =(String) session.getAttribute("UserName");
	  String type=(String)session.getAttribute("IsAdmin");
	  if(username!=null)  {
      out.println("Welcome "+username); %>
                  <a href="user_details.jsp">View/Update Details</a></th>
              </tr>
              <tr>
                <th scope="row"><div align="left"><a href="logout.jsp"><img src="img/logout+button.jpg" width="135" height="33" border="0" /></a>
                        <%
	 }
	 %>
                </div></th>
              </tr>
            </table></td>
        </tr>
		<tr>
		  <td height="36" nowrap="nowrap"><a href="home.jsp">Home Page </a></td>
	    </tr>
		<tr>
          <td height="36" nowrap="nowrap"><a href="customerreviews.jsp">Testimonials </a></td>
	    </tr>
		<tr>
          <td height="16%"><a href="businfo.jsp" class="navText">Bus Info </a></td>
	    </tr>
		<tr>
          <td height="16%"><a href="booking.jsp" class="navText">Booking</a></td>
	    </tr>
		<tr>
          <td height="16%"><a href="javascript:;" class="navText">Locations</a></td>
	    </tr>
		<tr>
          <td height="16%"><a href="sitemap.jsp" class="navText">Site Map</a></td>
	    </tr>
		<tr>
          <td height="36"><a href="aboutus.jsp">About Us </a></td>
	    </tr>
		<tr>
          <td height="36"><a href="contactus.jsp">Contact Us </a></td>
	    </tr>
      </table>
 	 <br />
  	&nbsp;&nbsp;<br /></td>
    <td width="20">&nbsp; </td>
    <td colspan="2" valign="top"><table width="616" border="10">
        <tr>
          <th width="588" scope="col"><p><span class="style36">Locations </span></p></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <form name="form1" class="style40 style48">
        Please Select a Location Below
      </form>

      <a href="#"></a>
      <table width="200" border="0">
        <tr>
          <th width="310" scope="col"><p class="style51"><img src="img/Amdavad_Aerial.jpg" width="310" height="200" /></p>
          <p class="style51"><a href="locations_ahm.jsp" class="style47">Ahmedabad</a></p></th>
          <th width="310" scope="col"><p class="style51"><img src="img/Bangalore_Palace.jpg" width="310" height="200" /></p>
          <p class="style51"><a href="locations_ban.jsp" class="style47">Bangalore</a></p></th>
        </tr>
        <tr>
          <th scope="row"><p class="style51"><img src="img/800px-Goa_(44).jpg" width="310" height="200" /></p>
          <p align="center" class="style51"><a href="locations_goa.jsp" class="style47">Goa</a></p></th>
          <td><p class="style51"><img src="img/798px-Pashan_skyline.jpg" width="310" height="200" /></p>
            <p align="center" class="style51"><a href="locations_pune.jsp" class="style47">Pune</a></p></td>
        </tr>
        <tr>
          <th scope="row"><p class="style51"><img src="img/800px-Hajiali.jpg" width="310" height="200" /></p>
          <p class="style51"><a href="locations_mum.jsp" class="style47">Mumbai</a></p></th>
          <td><p class="style46"><span class="style50"><span class="style52"></span></span></p>          </td>
        </tr>
      </table>
    <td width="85">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="20">&nbsp;</td>
    <td width="155"><p>&nbsp;</p>    </td>
    <td width="476">&nbsp;</td>
    <td width="85">&nbsp;</td>
  </tr>
  <tr>
    <td><span class="style54">&copy; Copyright Protected, 2012</span></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="519" border="0">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style54">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style54">About TravelToday </a></td>
        <td width="180"><a href="home.jsp" class="style54">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
