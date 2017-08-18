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
.style41 {color: #2D2D2D}
.style42 {
	color: #2D2D2D;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
.style43 {
	color: #2D2D2D;
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
}
.style83 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
.style85 {
	color: #FF0000;
	font-weight: bold;
	font-size: 24px;
	font-family: Rockwell;
}
.style86 {
	color: #2D2D2D;
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" /></td>
    <td height="57" colspan="2" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
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
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%"><p>&nbsp;</p>
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
          </table>          <p>&nbsp;</p>          </td>
        </tr>
		<tr>
		  <td nowrap="nowrap"><a href="home.jsp">Home Page </a></td>
	    </tr>
		<tr>
          <td nowrap="nowrap"><a href="customerreviews.jsp">Testimonials </a></td>
	    </tr>
		<tr>
          <td><a href="businfo.jsp" class="navText">Bus Info</a></td>
	    </tr>
		<tr>
          <td><a href="booking.jsp" class="navText">Booking</a></td>
	    </tr>
		<tr>
          <td><a href="locations.jsp" class="navText">Locations</a></td>
	    </tr>
		<tr>
          <td><a href="javascript:;" class="navText">Site Map</a></td>
	    </tr>
		<tr>
          <td><a href="aboutus.jsp">About Us </a></td>
	    </tr>
		<tr>
          <td><a href="contactus.jsp">Contact Us </a></td>
	    </tr>
      </table>
 	 <br />
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
    <td width="21">&nbsp; </td>
    <td colspan="2" valign="top"><p class="style41"><img src="img/mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
      &nbsp;</p>
      <table width="579" border="10">
        <tr>
          <th width="551" scope="col"><span class="style85">Web Site Terms and Conditions of Use </span></th>
        </tr>
      </table>
      <h3 class="style42"> 1. Terms </h3>
      <p class="style43"> By accessing this web site, you are agreeing to be bound by these 					web site Terms and Conditions of Use, all applicable laws and regulations, 					and agree that you are responsible for compliance with any applicable local 					laws. If you do not agree with any of these terms, you are prohibited from 					using or accessing this site. The materials contained in this web site are 					protected by applicable copyright and trade mark law. </p>
      <h3 class="style42"> 2. Use License </h3>
      <ol type="a" class="style43">
        <li> Permission is granted to temporarily download one copy of the materials 						(information or software) on Travel Today Online Bus Booking's web site for personal, 						non-commercial transitory viewing only. This is the grant of a license, 						not a transfer of title, and under this license you may not:
          <ol type="i">
            <li>modify or copy the materials;</li>
            <li>use the materials for any commercial purpose, or for any public display (commercial or non-commercial);</li>
            <li>attempt to decompile or reverse engineer any software contained on Travel Today Online Bus Booking's web site;</li>
            <li>remove any copyright or other proprietary notations from the materials; or</li>
            <li>transfer the materials to another person or &quot;mirror&quot; the materials on any other server.</li>
          </ol>
        </li>
        <li> This license shall automatically terminate if you violate any of these restrictions and may be terminated by Travel Today Online Bus Booking at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format. </li>
      </ol>
      <h3 class="style43"> 3. Disclaimer </h3>
      <ol type="a" class="style43">
        <li> The materials on Travel Today Online Bus Booking's web site are provided &quot;as is&quot;. Travel Today Online Bus Booking makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights. Further, Travel Today Online Bus Booking does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its Internet web site or otherwise relating to such materials or on any sites linked to this site. </li>
      </ol>
      <h3 class="style43"> 4. Limitations </h3>
      <p class="style86"> In no event shall Travel Today Online Bus Booking or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption,) arising out of the use or inability to use the materials on Travel Today Online Bus Booking's Internet site, even if Travel Today Online Bus Booking or a Travel Today Online Bus Booking authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you. </p>
      <h3 class="style43"> 5. Revisions and Errata </h3>
      <p class="style86"> The materials appearing on Travel Today Online Bus Booking's web site could include technical, typographical, or photographic errors. Travel Today Online Bus Booking does not warrant that any of the materials on its web site are accurate, complete, or current. Travel Today Online Bus Booking may make changes to the materials contained on its web site at any time without notice. Travel Today Online Bus Booking does not, however, make any commitment to update the materials. </p>
      <h3 class="style43"> 6. Links </h3>
      <p class="style86"> Travel Today Online Bus Booking has not reviewed all of the sites linked to its Internet web site and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by Travel Today Online Bus Booking of the site. Use of any such linked web site is at the user's own risk. </p>
      <h3 class="style43"> 7. Site Terms of Use Modifications </h3>
      <p class="style86"> Travel Today Online Bus Booking may revise these terms of use for its web site at any time without notice. By using this web site you are agreeing to be bound by the then current version of these Terms and Conditions of Use. </p>
      <h3 class="style43"> 8. Governing Law </h3>
      <p class="style86"> Any claim relating to Travel Today Online Bus Booking's web site shall be governed by the laws of the State of India without regard to its conflict of law provisions. </p>
      <p class="style86"> General Terms and Conditions applicable to Use of a Web Site. </p>
      <h2 class="style43"> Privacy Policy </h2>
      <p class="style86"> Your privacy is very important to us. Accordingly, we have developed this Policy in order for you to understand how we collect, use, communicate and disclose and make use of personal information. The following outlines our privacy policy. </p>
      <ul class="style86">
        <li> Before or at the time of collecting personal information, we will identify the purposes for which information is being collected. </li>
        <li> We will collect and use of personal information solely with the objective of fulfilling those purposes specified by us and for other compatible purposes, unless we obtain the consent of the individual concerned or as required by law. </li>
        <li> We will only retain personal information as long as necessary for the fulfillment of those purposes. </li>
        <li> We will collect personal information by lawful and fair means and, where appropriate, with the knowledge or consent of the individual concerned. </li>
        <li> Personal data should be relevant to the purposes for which it is to be used, and, to the extent necessary for those purposes, should be accurate, complete, and up-to-date. </li>
        <li> We will protect personal information by reasonable security safeguards against loss or theft, as well as unauthorized access, disclosure, copying, use or modification. </li>
        <li> We will make readily available to customers information about our policies and practices relating to the management of personal information. </li>
      </ul>
      <p class="style86"> We are committed to conducting our business in accordance with these principles in order to ensure that the confidentiality of personal information is protected and maintained. </p>
      <p class="style41"><br />
      </p>
    <td width="11">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="21">&nbsp;</td>
    <td width="158"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="546">&nbsp;</td>
    <td width="11">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style83">&copy; Copyright Protected, 2012</span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="519" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style83">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style83">About TravelToday </a></td>
        <td width="180"><a href="home.jsp" class="style83">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
