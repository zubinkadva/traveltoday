<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Delete Complete</title>
</head>
<%String adel=request.getParameter("delete");

%>
<%
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
PreparedStatement ps=con.prepareStatement("delete from route where rid='"+adel+"'");
ps.executeUpdate();
%>
<script>
alert("Route Deleted Successfully");
window.location="home.jsp";
</script>
<%
}
catch(Exception e) {out.println("Deletion Unsuccessful");}
%>

<body>
</body>
</html>
