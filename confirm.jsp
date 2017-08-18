<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Text</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="file:///C|/Program%20Files%20(x86)/Macromedia/Dreamweaver%208/Configuration/BuiltIn/StarterPages/mm_health_nutr.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<style type="text/css">
<!--
body {
	background-color: #333399;
	background-image: url(img/BG_3.JPG);
}
.style1 {
	font-family: Rockwell;
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
	color: #009900;
}
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
	font-weight: bold;
	color: #FFFF33;
}
.style4 {font-family: "Times New Roman", Times, serif; font-size: 18px; font-weight: bold; color: #99FF33; font-style: italic; }
.style5 {color: #99FF33}
-->
</style></head>
<body>
<form name="form1" >
  <p class="style1">Password Recovery (Step 2)</p>
  <p class="style2">Email Sent to Address </p>
  <p><span class="style4"><%=request.getParameter("mail")%></span> 
    <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Close Window" onclick="window.close()" />
</form>
</body>
</html>
