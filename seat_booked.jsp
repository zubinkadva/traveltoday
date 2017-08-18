<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Seat Booked Details</title>


<script>
function dff() {
<img src=img/booknow.gif/>
}
</script>
<style type="text/css">
<!--
.style1 {font-family: rupee}
body {
	background-color: #9999CC;
	background-image: url(img/3844929769_507f9d6b24_o.jpg);
}
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
.style36 {font-size: 18px}
.style46 {font-size: 18px; color: #7FFF00; }
.style48 {font-size: 18px; color: #2AFF00; }
.style49 {color: #2AFF00}
.style52 {color: #2ADF00}
.style55 {font-size: 18px; color: #D4FFFF; }
.style56 {color: #D4FFFF}
.style57 {font-size: 18px; color: #FF0000; }
.style58 {color: #FF0000}
.style59 {font-size: 18px; color: #33FFFF; }
.style61 {font-size: 18px; color: #CC99FF; font-weight: bold; }
.style63 {font-size: 18px; color: #CC66FF; }
.style65 {font-size: 18px; color: #FFFFFF; }
-->
</style></head>
<body>

  <%String user=(String)session.getAttribute("UserName");%>
  <%!String first,last,sex,email,addr,booked;%>
  <%@ page import="java.sql.*"%>
  <%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select rtrim(pass_first_name) a,rtrim(pass_last_name) b,rtrim(pass_sex) c,rtrim(pass_email) d,pass_address from passenger where rtrim(username)='"+user+"'");
while(rs.next()){
first=rs.getString("a");
last=rs.getString("b");
sex=rs.getString("c");
email=rs.getString("d");
addr=rs.getString("pass_address");
}

String bs=request.getParameter("text");
String busid=(String)session.getAttribute("TheBusId");

rs=st.executeQuery("select booked_seats from bus_master where bid='"+busid+"'");
while(rs.next()) { 
booked=rs.getString(1);
}
session.setAttribute("TheBookedSeats",bs);
String new_booked=bs+","+booked;
session.setAttribute("TheBusBookedSeats",new_booked);
String cost=request.getParameter("text22");
session.setAttribute("TheCost",cost);
String nos=request.getParameter("text2");
session.setAttribute("TheNumberOfSeats",nos);
%>
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
  <p>&nbsp;</p>
<table width="953" border="0" background="img/025.JPG">
  <tr>
    <th width="943" scope="col"><span class="style65">Thank - you for booking a ticket with us </span></th>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th scope="row"><span class="style65">Your Tavel Details Are Mentioned Below </span></th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="955" border="1">
  <tr>
    <th width="322" scope="row"><span class="style59">User Name </span></th>
    <th width="623" scope="row"><div align="left" class="style52"><%=user%></div></th>
  </tr>
  <tr>
    <th scope="row"><span class="style59">Passanger ID </span></th>
    <th scope="row"><div align="left" class="style52"><%=session.getAttribute("ThePid")%>&nbsp;</div></th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="955" border="1">
  <tr>
    <th colspan="2" scope="row"><span class="style61">Travel Itenary</span></th>
  </tr>
  <tr>
    <th colspan="2" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th width="321" scope="row"><p><span class="style36"><span class="style49"></span></span></p></th>
    <th width="624" scope="row"><div align="left" class="style48"><%=session.getAttribute("TheSource")%>&nbsp; to <%=session.getAttribute("TheDestination")%>&nbsp;</div></th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">Sceduled Date </p></th>
    <th scope="row"><div align="left" class="style48"><%=session.getAttribute("TheDate")%>&nbsp;</div></th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">Total Fare </p></th>
    <th scope="row"> <div align="left" class="style48"><span class="style1">`</span> <%=cost%></div></th>
  </tr>
  <tr>
    <th scope="row"><span class="style59">Name Of Booked Seats </span></th>
    <th scope="row"><div align="left" class="style48"><%=bs%> </div></th>
  </tr>
  <tr>
    <th scope="row"><span class="style59">Number Of Booked Seats </span></th>
    <th scope="row"><div align="left" class="style48"><%=nos%>&nbsp;</div></th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="955" border="1">
  <tr>
    <th colspan="2" scope="row"><span class="style63">Passanger Info</span></th>
  </tr>
  <tr>
    <th width="323" scope="row">&nbsp;</th>
    <th width="622" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">First Name </p></th>
    <th scope="row"><p align="left" class="style46"><%=first%></p></th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">Last Name </p></th>
    <th scope="row"><div align="left" class="style46"><%=last%></div></th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">Address </p></th>
    <th scope="row"><p align="left" class="style46"><%=addr%></p></th>
  </tr>
  <tr>
    <th scope="row"><p class="style59">Sex </p></th>
    <th scope="row"><p align="left" class="style46"><%=sex%></p></th>
  </tr>
  <tr>
    <th scope="row"><span class="style59">Email </span></th>
    <th scope="row"><div align="left" class="style46"><%=email%></div></th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="948" border="0" background="../../../../../Users/Zubin/Documents/Bluetooth Folder/background.jpg">
  <tr>
    <th scope="col"><span class="style55">Payment to Be Made Via Cash On Delivery<span class="style58">*</span></span></th>
  </tr>
  <tr>
    <th scope="row"><span class="style55">The Ticket Will Be Delivered To You On The Above Mentioned Address </span></th>
  </tr>
  <tr>
    <th scope="row"><span class="style56"></span></th>
  </tr>
  <tr>
    <th scope="row"><a href="final_book.jsp" class="style55"><img src="img/countinue.gif" width="100" height="22" border="0" /></a></th>
  </tr>
  <tr>
    <th scope="row"><span class="style56"></span></th>
  </tr>
  <tr>
    <th scope="row"><span class="style56"></span></th>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style57">* - Ticket Delivery Costs <span class="style1">`20 </span>Extra </div></th>
  </tr>
</table>
<p>&nbsp;</p>
<p>



</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
