<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Email Sent</title>
<style type="text/css">
<!--
body {
	background-color: #333399;
	background-image: url(img/BG_4.JPG);
}
.style1 {
	color: #006600;
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
	font-family: Rockwell;
}
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
a:link {
	color: #CC00FF;
}
.style36 {font-size: 24px; font-weight: bold; font-family: Rockwell; color: #99CC33;}
.style37 {color: #0033CC}
.style38 {font-family: "Times New Roman", Times, serif; font-weight: bold; font-size: 18px;}
-->
</style>
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
<p>&nbsp;</p>
<table width="943" border="0">
  <tr>
    <th colspan="5" scope="col"><span class="style1">Password Recovered Successfully </span></th>
  </tr>
  <tr>
    <th colspan="2" rowspan="7" scope="row"><img src="img/happy-smiley-2.jpg" width="261" height="203" /></th>
    <td width="525" colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><div align="center" class="style37"><span class="style38">Secret Answer matches </span></div></td>
  </tr>
  <tr>
    <td colspan="3"><div align="center" class="style37"><span class="style38">Email Sent to : <%=session.getAttribute("ses")%></span></div></td>
  </tr>
  <tr>
    <td colspan="3"><div align="center" class="style37"><span class="style38">Please remove the mail from your inbox </span></div></td>
  </tr>
  <tr>
    <td colspan="3"><div align="center" class="style37"><span class="style38">to avoid misuse of your password</span></div></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><div align="center"><img src="img/tick-mark.jpg" width="103" height="100" /></div></td>
  </tr>
</table>
<table width="941" border="0">
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th class="style36" scope="row"><a href="home.jsp">Click Here</a> to go back to the main page </th>
  </tr>
</table>
</body>
</html>
