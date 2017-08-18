<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add Complete</title>
<style type="text/css">
<!--
.style3 {
	font-family: "Trebuchet MS";
	font-size: 24px;
	font-weight: bold;
}
body {
	background-image: url(img/BG_4.JPG);
}
-->
</style>
</head>
<%String abid=request.getParameter("bid");
String abname=request.getParameter("bname");
String atype=request.getParameter("type");
String aac=request.getParameter("ac");
String aamax_seats=request.getParameter("max_seats");
int amax_seats=Integer.parseInt(aamax_seats);
String arid=request.getParameter("rid");
%>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
PreparedStatement ps=con.prepareStatement("insert into bus_master values(?,?,?,?,0,?,?,?,?)");
ps.setString(1,abid);
ps.setString(2,abname);
ps.setString(3,atype);
ps.setString(4,aac);
ps.setInt(5,amax_seats);
ps.setInt(6,amax_seats);
ps.setString(7,arid);
ps.setString(8,"");
ps.executeUpdate();
%>
<script>
alert("Bus Added Successfully");
window.location="home.jsp";
</script>
<%
}
catch(Exception e) {
%>
<img src="img/caution_exclamation.jpg" width="183" height="200" />
<span class="style3">
<p>
<%out.println("\n\n\n\nBus ID Already exsits\n");%>
</p>
<p>
<%out.println("Please Go Back and Enter another Bus ID");
}
%>
</p>
</span>


<body>

<p>&nbsp;</p>
</body>
</html>
