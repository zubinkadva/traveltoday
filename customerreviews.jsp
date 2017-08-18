<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Customer Testimonials</title>
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
.style8 {
	font-size: 18px;
	color: #2AFF55;
	font-family: magneto;
}
.style39 {	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style41 {
	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style43 {
	font-size: 16px;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	color: #0000CC;
}
.style44 {
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	color: #333300;
}
.style51 {font-family: Rockwell; font-size: 16px; color: #990066; }
.style53 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
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
        <p align="center" class="bodyText style13 style35 style8">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="5" id="dateformat" height="25"> <marquee>
  	  <span class="style39">Online Bus Booking and much more !&nbsp;&nbsp; </span>
</marquee>
	<div align="right">
  	  <span class="style39">
  	  <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	
	  </script>
     </span></div>
	 <script>
	 	function modal_best_exp() {
	if (window.showModalDialog) {
 	window.showModalDialog("best_exp.jsp","name","dialogWidth:930px;dialogHeight:370px");
	}
} 

	function modal_great_cust() {
	if (window.showModalDialog) {
 	window.showModalDialog("great_cust.jsp","name","dialogWidth:930px;dialogHeight:340px");
	}
} 

	function modal_raj_and_reena() {
	if (window.showModalDialog) {
 	window.showModalDialog("raj_and_reena.jsp","name","dialogWidth:930px;dialogHeight:350px");
	}
} 

	function modal_this_company() {
	if (window.showModalDialog) {
 	window.showModalDialog("this_company.jsp","name","dialogWidth:930px;dialogHeight:370px");
	}
} 

	function modal_traveltoday_bus() {
	if (window.showModalDialog) {
 	window.showModalDialog("traveltoday_bus.jsp","name","dialogWidth:930px;dialogHeight:340px");
	}
} 
	 </script></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="227" height="999" valign="top" bgcolor="#E6F3FF">
	<table width="227"  border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="227"><p>&nbsp;</p>
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
		  <td nowrap="nowrap"><a href="home.jsp">Home Page </a></td>
	    </tr>
		<tr>
          <td nowrap="nowrap"><a href="customerreviews.jsp">Testimonials </a></td>
	    </tr>
		<tr>
          <td><a href="businfo.jsp" class="navText">Bus Info </a></td>
	    </tr>
		<tr>
          <td><a href="booking.jsp" class="navText">Booking</a></td>
	    </tr>
		<tr>
          <td><a href="locations.jsp" class="navText">Locations</a></td>
	    </tr>
		<tr>
          <td><a href="sitemap.jsp" class="navText">Site Map</a></td>
	    </tr>
		<tr>
          <td><a href="aboutus.jsp">About Us </a></td>
	    </tr>
		<tr>
          <td><a href="contactus.jsp">Contact Us </a></td>
	    </tr>
      </table>
 	 <br /></td>
    <td width="14">&nbsp; </td>
    <td colspan="2" valign="top"><table width="610" border="10">
        <tr>
          <th width="582" scope="col"><span class="style41">Customer Testimonials </span></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="608" border="0">
        <tr>
          <th width="602" scope="col"><div align="justify"><span class="style43">We received a lot of feedback from our customers about their experience during their                                travel in our partner buses. We deiced to share this feedback with our other fellow                                customers so that every one can benefit from each other&rsquo;s experience. This way we                                are now able to build excellent knowledge about each bus service. </span></div></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="608" border="0">
        <tr>
          <td width="284" height="257"><p align="center"><img src="img/010.jpg" alt="Best bus Experience Ever" width="197" height="126" /></p>
              <p align="center"><span class="style51">Best bus experience ever!... </span></p>
              <p align="center"><span class="style51">-<strong> Purvi</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"><img src="img/see_more_button.jpg" alt="" width="68" height="21" border="0" onclick="javascript:modal_best_exp()"/></a></p>
          <p align="center"></p></td>
          <td width="314"><p align="center"><img src="img/DSCN4405.jpg" alt="Great Customer Service" width="197" height="126" /></p>
            <p align="center"><span class="style51">Great customer service.... </span></p>
            <p align="center"><span class="style51">- <strong>Armando &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span><a href="#"><img src="img/see_more_button.jpg" width="68" height="21" border="0" onclick="javascript:modal_great_cust()" /></a></p>
          <p align="center">&nbsp;</p></td>
        </tr>
        <tr>
          <td><p align="center" class="style51"><img src="img/happy-big-bus-customers.jpg" alt="Raj and Reena did a fantastic job" width="197" height="126" /></p>
          <p align="center" class="style51">Raj and Reena did a fantastic job...</p>
          <p align="center" class="style51"><strong> - Joe</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><img src="img/see_more_button.jpg" width="68" height="21" border="0" onclick="javascript:modal_raj_and_reena()" /></a></p>
          <p align="center" class="style51">&nbsp;</p></td>
          <td><p align="center"><img src="img/img0004.jpg" alt="" width="197" height="126" /></p>
          <p align="center"><span class="style51">This company made my 21st...</span></p>
          <p align="center"><span class="style51"> -<strong> Patrick</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"><img src="img/see_more_button.jpg" width="68" height="21" border="0" onclick="javascript:modal_this_company()"  /></a></p>
          <p align="center">&nbsp;</p></td>
        </tr>
        <tr>
          <td><p align="center" class="style51"><img src="img/Kristin-Anderson-wine-tour.jpg" alt="TravelToday Bus was the best bus" width="197" height="126" /></p>
          <p align="center" class="style51">TravelToday Bus was the best bus...</p>
          <p align="center" class="style51"><strong> - Jorge</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"><img src="img/see_more_button.jpg" width="68" height="21" border="0" onclick="javascript:modal_traveltoday_bus()"   /></a></p>
          <p align="center" class="style51">&nbsp;</p></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p class="style51"><span class="style44"><a href="mailto:feedback@traveltoday.com">Click Here</a> to submit your own feedback. You can also send us your picture as an attachment. It will then appear on this very page. </span></p>
    <td width="111">&nbsp;</td>
  </tr>
  <tr>
    <td width="227">&nbsp;</td>
    <td width="14">&nbsp;</td>
    <td width="171"><p>&nbsp;</p>    </td>
    <td width="439">&nbsp;</td>
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
