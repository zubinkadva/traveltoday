<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cancelled Tickets</title>
<style type="text/css">
<!--
.style13 {font-size: 16px}
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
.style35 {	font-family: magneto;
	font-size: 18px;
	color: #2AFF55;
}
.style36 {
	font-size: 24px;
	font-family: "Trebuchet MS";
	color: #FF6600;
}
.style41 {
	font-family: Rupee;
	font-size: 18px;
}
.style42 {
	font-size: 20px;
	font-family: "Trebuchet MS";
	color: #7FFF55;
}
body {
	background-image: url(img/subtle-waves1024.jpg);
}
.style44 {color: #CCFFFF}
.style45 {font-size: 18px; font-family: "Trebuchet MS"; color: #CCFFFF; }
a:link {
	color: #EEEEEE;
}
a:visited {
	color: #EE0000;
}
.style50 {font-size: 18px; font-family: "Trebuchet MS"; color: #33FFFF; }
-->
</style>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td height="58" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="213" border="2">
  <tr>
    <td width="201"><span class="style36">Cancelled Tickets </span></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="1048" border="1" align="center">
  <tr>
    <td width="106"><div align="center" class="style45">PID</div></td>
    <td width="106"><div align="center" class="style45">BID</div></td>
    <td width="118"><div align="center" class="style45">RID</div></td>
    <td width="182"><div align="center" class="style45">First Name </div></td>
    <td width="195"><div align="center" class="style45">Last Name</div></td>
    <td width="172"><div align="center" class="style45">Receipt Number </div></td>
    <td width="123"><div align="center" class="style45">Amount</div></td>
  </tr>
<%!String pid,bid,rid,passf,passl,rec,pay;%>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select payment.pid,bid,rid,pass_first_name,pass_last_name,receipt_number,amount from passenger,payment where passenger.pid=payment.pid and booked_seats like '' and amount!=''");
while(rs.next()){
pid=rs.getString(1);
bid=rs.getString(2);
rid=rs.getString(3);
passf=rs.getString(4);
passl=rs.getString(5);
rec=rs.getString(6);
pay=rs.getString(7);
%>

  <tr>
    <td><div align="center" class="style45"><%=pid%>&nbsp;</div></td>
    <td><div align="center" class="style45"><%=bid%>&nbsp;</div></td>
    <td><div align="center" class="style45"><%=rid%>&nbsp;</div></td>
    <td><div align="center" class="style45"><%=passf%>&nbsp;</div></td>
    <td><div align="center" class="style45"><%=passl%>&nbsp;</div></td>
    <td><div align="center" class="style45"><%=rec%>&nbsp;</div></td>
    <td><div align="center" class="style44"><span class="style41">` </span>
    
    
        <%=pay%>&nbsp;
    </div></td>
  </tr>
  <%}
  con.close(); st.close(); 
  }
  catch(Exception e){out.println(e.getMessage());}%>
</table>
<p>&nbsp;</p>
<%
if(pid==null)
{%>
<table width="692" border="0" align="center">
  <tr>
    <td width="682"><span class="style50">All passengers are booked for boarding their appropriate bus </span></td>
  </tr>
  <tr>
    <td><span class="style50">No cancellations </span></td>
  </tr>
</table>
<%}%>
<%
if(pid=="")
{%>
<table width="692" border="0" align="center">
  <tr>
    <td width="682"><span class="style50">All passengers are booked for boarding their appropriate bus </span></td>
  </tr>
  <tr>
    <td><span class="style50">No cancellations </span></td>
  </tr>
</table>
<%}%>
<p>&nbsp;</p>
<table width="966" border="0" align="center">
  <tr>
    <td width="956"><p class="style42">The above is a list of people who have cancelled their tickets.</p>
    </td>
  </tr>
  <tr>
    <td><span class="style42">Please note the above details and take steps according to our <a href="cancel_policy.jsp">Cancellation Policy</a>.</span></td>
  </tr>
</table>
</body>
</html>
