<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="refresh" content="5;url=home.jsp"/>
<title>Logging Out . . .</title>
<%session.invalidate();%>
<style type="text/css">
<!--
body,td,th {
	color: #F0F0F0;
}
body {
	background-color: #0066CC;
	background-image: url(img/BG_4.JPG);
}
.style49 {
	color: #66FF66;
	font-size: 18px;
}
.style51 {font-size: 18px; font-family: "Times New Roman", Times, serif; color: #0033FF; }
.style52 {color: #0033FF}
.style54 {font-size: 18px; font-family: "Times New Roman", Times, serif; color: #FF0033; }
-->
</style>
</head>
<body>
<p>&nbsp;</p>
<table width="952" border="0">
  <tr>
    <th width="105" scope="col">&nbsp;</th>
    <th width="837" scope="col"><table width="799" border="15">
      <tr>
        <th width="918" colspan="5" scope="row"><span class="pageName"><img src="img/BackgroundTop.jpg" width="589" height="103" /></span>
              <div align="center"></div></th>
      </tr>
    </table></th>
  </tr>
</table>
<p>&nbsp;</p>
<form action="home.jsp" method="post" name="form1" id="form1">
  <table width="951" border="0">
    <tr>
      <th width="121" scope="col">&nbsp;</th>
      <th width="820" scope="col"><table width="772" height="197" border="30">
        <tr>
          <th width="241" scope="col"><p><img src="img/animated_COUNTDOWN.gif" width="113" height="144" /></p>
              <a href="home.jsp"></a></th>
          <th width="457" scope="col"><table width="455" border="0" align="left">
            <tr>
              <th width="449" scope="col"><span class="style51">We Hope You Enjoyed Your Stay With Us</span></th>
            </tr>
            <tr>
              <th scope="row"><span class="style52"></span></th>
            </tr>
            <tr>
              <th scope="row"><span class="style51">Logging Out</span></th>
            </tr>
            <tr>
              <th scope="row"><span class="style54">Redirecting In 3 Seconds . . . </span></th>
            </tr>
            <tr>
              <th scope="row">&nbsp;</th>
            </tr>
            <tr>
              <th scope="row"><a href="home.jsp" class="style49">Click Here If Your Browser does not redirect you </a></th>
            </tr>
          </table>            </th>
        </tr>
        
        
      </table></th>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
<p></p>
<p>&nbsp;</p>
<p></p>
</body>
</html>
