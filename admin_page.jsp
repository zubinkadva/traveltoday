<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrator Priveleges</title>
<style type="text/css">
<!--
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
body {
	background-image: url(../../../../../Users/Zubin/Documents/Bluetooth%20Folder/WALLPAPER.%20(54).jpg);
	background-image: url(img/40%20-%20Copy%20-%20Copy.JPG);
}
.style44 {font-size: 18px; color: #FFFF00; font-family: "Trebuchet MS"; }
.style45 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 24px;
	color: #00FF00;
}
.style48 {color: #00FF00}
.style50 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 29px;
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
-->
</style>
</head>

<script>
function Deleted_bus() {
var del=document.delete_bus.delete.value;
if(del=="") alert("Please select a valid Bus ID");
else document.delete_bus.action="deleted_bus.jsp";
}

function isDigits(argvalue) {
argvalue = argvalue.toString();
var validChars = "0123456789";
var startFrom = 0;
	if (argvalue.substring(0, 2) == "0x") {
	validChars = "0123456789abcdefABCDEF";
	startFrom = 2;
	}
	else if (argvalue.charAt(0) == "0") {
	validChars = "01234567";
	startFrom = 1;
	}
		for (var n = 0; n < argvalue.length; n++) {
			if (validChars.indexOf(argvalue.substring(n, n+1)) == -1) return false;
		}
		
return true;
}

function Added_bus() {
var bid=document.add_bus.bid.value;
var bname=document.add_bus.bname.value;
var max_seats=document.add_bus.max_seats.value;
var rid=document.add_bus.rid.value;

if(bid=="") alert("Please enter valid Bus ID");
else if(bname=="") alert("Please enter valid Bus Name");
else if(max_seats=="") alert("Please enter maximum seats");
else if(isDigits(max_seats)==false) alert("Max Seats, Numeric Value Expected");
else if(rid=="-Select a Route-") alert("Please Select a valid route");
else document.add_bus.action="added_bus.jsp";
}
</script>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs;
%>
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
    <td width="1288"><span class="style50">Additional Administrator Capabilities</span> </td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="602" border="0">
  <tr>
    <td width="155">&nbsp;</td>
    <td width="431"><span class="style45">Add a new bus</span></td>
  </tr>
</table>
<p>&nbsp;</p>
<form name="add_bus" action="javascript:Added_bus()">
<table width="851" border="0" align="center">
  <tr>
    <td width="60"><div align="center" class="style44">BID</div></td>
    <td width="144"><div align="center" class="style44">BName</div></td>
    <td width="84"><div align="center" class="style44">Type</div></td>
    <td width="59"><div align="center" class="style44">AC</div></td>
    <td width="80"><div align="center" class="style44">Max_seats</div></td>
    <td width="137"><div align="center" class="style44">RID </div></td>
    <td width="61" rowspan="2"> <input type="image" name="imageField" src="img/button_add.gif" /></td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="bid" type="text" size="10" maxlength="3" />
    </div></td>
    <td><div align="center">
      <input type="text" name="bname" />
    </div></td>
    <td><label>
      <div align="center">
        <select name="type">
          <option>Sleeper</option>
          <option>Normal</option>
        </select>
        </div>
    </label></td>
    <td><label>
    <div align="center">
      <select name="ac">
        <option>yes</option>
        <option>no</option>
      </select>
    </div>
    </label></td>
    <td><div align="center">
      <input name="max_seats" type="text" size="10" maxlength="2" />
    </div></td>
    <td><label>
      <div align="center">
        <select name="rid">
          <option>-Select a Route-</option>
          <%rs=st.executeQuery("select rid from route");
		while(rs.next()){
		String str=rs.getString(1);%>
          
          <option value="<%=str%>"><%=str%> </option>
          
          <%}
		%>
        </select>
        </div>
    </label></td>
    </tr>
</table>
<label></label>
</form>
<p>&nbsp;</p>
<table width="603" border="0">
  <tr>
    <td width="153"><span class="style48"></span></td>
    <td width="434"><span class="style45">Delete an existing Bus</span></td>
  </tr>
</table>
<form name="delete_bus" action="javascript:Deleted_bus()">
  <table width="661" border="0" align="center">
    <tr>
      <td><div align="center"><span class="style44">BID</span></div></td>
      <td width="333" rowspan="2"><label>
        <div align="center">
          <input type="image" name="imageField2" src="img/Delete-icon.png" />
      </div>        </label></td>
    </tr>
    <tr>
      <td width="312"><div align="center">
        <select name="delete" size="5" >
          <%rs=st.executeQuery("select bid from bus_master");
		while(rs.next()){
		String str=rs.getString(1);%>
          <option value="<%=str%>"><%=str%> </option>
          <%}
		%>
        </select>
      </div></td>
    </tr>
  </table>
  <label></label>
</form>
</body>
</html>
