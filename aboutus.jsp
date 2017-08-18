<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>About Us</title>
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
	color: #2AFF55;
	font-size: 18px;
	font-family: magneto;
}
.style39 {	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style36 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
	color: #993366;
}
.style37 {font-family: harrington; font-size: 36px; }
.style38 {font-size: 36px}
.style41 {
	font-size: 24px;
	font-family: harrington;
	font-weight: bold;
	font-style: italic;
}
.style53 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
.style54 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" /></td>
    <td height="59" colspan="2" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" align="center" valign="top" id="tagline"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="5" id="dateformat" height="26">
	
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
    <td width="226" valign="top" bgcolor="#E6F3FF"><table width="100%"   border="0" cellpadding="0" cellspacing="0" id="navigation">
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
      <tr>
        <td height="10%" nowrap="nowrap"><a href="home.jsp" class="style37">Home Page </a></td>
      </tr>
      <tr> </tr>
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
    </table></td>
    <td width="20">&nbsp; </td>
    <td colspan="2" valign="top"><table width="605" height="50" border="10">
      <tr>
        <th width="577" scope="col"><span class="style41">About Us </span></th>
      </tr>
    </table>
    <p>&nbsp;</p>
      <p><img src="img/pix.jpg" alt="Holiday" width="275" height="183" /> </p>
      <table width="604" border="0">
        <tr>
          <th width="598" scope="col"><span class="style36">TravelToday's Mission : We Provide the best Bus services ever and that too at reasonable prices to meet everyones budget.</span></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="377" border="0">
        <tr>
          <th width="371" scope="col"><span class="style54"><a href="customerreviews.jsp">Visit our Customer Reviews</a><a href="customerreviews.jsp"></a></span></th>
        </tr>
      </table>
      <p>&nbsp;</p>
    <td width="110">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="20">&nbsp;</td>
    <td width="162"><p>&nbsp;</p>    </td>
    <td width="444">&nbsp;</td>
    <td width="110">&nbsp;</td>
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
