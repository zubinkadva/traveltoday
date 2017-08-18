<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrator Priveleges 2</title>
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
.style50 {	font-family: Arial, Helvetica, sans-serif;
	font-size: 29px;
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
body {
	background-image: url(img/40%20-%20Copy%20-%20Copy.JPG);
}
.style45 {	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 24px;
	color: #00FF00;
}
.style44 {font-size: 18px; color: #FFFF00; font-family: "Trebuchet MS"; }
.style48 {color: #00FF00}
-->
</style>
<script>
function Deleted_route() {
var del=document.delete_route.delete.value;
if(del=="") alert("Please select a valid Route ID");
else document.delete_route.action="deleted_route.jsp";
}
</script>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td height="58" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>
  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
        <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>
</table>
<table width="1298" border="10">
  <tr>
    <td width="1288"><span class="style50">Additional Administrator Capabilities 2 </span></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="602" border="0">
  <tr>
    <td width="155">&nbsp;</td>
    <td width="431"><span class="style45">Add a new route </span></td>
  </tr>
</table>
<p></p>
<p></p>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs;
%>
<table width="603" border="0">
  <tr>
    <td width="153"><span class="style48"></span></td>
    <td width="434"><span class="style45">Delete an existing Route </span></td>
  </tr>
</table>
<form action="javascript:Deleted_route()" name="delete_route">
  <table width="661" border="0" align="center">
    <tr>
      <td><div align="center"><span class="style44">RID</span></div></td>
      <td width="333" rowspan="2"><label>
          <div align="center">
            <input type="image" name="imageField2" src="img/Delete-icon.png" />
          </div>
        </label></td>
    </tr>
    <tr>
      <td width="312"><div align="center">
        <select name="delete" size="5" >
          <%rs=st.executeQuery("select rid from route");
		while(rs.next()){
		String str=rs.getString(1);%>
          <option value="<%=str%>"><%=str%> </option>
          <%}
		%>
        </select>
      </div></td>
    </tr>
  </table>
</form>
<p></p>
</body>
</html>
