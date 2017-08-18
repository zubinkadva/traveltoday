<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Registration Complete</title>
<%!String fname,lname,add,se,em,ph1,ph2,us,pas,sq,sa,maxpid,maxrecid,asex;%>
<%!String tfname,tlname,tadd,tse,tem,tph1,tph2,tus,tpas,tsq,tsa;%>
<%fname=request.getParameter("FirstName");%>
<%lname=request.getParameter("LastName");%>
<%add=request.getParameter("addr");%>
<%se=request.getParameter("sex");%>
<%if(se.equals("Male"))
asex="M";
else
asex="F";
%>
<%em=request.getParameter("Email");%>
<%ph1=request.getParameter("phone1");%>
<%ph2=request.getParameter("phone2");%>
<%us=request.getParameter("username");%>
<%pas=request.getParameter("Pass2");%>
<%sq=request.getParameter("secret_q");%>
<%sa=request.getParameter("secret_a");%>

<%
tfname=fname.trim();
tlname=lname.trim();
tadd=add.trim();
tse=asex.trim();
tem=em.trim();
tph1=ph1.trim();
tph2=ph2.trim();
tus=us.trim();
tpas=pas.trim();
tsq=sq.trim();
tsa=sa.trim();
%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
try {
PreparedStatement ps = con.prepareStatement("insert into login_master values(?,?,?,?,?)");
ps.setString(1,tus);
ps.setString(2,tpas);
ps.setString(3,tsq);
ps.setString(4,tsa);
ps.setString(5,"member");
ps.executeUpdate();
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select max(pid)+1 from passenger");
while(rs.next()) {
maxpid=rs.getString(1);
}

st=con.createStatement();
rs = st.executeQuery("select max(receipt_number)+1 from payment");
while(rs.next()) {
maxrecid=rs.getString(1);
}

ps=con.prepareStatement("insert into passenger(pid,pass_first_name,pass_last_name,pass_address,pass_sex,pass_email,pass_phone1,pass_phone2,username) values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,maxpid);
ps.setString(2,tfname);
ps.setString(3,tlname);
ps.setString(4,tadd);
ps.setString(5,tse);
ps.setString(6,tem);
ps.setString(7,tph1);
ps.setString(8,tph2);
ps.setString(9,tus);
ps.executeUpdate();

ps=con.prepareStatement("insert into payment(receipt_number,pid) values(?,?)");
ps.setString(1,maxrecid);
ps.setString(2,maxpid);
ps.executeUpdate();
ps.close(); con.close();
}catch(Exception e) {out.println(e.getMessage());}
%>
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
	background-image: url(../../../../../Users/Zubin/Documents/Bluetooth%20Folder/OS%20X%20Wallpaper.jpg);
}
.style41 {color: #CC0000}
.style42 {color: #FF0000}
.style44 {font-size: 20px}
-->
</style>
</head>


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
<table width="956" border="0">
  <tr>
    <th width="188" rowspan="3" class="style44" scope="col"><img src="img/tick-mark.jpg" width="95" height="91" /></th>
    <th width="758" class="style44" scope="col"><span class="style41">Registration Complete</span></th>
  </tr>
  <tr>
    <th class="style44" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th class="style44" scope="row"><span class="style42">Please go to the below link and log in</span></th>
  </tr>
</table>
<p class="style44">&nbsp;</p>
<table width="947" border="0">
  <tr>
    <th class="style44" scope="col"><a href="home.jsp">Return to the home page </a></th>
  </tr>
</table>
<p class="style44">&nbsp;</p>
</body>
</html>
