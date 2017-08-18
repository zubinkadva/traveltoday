<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Delete Complete</title>
<style type="text/css">
<!--
body {
	background-image: url(img/BG_4.JPG);
}
.style3 {
	font-size: 24px;
	font-family: "Trebuchet MS";
}
-->
</style></head>
<%String adel=request.getParameter("delete");%>
<%!String isEmpty;%>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st = con.createStatement();
ResultSet rs=st.executeQuery("select booked_seats from bus_master where bid='"+adel+"'");
while(rs.next())
isEmpty=rs.getString(1);
if(isEmpty.equals("")) {
PreparedStatement ps=con.prepareStatement("delete from bus_master where bid='"+adel+"'");
ps.executeUpdate();
}
else
throw new Exception();
%>
<script>
alert("Bus Deleted Successfully");
window.location="home.jsp";
</script>
<%
}
catch(Exception e) {
%>
<img src="img/caution_exclamation.jpg" width="183" height="200" />
<span class="style3">
<p>
<%out.println("\n\n\n\nCannot Delete the selected bus ID");%>
</p>
<p>
<%out.println("There are passengers booked for this bus");
}
%>
</p>
</span>
<body>
</body>
</html>
