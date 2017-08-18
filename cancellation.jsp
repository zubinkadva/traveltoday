<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cancellation</title>


<%String ppid=(String) session.getAttribute("ThePid");%>
<%!String books,bbid,pbooks,tbooks,tpbooks;%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select booked_seats from bus_master where bid=(select bid from passenger where pid="+ppid+")");
while(rs.next()) {
books=rs.getString(1);
}

rs=st.executeQuery("select booked_seats from passenger where pid='"+ppid+"'");
while(rs.next()) {
pbooks=rs.getString(1);
}

tbooks=books.trim();
tpbooks=pbooks.trim();
%>

<script>
var arr1="<%=tbooks%>";
var params = new Array();
params=arr1.split(',');

var arr2="<%=tpbooks%>";
var params2 = new Array();
params2=arr2.split(',');

var count=0;
for (var i=0;i<params2.length;i++) {
count+=1;
}


for (var i = 0; i<params2.length; i++) {
	var arrlen = params.length;
	for (var j = 0; j<arrlen; j++) {
		if (params2[i] == params[j]) {
			params = params.slice(0, j).concat(params.slice(j+1, arrlen));
		}//if close
	}//for close
}//for close
window.location="cancelled.jsp?name="+params+"&count="+count;
</script>

</body>
</html>
