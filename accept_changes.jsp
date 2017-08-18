<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Accept Changes</title>
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
body {
	background-color: #669999;
	background-image: url(../../../../../Users/Zubin/Documents/Bluetooth%20Folder/124%20(2)%20-%20Copy.PNG);
	background-repeat: repeat;
	background-image: url(img/AURORA.JPG);
}
.style38 {font-family: "Times New Roman", Times, serif; font-size: 18px; }
.style63 {font-size: 20px; color: #1C1C1C; font-family: "Times New Roman", Times, serif; font-weight: bold; }
-->
</style>
</head>

<%String sessionuser=(String)session.getAttribute("UserName");%>
<%!String pid,fname,lname,add,se,em,ph1,ph2,us;%>
<%!String tpid,tfname,tlname,tadd,tse,tem,tph1,tph2,tus;%>
<%pid=request.getParameter("pid");%>
<%fname=request.getParameter("first");%>
<%lname=request.getParameter("last");%>
<%add=request.getParameter("addr");%>
<%se=request.getParameter("sex");%>
<%if(se=="Male")
se="M";
else
se="F";
%>
<%em=request.getParameter("mail");%>
<%ph1=request.getParameter("p1");%>
<%ph2=request.getParameter("p2");%>
<%us=request.getParameter("user");%>

<%
tpid=pid.trim();
tfname=fname.trim();
tlname=lname.trim();
tadd=add.trim();
tse=se.trim();
tem=em.trim();
tph1=ph1.trim();
tph2=ph2.trim();
tus=us.trim();
%>

<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
try {
PreparedStatement ps = con.prepareStatement("update login_master set username=? where username='"+sessionuser+"'");
ps.setString(1,tus);
ps.executeUpdate();

ps=con.prepareStatement("update passenger set pass_first_name=?,pass_last_name=?,pass_address=?,pass_sex=?,pass_email=?,pass_phone1=?,pass_phone2=?,username=? where pid='"+tpid+"'");
ps.setString(1,tfname);
ps.setString(2,tlname);
ps.setString(3,tadd);
ps.setString(4,tse);
ps.setString(5,tem);
ps.setString(6,tph1);
ps.setString(7,tph2);
ps.setString(8,tus);
ps.executeUpdate();
}catch(Exception e) {out.println(e.getMessage());}
session.setAttribute("UserName",tus);
%>

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
<table width="955" border="0">
  <tr>
    <th width="229" rowspan="4" scope="col"><img src="img/tick-mark.jpg" width="87" height="80" /></th>
    <th width="716" scope="col"><span class="style63">Thank - you For Updating Your Details </span></th>
  </tr>
  <tr>
    <th scope="row"><span class="style63">It makes Us Help Serve You Better </span></th>
  </tr>
  <tr>
    <th scope="row"><span class="style63">These Changes Have Been Successfully Updated in Our Database </span></th>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="950" border="0">
  <tr>
    <th width="944" scope="col"><a href="home_logged.jsp" class="style38"><img src="img/red-arrow-right-icon.png" width="110" height="90" /></a></th>
    <th width="944" scope="col"><div align="left"><a href="home_logged.jsp" class="style38">Proceed With The Home Page </a></div></th>
  </tr>
</table>
<p></p>
<p><a href="home_logged.jsp"></a></p>
</body>
</html>
