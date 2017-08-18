<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Site Map</title>
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
.style60 {font-family: "Times New Roman", Times, serif; font-size: 14px; }
.style61 {
	font-size: 24px;
	font-family: Rockwell;
	color: #FF0000;
}
.style62 {font-size: 18px}
.style72 {color: #0000FF; font-family: "Times New Roman", Times, serif; font-weight: bold; }
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
  	<th colspan="5" id="dateformat" height="25"> <marquee> 
  	  <span class="style39">Online Bus Booking and much more !&nbsp;&nbsp;	  </span>
  	</marquee>
  	  <span class="style39">
  	  <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	</script>
      </span></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="226" valign="top" bgcolor="#E6F3FF">
	<table width="100%"   border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%" height="12%"><p>&nbsp;</p>
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
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
    <td width="20">&nbsp;</td>
    <td colspan="2" valign="top"><table width="606" border="10">
      <tr>
        <th width="578" height="35" scope="col"><span class="style61">Site Map </span></th>
      </tr>
    </table>
      <p>&nbsp;</p>
      <table width="615" border="0">
        <tr>
          <th width="288" height="38" scope="col"><div align="center" class="style72"><span class="style62"><a href="home.jsp">TravelToday.com Home Page </a></span></div></th>
          <th width="317" scope="col"><div align="center" class="style72"><span class="style62"><a href="register.jsp">Registration</a></span></div></th>
        </tr>
        <tr>
          <th height="40" scope="row"><div align="center" class="style72"><span class="style62"><a href="customerreviews.jsp">Customer Reviews </a></span></div></th>
          <td><div align="center" class="style72"><span class="style62"><a href="forgot.jsp">Forgot Password </a></span></div></td>
        </tr>
        <tr>
          <th height="43" scope="row"><div align="center" class="style72"><span class="style62"><a href="businfo.jsp">Bus Gallery </a></span></div></th>
          <td><div align="center" class="style72"><span class="style62"><a href="terms.jsp">Terms And Conditiions </a></span></div></td>
        </tr>
        <tr>
          <th height="49" scope="row"><div align="center" class="style72"><span class="style62"><a href="booking.jsp">Seat Reservation </a></span></div></th>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <th height="45" scope="row"><div align="center" class="style72"><span class="style62"><a href="locations.jsp">Accomodations</a></span></div></th>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <th height="58" scope="row"><div align="center" class="style72"><span class="style62"><a href="aboutus.jsp">About TravelToday </a></span></div></th>
          <td><div align="center"></div></td>
        </tr>
        <tr>
          <th scope="row"><div align="center" class="style72"><span class="style62"><a href="contactus.jsp">Contact TravelToday </a></span></div></th>
          <td><div align="center"></div></td>
        </tr>
      </table>      
    <p></p></td>
    <td width="110">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="20">&nbsp;</td>
    <td width="160">&nbsp;</td>
    <td width="446">&nbsp;</td>
    <td width="110">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style60">&copy; Copyright Protected, 2012</span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="520" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style60">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style60">About TravelToday </a></td>
        <td width="181"><a href="home.jsp" class="style60">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
