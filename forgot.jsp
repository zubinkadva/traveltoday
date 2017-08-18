<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Forgot Password Step 1</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script language="JavaScript" type="text/javascript">

function Validate() {
var x=document.forms["form1"]["mail"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");

	if(document.form1.mail.value=="") {
	window.alert("Please enter your e-mail address");
	}
	
	else if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
    alert("Not a valid e-mail address");
    }
	
	else {
	document.form1.action="verify.jsp";
	}

}
</script>
<style type="text/css">
<!--
body {
	background-color: #333399;
	background-image: url(img/BG_3.JPG);
}
.style1 {
	color: #009900;
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
.style37 {font-size: 18px; color: #CC0000; font-family: "Times New Roman", Times, serif; font-weight: bold; }
.style39 {font-size: 18px; color: #0033CC; font-family: "Times New Roman", Times, serif; font-weight: bold; }
-->
</style></head>
<body>
<form name="form1">
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
  <table width="958" border="0">
    <tr>
      <th colspan="5" scope="col"><span class="style1">Password Recovery (Step 1)</span></th>
    </tr>
    <tr>
      <th colspan="4" rowspan="7" scope="row"><img src="img/forgot.jpg" width="199" height="203" /></th>
      <th scope="row">&nbsp;</th>
    </tr>
    
    <tr>
      <th scope="row"><span class="style39">Have you forgotten your password ?</span></th>
    </tr>
    <tr>
      <th scope="row"><span class="style39">Do not worry, </span></th>
    </tr>
    <tr>
      <th scope="row"><span class="style39">enter  your email address </span></th>
    </tr>
    <tr>
      <th scope="row"><span class="style39">and accordingly youur secret answer</span></th>
    </tr>
    <tr>
      <th scope="row"><span class="style39">we will then send a mail consisting of your login info.</span></th>
    </tr>
    <tr>
      <th scope="row"><a href="home.jsp">Go To Home Page</a> </th>
    </tr>
    <tr>
      <th colspan="5" scope="row">&nbsp;</th>
    </tr>
    <tr>
      <th colspan="5" scope="row"><span class="style37">Please Enter Your Email Address </span></th>
    </tr>
    <tr>
      <th colspan="5" scope="row">&nbsp;</th>
    </tr>
    <tr>
      <th colspan="4" scope="row"> <input name="mail" type="text" size="40" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
      <th width="538" scope="row"><input name="next" type="image" id="next" src="img/next-step-button.jpg" onclick="Validate()"/></th>
    </tr>
  </table>
</form>
</body>
</html>
