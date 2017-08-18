<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Print Ticket</title>
<style type="text/css">
<!--
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
.style36 {font-family: rupee}
.style41 {font-size: 18px; font-family: Georgia, "Times New Roman", Times, serif; color: #FF0000; }
.style42 {color: #FF0000}
-->
</style>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="385" rowspan="2"><table width="383" border="0">
      <tr>
        <th width="377" colspan="3" scope="col"><span class="style41">Print Ticket </span></th>
      </tr>
      <tr>
        <th colspan="3" scope="col"><span class="style42"></span></th>
      </tr>
      <tr>
        <th colspan="3" scope="col"><span class="style41">Customer Copy Printed From Site </span></th>
      </tr>
    </table></td>
    <td width="593" height="58" align="center" valign="bottom" nowrap="nowrap"  id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr>
    <td height="80" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<p>


<%@ page import="java.sql.*"%>
<%!String pid,pr_bid,pr_bname,pr_btype,pr_ac,pr_dot,pr_rid,pr_src,pr_des,pr_dep,pr_ar,pr_bs,pr_nos,pr_cost,pr_fn,pr_ln,pr_add,pr_sex,pr_rec,pr_pd;%>
<%pid=(String)session.getAttribute("ThePid");%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select bid from passenger where pid='"+pid+"'");
while(rs.next()){
pr_bid=rs.getString(1);
}

rs=st.executeQuery("Select bname,type,ac,rid from bus_master where bid='"+pr_bid+"'");
while(rs.next()){
pr_bname=rs.getString(1);
pr_btype=rs.getString(2);
pr_ac=rs.getString(3);
pr_rid=rs.getString(4);
}

rs=st.executeQuery("Select destination,source,convert(varchar(7),departure),convert(varchar(7),arrival) from route where rid='"+pr_rid+"'");
while(rs.next()){
pr_des=rs.getString(1);
pr_src=rs.getString(2);
pr_dep=rs.getString(3);
pr_ar=rs.getString(4);
}

rs=st.executeQuery("Select booked_seats,pass_first_name,pass_last_name,pass_address,pass_sex,travel_date from passenger where pid='"+pid+"'");
while(rs.next()){
pr_bs=rs.getString(1);
pr_fn=rs.getString(2);
pr_ln=rs.getString(3);
pr_add=rs.getString(4);
pr_sex=rs.getString(5);
pr_dot=rs.getString(6);
}

rs=st.executeQuery("Select receipt_number,payment_date_time,amount from payment where pid='"+pid+"'");
while(rs.next()){
pr_rec=rs.getString(1);
pr_pd=rs.getString(2);
pr_cost=rs.getString(3);
}
%>
<script>
var count=0;
var varr = "<%=pr_bs%>";
var trimmed = varr.replace(/^\s+|\s+$/g, '') ;
var day = trimmed.split(",");
for(i = 0; i < day.length; i++){
count++;
}
</script>

<%pr_nos="<script>document.writeln(count)</script>";%>

</p>
<table width="949" border="0">
  <tr>
    <th scope="col"><div align="right"><a href="javascript:window.print()">Print Ticket</a> </div></th>
  </tr>
  <tr>
    <th scope="col"><div align="right"><a href="javascript:window.close()">Close Window</a> </div></th>
  </tr>
</table>
<table width="955" border="0">
  <tr>
    <th colspan="2" scope="col">Bus Details </th>
  </tr>
  <tr>
    <th width="440" scope="row">Bus ID </th>
    <td width="505">&nbsp;<%=pr_bid%></td>
  </tr>
  <tr>
    <th scope="row">BusName</th>
    <td>&nbsp;<%=pr_bname%></td>
  </tr>
  <tr>
    <th scope="row">Bus Type </th>
    <td>&nbsp;<%=pr_btype%></td>
  </tr>
  <tr>
    <th scope="row">Air Conditioned </th>
    <td>&nbsp;<%=pr_ac%></td>
  </tr>
  <tr>
    <th scope="row">Date Of Travel </th>
    <td>&nbsp;<%=pr_dot%></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="944" border="0">
  <tr>
    <th colspan="2" scope="col">Route Details </th>
  </tr>
  <tr>
    <th width="442" scope="row">Route ID </th>
    <td width="492">&nbsp;<%=pr_rid%></td>
  </tr>
  <tr>
    <th scope="row">Source</th>
    <td>&nbsp;<%=pr_src%></td>
  </tr>
  <tr>
    <th scope="row">Destination</th>
    <td>&nbsp;<%=pr_des%></td>
  </tr>
  <tr>
    <th scope="row">Departure </th>
    <td>&nbsp;<%=pr_dep%></td>
  </tr>
  <tr>
    <th scope="row">Arrival</th>
    <td>&nbsp;<%=pr_ar%></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="945" border="0">
  <tr>
    <th colspan="2" scope="col">Seat Details </th>
  </tr>
  <tr>
    <th width="446" scope="row">Booked Seats </th>
    <td width="489">&nbsp;<%=pr_bs%></td>
  </tr>
  <tr>
    <th scope="row">Number Of Booked Seats </th>
    <td>&nbsp;<%=pr_nos%></td>
  </tr>
  <tr>
    <th scope="row">Total Fare </th>
    <td><span class="style36"><%=pr_cost%></span></td>
  </tr>
  <tr>
    <th scope="row">Receipt Number </th>
    <td>&nbsp;<%=pr_rec%></td>
  </tr>
  <tr>
    <th scope="row">Payment Date </th>
    <td>&nbsp;<%=pr_pd%></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="940" border="0">
  <tr>
    <th colspan="2" scope="col">Passenger Details </th>
  </tr>
  <tr>
    <th scope="row">Passenger ID </th>
    <td>&nbsp;<%=pid%></td>
  </tr>
  <tr>
    <th width="450" scope="row">First Name </th>
    <td width="480">&nbsp;<%=pr_fn%></td>
  </tr>
  <tr>
    <th scope="row">Last Name </th>
    <td>&nbsp;<%=pr_ln%></td>
  </tr>
  <tr>
    <th scope="row">Address</th>
    <td>&nbsp;<%=pr_add%></td>
  </tr>
  <tr>
    <th scope="row">Sex</th>
    <td>&nbsp;<%=pr_sex%></td>
  </tr>
</table>
<p><a href="javascript:window.print()"></a></p>
<table width="949" border="0">
  <tr>
    <th width="380" scope="col"><div align="left"><a href="javascript:window.print()">Print Ticket</a> </div></th>
    <th width="559" rowspan="2" scope="col"><a href="sms.jsp"><img src="img/image1.png" width="209" height="49" border="0" /></a></th>
  </tr>
  <tr>
    <th scope="col"><div align="left"><a href="javascript:window.close()">Close Window</a> </div></th>
  </tr>
</table>
</body>
</html>
