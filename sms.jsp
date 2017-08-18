<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SMS Ticket</title>
<style type="text/css">
<!--
.style18 {font-family: harrington;
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
.style35 {	color: #2AFF55;
	font-size: 18px;
	font-family: magneto;
}
.style36 {font-size: 18px}
body {
	background-color: #999999;
	background-image: url(img/darkaurora.png);
}
.style41 {font-size: 18px; color: #CC0000; }
.style42 {color: #CC0000}
-->
</style>
</head>

<%String pid=(String)session.getAttribute("ThePid");%>
<%!String ph2;%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select pass_phone2 from passenger where pid='"+pid+"'");
while(rs.next()){
ph2=rs.getString(1);
}
%>


<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" /></td>
    <td height="59" colspan="2" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" align="center" valign="top" id="tagline"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="1293" border="0" background="img/IMG28.JPG">
  <tr>
    <th colspan="2" scope="col"><span class="style41">You have requested for another SMS notification</span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style42"></span></th>
  </tr>
  <tr>
    <th width="434" scope="row"><div align="right" class="style42"><span class="style36">Found Number </span></div></th>
    <th width="849" scope="row"><div align="left" class="style42"><span class="style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=ph2%></span></div>
    <div align="center" class="style42"></div></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style42"></span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style41">An SMS will be Sent To The Above Number</span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style42"></span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><div align="left" class="style41"><a href="javascript:window.close()">Close Window</a></div></th>
  </tr>
</table>
<p>&nbsp;</p>
<p><a href="javascript:window.close()"></a>   </p>
</body>
</html>
