<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="refresh" content="5; url=home.jsp"/>
<title>Login Success . . .</title>

<%String en_uname=request.getParameter("uname");%>
<%String en_upass=request.getParameter("upass");%>
<%String en_type=request.getParameter("radio");%>
<%!public String password,type,pid,rid;%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select rtrim(pasword) g,rtrim(account_type) h from login_master where rtrim(username)='"+en_uname+"'");
while(rs.next()){
password=rs.getString("g");
type=rs.getString("h");
}
rs=st.executeQuery("select rtrim(pid) a from passenger where rtrim(username)='"+en_uname+"'");
while(rs.next()){
pid=rs.getString("a");
}

rs=st.executeQuery("select rtrim(receipt_number) a from payment where rtrim(pid)='"+pid+"'");
while(rs.next()){
rid=rs.getString("a");
}
con.close(); st.close();

	if(!(en_upass.equals(password))) {
	%>
	<jsp:forward page="login_fail.jsp">
      <jsp:param name="" value=""/>
    </jsp:forward>
	<%}
	
	else if(!(en_type.equals(type))) {
	%>
	<jsp:forward page="login_fail.jsp">
      <jsp:param name="" value=""/>
    </jsp:forward>
	<%}
	
	else {
	out.println();
	session.setAttribute("UserName",en_uname);
	session.setAttribute("ThePid",pid);
	session.setAttribute("TheReceiptId",rid);
	session.setAttribute("TheAccountType",type);
	}
%>
<style type="text/css">
<!--
body,td,th {
	color: #F0F0F0;
}
body {
	background-color: #0066CC;
	background-image: url(img/BG_4.JPG);
}
.style3 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
}
.style4 {font-size: 18px; font-family: "Times New Roman", Times, serif; color: #66FF66; }
.style6 {font-size: 18px; font-family: "Times New Roman", Times, serif; color: #0000FF; }
.style7 {color: #FF0000}
-->
</style></head>

<body>

<p>&nbsp;</p>
<form name="form1" method="post" action="home.jsp">
<table width="952" border="0">
  <tr>
    <th width="105" scope="col">&nbsp;</th>
    <th width="837" scope="col"><table width="799" border="15">
      <tr>
        <th width="918" colspan="5" scope="row"><span class="pageName"><img src="img/BackgroundTop.jpg" width="589" height="103" /></span>
          <div align="center"></div></th>
      </tr>
    </table>
    </th>
  </tr>
</table>
<p>&nbsp;</p>
<table width="951" border="0">
  <tr>
    <th width="121" scope="col">&nbsp;</th>
    <th width="820" scope="col"><table width="772" height="197" border="30">
      <tr>
        <th width="241" scope="col"><p><img src="img/animated_COUNTDOWN.gif" width="113" height="144" /></p>          <a href="home.jsp"></a></th>
        <th width="457" scope="col"><table width="456" border="0" align="left">
          <tr>
            <th width="450" scope="col"><span class="style6">Thank You For Logging in , <%=en_uname%></span></th>
          </tr>
          <tr>
            <th scope="col">&nbsp;</th>
          </tr>
          <tr>
            <th scope="col"><span class="style3">Redirecting In 3 Seconds  . .</span></th>
          </tr>
          <tr>
            <th scope="col"><span class="style7"></span></th>
          </tr>
          <tr>
            <th scope="col"><a href="home.jsp" class="style4">Click Here If Your Browser does not redirect you </a></th>
          </tr>
        </table>          </th>
      </tr>
      
      
    </table>
    </th>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
