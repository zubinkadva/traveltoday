<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Travel Today Home</title>
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
<script>

function modal_businfo_12seater() {
	if (window.showModalDialog) {
 	window.showModalDialog("businfo_12seater.jsp","name","dialogWidth:720px;dialogHeight:490px;scroll:no");
	}
} 

function modal_businfo_acisuzu() {
	if (window.showModalDialog) {
 	window.showModalDialog("businfo_acisuzu.jsp","name","dialogWidth:725px;dialogHeight:520px;scroll:no");
	}
} 

function modal_businfo_acvolvo() {
	if (window.showModalDialog) {
 	window.showModalDialog("businfo_acvolvo.jsp","name","dialogWidth:700px;dialogHeight:520px;scroll:no");
	}
} 

function modal_businfo_mercedes() {
	if (window.showModalDialog) {
 	window.showModalDialog("businfo_mercedes.jsp","name","dialogWidth:800px;dialogHeight:440px;scroll:no");
	}
} 

function modal_businfo_multiaxle() {
	if (window.showModalDialog) {
 	window.showModalDialog("businfo_multiaxle.jsp","name","dialogWidth:690px;dialogHeight:510px;scroll:no");
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
.style46 {
	font-size: 18px;
	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style52 {	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.style53 {
	font-family: "Lucida Handwriting";
	font-size: 18px;
	color: #993366;
}
.style54 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="976" border="0" cellpadding="0" cellspacing="0" frame="void" rules="none">
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
	<div align="right">
  	  <span class="style39">
  	  <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	
	  </script>
     </span></div></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="223" valign="top" bgcolor="#E6F3FF"><table width="100%"   border="0" cellpadding="0" cellspacing="0" id="navigation">
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
    <td width="8">&nbsp;</td>
    <td colspan="2" valign="top"><table width="604" border="10">
      <tr>
        <th width="576" scope="col"><span class="style46">Bus Info</span></th>
      </tr>
    </table>
      <p class="style53">Gallery of  the buses we provide.  </p>
       <table width="629" border="0">
        <tr>
          <th width="56" scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
          <th width="233" scope="col"><p align="center" class="style52"><img src="img/businfo/12seater/12SeaterExterior.jpg" width="200" height="200" border="0" /></p>
          <p align="center" class="style52"><a href="#" onclick="modal_businfo_12seater()">12 Seater Tempo Traveller</a></p></th>
          <th width="60" scope="col"><span class="style52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </span>
          <div align="center" class="style52"></div></th>
          <th width="262" scope="col"><p align="center" class="style52"><img src="img/businfo/acisuzu/ACIsuzuExterior.jpg" width="200" height="200" border="0" /></p>
            <p align="center" class="style52"><a href="#" onclick="modal_businfo_acisuzu()">AC Isuzu (38 &amp; 40 Seater)</a>            </p>
                <span class="style52"></a>
                </p>
                </span>
              <p align="center" class="style52">&nbsp;</p></th>
        </tr>
        <tr>
          <th scope="row">&nbsp;</th>
          <th scope="row"><p align="center" class="style52"><img src="img/businfo/acvolvo/ACVolvoExterior.jpg" width="200" height="200" border="0" /></p>
            <p align="center" class="style52"><a href="#" onclick="modal_businfo_acvolvo()">AC Volvo (41 &amp; 45 Seater)</a></p>
            <p align="center" class="style52">            </p>
            </p></th>
          <td>&nbsp;</td>
          <td><p align="center" class="style52">&nbsp;&nbsp; <img src="img/businfo/mercedes/MercedesBenzExterior.jpg" width="200" height="200" border="0" /></p>
              <p align="center" class="style52"><a href="#" onclick="modal_businfo_mercedes()">Mercedes Benz (40 &amp; 45 Seater)</a>            </p>
              </p>
              <p align="center" class="style52">&nbsp;</p>          </td>
        </tr>
        <tr>
          <th scope="row">&nbsp;</th>
          <th scope="row"><p align="center" class="style52"><img src="img/businfo/multiaxle/MultiAxleVolvoExterior.jpg" width="200" height="200" border="0" /></p>
              <div align="center" class="style52"><a href="#" onclick="modal_businfo_multiaxle()">Multi Axle Volvo (49 Seater)</a></a>
                  </p>
              </div></th>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>      
      <p>&nbsp;</p></td>
    <td width="4">&nbsp;</td>
  </tr>
  <tr>
    <td width="223">&nbsp;</td>
    <td width="8">&nbsp;</td>
    <td width="110"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="631">&nbsp;</td>
    <td width="4">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style54">&copy; Copyright Protected, 2012 </span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="519" border="0" align="center">
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
