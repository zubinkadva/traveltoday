<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cancellation</title>

<%String ppid=(String) session.getAttribute("ThePid");%>
<%String name=request.getParameter("name");
String count=request.getParameter("count");%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
PreparedStatement ps = con.prepareStatement("update passenger set booked_seats='' where pid='"+ppid+"'");
ps.executeUpdate();
ps=con.prepareStatement("update bus_master set number_booked_seats=number_booked_seats-"+count+",booked_seats='"+name+"' where bid=(select bid from passenger where pid="+ppid+")");
ps.executeUpdate();
ps=con.prepareStatement("update bus_master set available_seats=available_seats+"+count+" where bid=(select bid from passenger where pid="+ppid+")");
ps.executeUpdate();
%>


<style type="text/css">
<!--
body {
	background-color: #FFFFCC;
	background-image: url(img/1156721989_20.jpg);
}
.style13 {font-size: 16px}
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
.style35 {font-family: magneto;
	font-size: 18px;
	color: #2AFF55;
}
.style36 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #CCFF00;
}
.style40 {color: #00FF00}
-->
</style></head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td height="58" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="972" border="0" background="img/256HelmsBedDale_HD720.jpg">
  <tr>
    <th colspan="2" scope="col"><span class="style36">The Ticket Has Been Cancelled </span></th>
  </tr>
  <tr>
    <th width="466" scope="row">&nbsp;</th>
    <td width="496">&nbsp;</td>
  </tr>
  <tr>
    <th colspan="2" scope="row"><a href="javascript:window.close()" class="style40"><img src="img/close-window.jpg" width="185" height="45" border="0" /></a> </th>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
