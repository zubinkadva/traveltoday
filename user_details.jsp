<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>User Details</title>

<%!String rid,pid,fname,lname,add,sex,email,ph1,ph2,use;%>
<%String username=(String)session.getAttribute("UserName");%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select rtrim(pid) g,rtrim(pass_first_name) h,rtrim(pass_last_name) i,pass_address,rtrim(pass_sex) j,rtrim(pass_email) k,rtrim(pass_phone1) l,rtrim(pass_phone2) m,rtrim(username) n from passenger where rtrim(username)='"+username+"'");
while(rs.next()){
pid=rs.getString("g");
fname=rs.getString("h");
lname=rs.getString("i");
add=rs.getString("pass_address");
sex=rs.getString("j");
email=rs.getString("k");
ph1=rs.getString("l");
ph2=rs.getString("m");
use=rs.getString("n");
}
String address=add.trim();

rs=st.executeQuery("select rtrim(receipt_number) a from payment where rtrim(pid)='"+pid+"'");
while(rs.next()){
rid=rs.getString("a");
}
%>

<script>
function Cancel() {
document.form1.action="home_logged.jsp";}

function Sex() {
var a="<%=sex%>";
	if(a=="M")
	document.getElementById('male').checked=true;
	else
	document.getElementById('fema').checked=true;
	}
</script>
<style type="text/css">
<!--
body {
	background-color: #99CCFF;
	background-image: url(img/BG_6.JPG);
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
.style44 {font-size: 24px; font-family: "Times New Roman", Times, serif; color: #FF0000; }
.style59 {font-size: 20px; font-family: "Times New Roman", Times, serif; color: #660033; }
-->
</style></head>

<body onload="Sex()">
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
<table width="959" border="0">
  <tr>
    <th scope="col"><span class="style44">Update And View Your Account Details </span></th>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
  </tr>
</table>
<p>&nbsp;</p>
<form id="form1" name="form1" action="accept_changes.jsp">
  <table width="557" border="0">
  <tr>
    <th scope="col"><span class="style59">Receipt ID </span></th>
    <th colspan="2" scope="col"><input name="pid2" type="text" value="<%=rid%>" readonly="true"/></th>
  </tr>
  <tr>
    <th width="206" scope="col"><div align="center" class="style59">Passenger ID </div></th>
    <th colspan="2" scope="col">
      
        <div align="center" class="style59">
          <input name="pid" type="text" readonly="true" value="<%=pid%>"/>
      </div>        </th>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">First Name </div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="first" value="<%=fname%>" />
      </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Last Name </div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="last" value="<%=lname%>" />
      </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Address</div></th>
    <td colspan="2"><div align="center" class="style59">
      <textarea name="addr" rows="5" ><%=address%>
</textarea>
    </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Sex</div></th>
    <td width="145">
      <div align="center" class="style59">
        <input name="sex" id="male" type="radio" value="mal"/>
     Male  </div></td>
    <td width="192">
      <div align="center" class="style59">
        <input name="sex" id="fema" type="radio"  value="fem"/>
     Female  </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Email</div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="mail" value="<%=email%>"/>
      </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Landline</div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="p1" value="<%=ph1%>" />
      </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">Mobile</div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="p2" value="<%=ph2%>"/>
      </div></td>
  </tr>
  <tr>
    <th scope="row"><div align="center" class="style59">User Name</div></th>
    <td colspan="2">
      <div align="center" class="style59">
        <input type="text" name="user" value="<%=use%>" />
      </div></td>
  </tr>
  <tr>
    <th scope="row"><input name="imageField" type="image" src="img/countinue.gif" /></th>
    <td colspan="2"><div align="center" class="style59">
      <a href="home_logged.jsp"><img src="img/cancel-button-hi.png" name="imageField2" width="100" height="43" border="0" onclick="Cancel()" /></a>
    </div></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
</body>
</html>
