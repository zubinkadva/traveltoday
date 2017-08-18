<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Final Book</title>

<script>
var d=new Date();
var TODAY = d.getMonth()+1+"-"+d.getDate()+"-"+d.getFullYear();
</script>


<%String user=(String)session.getAttribute("UserName");
String busid=(String)session.getAttribute("TheBusId");
String roid=(String)session.getAttribute("TheRouteId");
String bs=(String)session.getAttribute("TheBookedSeats");
String new_booked=(String)session.getAttribute("TheBusBookedSeats");
String bstrim=bs.trim();
String new_bookedtrim=new_booked.trim();
String passid=(String)session.getAttribute("ThePid");
String trav_date=(String)session.getAttribute("TheDate");
String trav_datetrim=trav_date.trim();
String thecost=(String)session.getAttribute("TheCost");
String tthenumber=(String)session.getAttribute("TheNumberOfSeats");
int thenumber=Integer.parseInt(tthenumber);
%>


<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");

try{
PreparedStatement ps=con.prepareStatement("update passenger set booked_seats=?,rid=?,bid=?,travel_date=? where username='"+user+"'");
ps.setString(1,bstrim);
ps.setString(2,roid);
ps.setString(3,busid);
ps.setString(4,trav_datetrim);
ps.executeUpdate();
ps=con.prepareStatement("update bus_master set number_booked_seats=number_booked_seats+"+thenumber+",booked_seats=? where bid='"+busid+"'");
ps.setString(1,new_bookedtrim);
ps.executeUpdate();
ps=con.prepareStatement("update bus_master set available_seats=max_seats-number_booked_seats where bid='"+busid+"'");
ps.executeUpdate();

ps=con.prepareStatement("update payment set payment_date_time=getdate(),amount=? where pid='"+passid+"'");
ps.setString(1,thecost);
ps.executeUpdate();
}catch(Exception e){out.println(e.getMessage());}
%>

<style type="text/css">
<!--
body {
	background-color: #996699;
	background-image: url(../../../../../Users/Zubin/Documents/Bluetooth%20Folder/WALLPAPER.%20(54).jpg);
	background-image: url(img/20.JPG);
	background-repeat: repeat-x;
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
.style37 {font-size: 18px; font-family: "Times New Roman", Times, serif; }
.style38 {font-size: 18px}
.style39 {font-size: 18px; color: #00CC66; }
-->
</style></head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td width="385" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td width="593" height="58" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="80" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<p></p>
<table width="957" border="0">
  <tr>
    <th width="290" rowspan="4" scope="col"><img src="img/tick-mark.jpg" width="91" height="93" /></th>
    <th width="657" scope="col"><span class="style38"></span></th>
  </tr>
  <tr>
    <td><div align="center" class="style39">Congratulations! Request successful.</div></td>
  </tr>
  <tr>
    <td><span class="style38"></span></td>
  </tr>
  <tr>
    <td><div align="center" class="style38"><br />
    You have requested a ticket with the   following details:</div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="954" border="1">
  <tr>
    <th scope="col"><span class="style38">Receipt Number </span></th>
    <th scope="col"><div align="left" class="style38"><%=session.getAttribute("TheReceiptId")%>&nbsp;</div></th>
  </tr>
  <tr>
    <th width="288" scope="col"><p class="style38">From </p>    </th>
    <th width="650" scope="col"><div align="left" class="style38"><%=session.getAttribute("TheSource")%></div>    </th>
  </tr>
  <tr>
    <th scope="row"><p class="style38">To </p>    </th>
    <td><p class="style38"><%=session.getAttribute("TheDestination")%></p></td>
  </tr>
  <tr>
    <th scope="row"><p class="style38">Date	</p>    </th>
    <td><p class="style38"><%=session.getAttribute("TheDate")%></p></td>
  </tr>
  <tr>
    <th scope="row"><p class="style38">Departure  </p>    </th>
    <td><p class="style38"><%=session.getAttribute("TheDeparture")%></p></td>
  </tr>
  <tr>
    <th scope="row"><p class="style38">Bus Name  </p>    </th>
    <td><p class="style38"><%=session.getAttribute("TheBusName")%></p></td>
  </tr>
  <tr>
    <th scope="row"><p class="style38">Bus Type </p>    </th>
    <td><p class="style38"><%=session.getAttribute("TheBusType")%></p></td>
  </tr>
  <tr>
    <th scope="row"><span class="style38">Status </span></th>
    <td><span class="style38">Request Successfull </span></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="948" border="0">
  <tr>
    <th colspan="2" scope="col"><span class="style38">You will shortly receive a call from us </span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style38">Please Confirm your Passanger ID* and Receipt Number* when you do </span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style38">Please note that you cannot book any further tickets </span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><span class="style38"></span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th width="373" scope="row"><a href="locations.jsp" class="style37"><img src="img/f_hotel_icon.jpg" width="101" height="93" border="0" /></a></th>
    <th width="565" scope="row"><div align="left" class="style37">View the Accomodations available </div></th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><a href="home_logged.jsp" class="style37">Or Continue to the Home Page </a></th>
  </tr>
  <tr>
    <th colspan="2" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th colspan="2" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th colspan="2" scope="row"><div align="right" class="style37">* - These Can be Obtained By Viewing Your Account Details </div></th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
