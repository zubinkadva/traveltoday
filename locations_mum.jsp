<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Locations - Mumbai</title>
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
.style45 {	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style46 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-style: italic;
	font-size: 18px;
}
.style54 {font-size: 14px; color: #003300; font-family: Rockwell; font-weight: bold; }
.style59 {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
}
.style60 {font-weight: bold; font-size: 18px; font-family: "Times New Roman", Times, serif;}
.style62 {font-family: "Times New Roman", Times, serif; font-size: 14px; }
.style63 {color: #FF0000}
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" /></td>
    <td width="58%" height="57" colspan="3" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
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
     </span></div>
	 <script>
	  function Display(sel) {
	  var value = sel.options[sel.selectedIndex].value;  
	  }
	  
	  function modal_mum_orchid() {
	if (window.showModalDialog) {
 	window.showModalDialog("mum_orchid.jsp","name","dialogWidth:850px;dialogHeight:450px");
	}
} 

function modal_mum_pen() {
	if (window.showModalDialog) {
 	window.showModalDialog("mum_pen.jsp","name","dialogWidth:850px;dialogHeight:450px");
	}
} 
	  </script>
      </span></th>
</tr></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr bgcolor="#CCFF99"><th colspan="5" height="2"><script language="JavaScript" type="text/javascript"><marquee></marquee>document.write(TODAY);	</script></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="225" valign="top" bgcolor="#E6F3FF">
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
          <td height="16%"><a href="locations.jsp" class="navText">Locations</a></td>
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
    <td width="21">&nbsp; </td>
    <td colspan="2" valign="top"><table width="603" border="10">
      <tr>
        <th width="575" scope="col"><span class="style45">Locations </span></th>
      </tr>
    </table>
      <table width="604" border="5">
        <tr>
          <th width="586" scope="col"><span class="style46">Mumbai</span></th>
        </tr>
      </table>
      <p></p>
      <form name="form1">
        <table width="488" border="0">
           <tr>
             <th width="70" scope="row"><img title="Seven Hotel, Bangalore" border="0" src="img/mum/the-orchid-mumbai.jpg" width="70" height="70" /></th>
             <th width="211" scope="col"><p align="center" class="style54">The Orchid, Mumbai</p>
             <p align="center" class="style54"><img src="img/star-new.gif" width="11" height="11" /> <img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /></p></th>
             <th width="193" scope="col"><p align="center" class="style54">From<br />
               Rs.7,997 per night </p>
                 <p align="center" class="style54"><a href="#"><img src="img/know-more.gif" width="81" height="25" border="0"  onclick="javascript:modal_mum_orchid()"/></a></p></th>
           </tr>
           <tr>
             <th scope="row"><img title="9Marks Inn, Bangalore" border="0" src="img/mum/peninsula-grand-mumbai.jpg" width="70" height="70" /></th>
             <td><p align="center" class="style54">Peninsula Grand, Mumbai</p>
             <p align="center" class="style54"><img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /><img src="img/star-new.gif" width="11" height="11" /></p></td>
             <td><p align="center" class="style54">From<br />
               Rs.4,500 per night </p>
                 <p align="center" class="style54"><a href="#"><img src="img/know-more.gif" width="81" height="25" border="0" onclick="javascript:modal_mum_pen()" /></a></p></td>
           </tr>
        </table>
         <p>&nbsp;</p>
         <p class="style60 style63">Other Locations </p>
         <p class="style59"><a href="locations_ahm.jsp">Ahmedabad</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="locations_ban.jsp">Bangalore</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="locations_goa.jsp">Goa</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="locations_pune.jsp">Pune </a></p>
      </form>
    <td width="112">&nbsp;</td>
  </tr>
  <tr>
    <td width="225">&nbsp;</td>
    <td width="21">&nbsp;</td>
    <td width="147"><p>&nbsp;</p>    </td>
    <td width="457">&nbsp;</td>
    <td width="112">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style62">&copy; Copyright Protected, 2012</span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="519" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style62">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style62">About TravelToday </a></td>
        <td width="180"><a href="home.jsp" class="style62">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
