<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Failed</title>
<script>
function ghj() {
var a=document.LoginForm.uname.value;
var b=document.LoginForm.upass.value;

	if(a=="")
	alert("Please Enter your User Name");
	else if(b=="")
	alert("Please Enter Your Password");
	else {
	document.LoginForm.action="login_successfull.jsp";
	}
}
</script>
<style type="text/css">
<!--
body,td,th {
	color: #F0F0F0;
}
body {
	background-color: #0066CC;
	background-image: url(img/BG_4.JPG);
}
.style50 {
	font-size: 18;
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
}
.style53 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	color: #FFCC00;
}
.style56 {font-size: 18; font-family: "Times New Roman", Times, serif; color: #0000FF; }
.style65 {font-size: 18px; font-family: "Times New Roman", Times, serif; color: #FFCC00; }
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
<table width="954" border="0">
  <tr>
    <th width="468" rowspan="7" scope="col"><img src="img/imagesCADKJ3UB.jpg" width="202" height="161" /></th>
    <th width="468" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col"><span class="style56">It Looks Like You Have Entered A </span></th>
  </tr>
  <tr>
    <th scope="col"><span class="style56">Wrong Login Name And/Or Password </span></th>
  </tr>
  <tr>
    <th scope="col"><span class="style56">Please Verify your Privelege Level</span></th>
  </tr>
  <tr>
    <th scope="col"><span class="style50">Please Try Again </span></th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col"><a href="home.jsp">Return To Home Page</a> </th>
  </tr>
</table>

<p>&nbsp;</p>
<table width="952" border="0">
  <tr>
    <th width="264" scope="col"><img src="img/antique lock's  new key 2005.jpg" width="279" height="210" /></th>
    <th width="439" scope="col">
	
		  <form name="LoginForm" method="post" action="javascript:void(0)">
	<table width="100%"  border="5" align="right">
      <tr>
        <td width="38%" height="28"><div align="center" class="style53">User Name </div></td>
        <td width="62%"><div align="center" class="style65">
            <input type = "text" name = "uname" />
          &nbsp;</div></td>
      </tr>
      <tr>
        <td height="28"><div align="center" class="style65"><strong>Password</strong></div></td>
        <td><div align="center" class="style65">
            <input type = "password" name = "upass" />
          &nbsp;</div></td>
      </tr>
      <tr>
        <td height="26"><div align="center" class="style65"><strong>
            <input name="radio" type="radio" checked="checked" value="member" />
&nbsp;Site Member </strong></div></td>
        <td><div align="center" class="style65"><strong>
            <input type="radio" name="radio" value="admin"/>
&nbsp;Adminisrator</strong></div></td>
      </tr>
      <tr>
        <td height="30"><div align="center" class="style65"><strong>&nbsp;<a href="forgot.jsp"><img src="img/ForgotPasswordIcon.gif" alt="" width="222" height="48" border="0"/></a></strong></div></td>
        <td><div align="center" class="style65">
            <input type="image" name="imageField" src="img/login.png" onclick="ghj()" />
        </div></td>
      </tr>
    </table>
	  </form>  
		
</th>
    <th width="235" scope="col"><p><img src="img/4532687881.jpeg" width="288" height="247" /></p></th>
  </tr>
</table>

</body>
</html>
