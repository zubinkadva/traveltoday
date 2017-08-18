<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Search Result</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
<link href="calendar.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>



<%@ page import="java.sql.*"%>




<script>
<%String isLogged=(String)session.getAttribute("UserName");%>
<%String is=(String)session.getAttribute("ThePid");%>
<%!String res_bid,res_bname,res_type,res_ac,res_max,res_src,res_dest,res_dep,res_arr,res_rid;int res_fare;%>
function Search() {
<%String selected_src=request.getParameter("drop_src");
String selected_dest=request.getParameter("drop_dest");
String selected_date=request.getParameter("datum1");
session.setAttribute("TheDate",selected_date);
%>
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
.style49 {
	font-family: rupee;
	font-size: 18px;
}
body {
	background-image: url(img/40%20-%20Copy%20-%20Copy.JPG);
}
.style70 {font-size: 18px; font-family: gigafa; font-weight: bold; color: #66FF99; }
.style74 {font-size: 18px}
.style75 {color: #FF0000}
-->
</style>
</head>


<%!String aaa,taaa;%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con5 = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st5=con5.createStatement();
ResultSet rs5=st5.executeQuery("Select booked_seats from passenger where pid="+is);
while(rs5.next()){
taaa=rs5.getString(1);
}
%>



<body bgcolor="#33CCFF" onload="Search()">
<table width="99%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td width="385" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td width="587" height="58" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
      <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="3" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>
</table>
<table width="961" height="338" border="0">
  <tr>
    <th width="160" height="21" scope="col">&nbsp;</th>
    <th colspan="2" scope="col">&nbsp;</th>
    <th width="57" scope="col">&nbsp;</th>
    <th width="57" scope="col">&nbsp;</th>
    <th width="26" scope="col">&nbsp;</th>
  </tr>
  
  <tr>
    <th height="50" scope="row">&nbsp;</th>
    <td width="220" background="img/20080120_soft_1280.jpg"><span class="style70">Selected Atributes </span></td>
    <td width="415" background="img/20080120_soft_1280.jpg">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="45" scope="row">&nbsp;</th>
    <td background="img/20080120_soft_1280.jpg"><span class="style70">Source </span></td>
    <td background="img/20080120_soft_1280.jpg"><span class="style70"><%=selected_src%>&nbsp;</span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="57" scope="row">&nbsp;</th>
    <td background="img/20080120_soft_1280.jpg"><span class="style70">Destination </span></td>
    <td background="img/20080120_soft_1280.jpg"><span class="style70"><%=selected_dest%>&nbsp;</span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="53" scope="row">&nbsp;</th>
    <td background="img/20080120_soft_1280.jpg"><span class="style70">Date Of Travel </span></td>
    <td background="img/20080120_soft_1280.jpg"><span class="style70"><%=selected_date%>&nbsp;</span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="34" scope="row">&nbsp;</th>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th height="44" colspan="6" scope="row">Search Result </th>
  </tr>
</table>


<table width="980" border="2">
  <tr>
    <th scope="col"><span class="style74">Bus ID </span></th>
    <th scope="col"><span class="style74">Bus Name </span></th>
    <th scope="col"><span class="style74">Bus Type </span></th>
    <th scope="col"><span class="style74">AC ? </span></th>
    <th scope="col"><span class="style74">Maximum Seats</span></th>
    <th scope="col"><span class="style74">Source</span></th>
    <th scope="col"><span class="style74">Destination</span></th>
    <th scope="col"><span class="style74">Fare/Seat</span></th>
    <th scope="col"><span class="style74">Departure</span></th>
    <th scope="col"><span class="style74">Arrival</span></th>
    <th scope="col"><span class="style74">mTicket</span></th>
  </tr>
 <%!String myvai;%> 
 <%String myvariable=(String) session.getAttribute("ThePid");%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs2=st.executeQuery("select booked_seats from passenger where pid='"+myvariable+"'");
while(rs2.next()) {myvai=rs2.getString(1);}

ResultSet rs=st.executeQuery("select bid,bname,type,ac,max_seats,source,destination,fare,convert(varchar(5),departure) a,convert(varchar(5),arrival) b,route.rid from  bus_master,route where source='"+selected_src+"' and destination='"+selected_dest+"' and (bus_master.rid=route.rid)");
while(rs.next()){
res_bid=rs.getString("bid");
res_bname=rs.getString("bname");
res_type=rs.getString("type");
res_ac=rs.getString("ac");
res_max=rs.getString("max_seats");
res_src=rs.getString("source");
res_dest=rs.getString("destination");
res_fare=rs.getInt("fare");
res_dep=rs.getString("a");
res_arr=rs.getString("b");
res_rid=rs.getString("rid");%>

	<tr>
    <th width="46" scope="col"><span class="style74"><%=res_bid%>&nbsp;</span></th>
    <th width="67" scope="col"><span class="style74"><%=res_bname%>&nbsp;      </span></th>
    <th width="61" scope="col"><span class="style74"><%=res_type%>&nbsp;     </span></th>
    <th width="37" scope="col"><span class="style74"><%=res_ac%>&nbsp;     </span></th>
    <th width="100" scope="col"><span class="style74"><%=res_max%>&nbsp;      </span></th>
    <th width="75" scope="col"><span class="style74"><%=res_src%>&nbsp;       </span></th>
    <th width="118" scope="col"><span class="style74"><%=res_dest%>&nbsp;      </span></th>
    <th width="83" scope="col"><span class="style49">`</span><span class="style74"><%=res_fare%></span></th>
    <th width="80" scope="col"><span class="style74"><%=res_dep%>&nbsp;      </span></th>
    <th width="85" scope="col"><span class="style74"><%=res_arr%>&nbsp;          </span></th>
    <th width="79" scope="col"><a href="#"><img src="img/mticket_icon.gif" width="25" height="23" border="0" onclick="window.open('mticket.jsp','')" /></a></th>
	<th width="71" scope="col">
	
	
	<a href="book_<%=res_max%>.jsp?fare=<%=res_fare%>">
	 <class="style74" id="Proceed">
	<%if (myvai.equals("")) {%>
	<img src="img/booknow.gif" width="67" height="22" /
	><%}%>
	</a>	
	</th>
	</tr>
	<%}
	con.close(); st.close();%>
	
</table>
<%session.setAttribute("TheDestination",res_dest);%>
<%session.setAttribute("TheSource",res_src);%>
<%session.setAttribute("TheBusId",res_bid);%>
<%session.setAttribute("TheRouteId",res_rid);%>
<%session.setAttribute("TheDeparture",res_dep);%>
<%session.setAttribute("TheBusName",res_bname);%>
<%session.setAttribute("TheBusType",res_type);%>
<p><%if(res_bid==null) out.println("It Looks Like There Are No Buses Available For This Route");%>&nbsp;
<%if(myvai.equals("")) {}
 else {%>
 <strong><span class="style75">
 <%out.println("It seems that you have already booked a ticket.");%>
 </span></strong>
 <%}%>
</p>
</body>
</html>
