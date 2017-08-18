<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Sign Up</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------

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

function valButton(btn) {
    var cnt = -1;
    for (var i=btn.length-1; i > -1; i--) {
        if (btn[i].checked) {cnt = i; i = -1;}
    }
    if (cnt > -1) return btn[cnt].value;
    else return null;
}

function Agreed() { 
var number=document.Userfields.phone2.value;
var number2=document.Userfields.phone1.value;
var x=document.forms["Userfields"]["Email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
var btn = valButton(Userfields.sex);


	if(document.Userfields.agree.checked==false) {
	document.Userfields.ok.disabled=true;
	}
	
	else if(document.Userfields.FirstName.value=="") {
	window.alert("Please Enter First Name");
	document.Userfields.agree.checked=false
	}
	
	else if(document.Userfields.LastName.value=="") {
	window.alert("Please Enter Last Name");
	document.Userfields.agree.checked=false;
	}

	else if(document.Userfields.LastName.value=="") {
	window.alert("Please Enter Last Name");
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.addr.value=="") {
	window.alert("Please Enter Address");
	document.Userfields.agree.checked=false;
	}

	else if(btn==null) {
	window.alert("Please Select Male / Female");
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.Email.value=="") {
	window.alert("Please Enter Email");
	document.Userfields.agree.checked=false;
	}
	
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	alert("Not a valid e-mail address");
	document.Userfields.agree.checked=false;
	}
	
	else if(isDigits(number2)==false) {
	window.alert("Lanldine Numeric Value Expected");
	document.Userfields.agree.checked=false;
	}
 
	else if(document.Userfields.phone2.value=="") {
	window.alert("Please Enter Mobile Phone");
	document.Userfields.agree.checked=false;
	}
	
	else if(isDigits(number)==false) {
	window.alert("Mobile Phone Numeric Value Expected");
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.phone2.value.length!=10) {
	window.alert("Mobile Phone 10 Digits Expected");
	document.Userfields.agree.checked=false;
	}

	else if(document.Userfields.username.value=="") {
	window.alert("Please Enter Username");
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.Pass1.value=="") {
	window.alert("Please Enter Password");
	document.Userfields.agree.checked=false;
	}

	else if(document.Userfields.Pass2.value=="") {
	window.alert("Please Re-enter Password");
	document.Userfields.agree.checked=false;
	}

	else if(document.Userfields.Pass1.value!=document.Userfields.Pass2.value) {
	window.alert("Please verify Password");
	document.Userfields.Pass1.value="";
	document.Userfields.Pass2.value="";
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.secret_q.value=="") {
	window.alert("Please Enter Secret Question");
	document.Userfields.agree.checked=false;
	}
	
	else if(document.Userfields.secret_a.value=="") {
	window.alert("Please Secret Answer");
	document.Userfields.agree.checked=false;
	}
	
	else {	
	document.Userfields.ok.disabled=false;
	}
}

function DisableButton() {
	document.Userfields.ok.disabled=true;
}

function yyy() {
document.Userfields.action="reg_complete.jsp";
}
</script>

<style type="text/css">
<!--
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
.style40 {
	font-size: 18px;
	font-family: magneto;
	color: #2AFF55;
}
.style39 {	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style41 {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
	color: #CC0000;
	font-weight: bold;
}
.style46 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; }
.style48 {
	font-size: 24px;
	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	color: #FF0000;
}
.style67 {font-size: 18px; color: #333333; font-family: "Times New Roman", Times, serif; font-weight: bold; }
.style68 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.style60 {font-family: "Times New Roman", Times, serif; font-size: 14px; }
.style74 {font-size: 16px; color: #EE0000; font-weight: bold; }
.style76 {font-size: 18px; color: #EE0000; font-weight: bold; }
-->
</style>
</head>
<form name="Userfields" action="reg_complete.jsp">
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="3" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td height="57" colspan="2" align="center" valign="bottom" nowrap="nowrap" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" align="center" valign="top" id="tagline"><p align="center" class="bodyText style13 style40">&nbsp;</p>
        <p align="center" class="bodyText style13 style35 style40">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="5" id="dateformat" height="25"> 
<marquee> 
  	  <span class="style39">Online Bus Booking and much more !&nbsp;&nbsp;	  </span>
  	</marquee>
            	<div align="right">
  	  <span class="style39">
  	  <script language="JavaScript" type="text/javascript">
      document.write(TODAY);	
	  </script>
     </span></div></th>
  </tr>
 <tr>
    <td colspan="5" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="226" valign="top" bgcolor="#E6F3FF">
	<table width="122%"  border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%" height="19%">&nbsp;<br />
		 &nbsp;<br /></td>
        </tr>
            <tr>
              <td height="36" nowrap="nowrap"><a href="home.jsp">Home Page </a></td>
            </tr>
            <tr>
              <td height="36" nowrap="nowrap"><a href="customerreviews.jsp">Testimonials </a></td>
            </tr>
            <tr>
              <td height="16%"><a href="businfo.jsp" class="navText">Bus Info </a></td>
            </tr>
            <tr>
              <td height="16%"><a href="booking.jsp" class="navText">Booking</a></td>
            </tr>
            <tr>
              <td height="16%"><a href="locations.jsp" class="navText">Locations</a></td>
            </tr>
            <tr>
              <td height="16%"><a href="sitemap.jsp" class="navText">Site Map</a></td>
            </tr>
            <tr>
              <td height="36"><a href="aboutus.jsp">About Us </a></td>
            </tr>
            <tr>
              <td height="36"><a href="contactus.jsp">Contact Us </a></td>
            </tr>
      </table>
 	 <br />
  	&nbsp;<br />
  	&nbsp;<br />
  	&nbsp;<br /> 	</td>
	
    <td width="20">&nbsp;</td>
    <td colspan="2" valign="top"><table width="605" border="10">
        <tr>
          <th width="577" scope="col"><span class="style48">Registration Form </span></th>
        </tr>
      </table>
      <p class="style41">        Welcome New User, Please Fill up the following form : </p>
      <table width="562" border="0">
  <td width="283" class="style48"><span class="style67">First Name </span></td>
      <td width="269">
	  
	  <input name="FirstName" type="text" size="40" />
        &nbsp;</td>
  <tr>
    <td class="style48"><span class="style67">Last Name </span></td>
    <td><input name="LastName" type="text" size="40"  />
      &nbsp;</td>
  </tr>
  <tr>
    <td class="style67">Address</td>
    <td><textarea name="addr" cols="30" rows="3"></textarea></td>
  </tr>
  <tr class="style46">
    <td class="style67">Sex</td>
    <td><input name="sex" type="radio" value="Male" />
Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="sex" type="radio" value="Female"/>
      Female</td>
  </tr>
  <tr>
    <td class="style48"><span class="style67">Your email ID </span></td>
    <td><input name="Email" type="text" size="40"  />
      &nbsp;</td>
  </tr>
  <tr>
    <td class="style67">Landline Number </td>
    <td><input name="phone1" type="text" size="40" /></td>
  </tr>
  <tr>
    <td class="style67">Mobile Number (Mandatory) </td>
    <td><input name="phone2" type="text" size="40" maxlength="10" /></td>
  </tr>
  <tr>
    <td class="style67">Your Username</td>
    <td><input name="username" type="text" size="40" /></td>
  </tr>
  <tr>
    <td class="style48"><span class="style67">Your Password </span></td>
    <td><input name="Pass1" type="password" size="40" />
      &nbsp;</td>
  </tr>
  <tr>
    <td class="style48"><span class="style67">Confirm Password </span></td>
    <td><input name="Pass2" type="password" size="40" />
      &nbsp;</td>
  </tr>
  <tr>
    <td class="style67">Secret Question </td>
    <td><label>
      <select name="secret_q" id="secret_q">
        <option>Your Favourite Food</option>
        <option>Your Favorite Country</option>
        <option>Your Father's Name</option>
        <option>Your Favourite Color</option>
      </select>
      </label></td>
  </tr>
  <tr>
    <td class="style67">Secret Answer </td>
    <td><span class="style74">
      <input name="secret_a" type="text" size="40" /> 
      * </span></td>
  </tr>
  <tr>
    <td colspan="2" class="style67"><div align="center"><span class="style76">Please note that the case is important </span></div></td>
    </tr>
  <%! String terms = "TravelToday Terms of Service\n\nWelcome to TravelToday!\n\nAccepting the Terms"+
	  "I agree to all terms and conditions of TravelToday.com and also give full support in providing the right information"+
	  "to the site.\nI will not jeopardize the personal information provided by the agent or misuse that of the site\n\n"+
	  "Note that TravelToday.com will not be responsible for any kind of forgery resulting from the rules prescribed by the"+
	  "Government Of India and its respective laws for internet e-commerce\n\nNote that the team at TravelToday.com ARE JUST"+
	  " DOING THEIR JOB ! !"; %>
  <tr>
    <td colspan="2"><textarea name="List" cols="67" rows="4" readonly="readonly" ><%=terms %></textarea>
      &nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><p>
      <input name="agree" type="checkbox" onclick="Agreed()" value="checkbox" />
      <span class="style68">I agree to the above statement and the <a href="terms.jsp">Terms Of Use</a></span> </p>
        <p>&nbsp; </p></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;
                <input name="ok" type="submit" value="Create Account" disabled="disabled" />
            <input type="reset" value="  Reset Fields   " name = "reset" onclick="DisableButton()"/>		  </td>
  </tr>
      </table></td>
    <td width="111">&nbsp;</td>
  </tr>
  <tr>
    <td width="226">&nbsp;</td>
    <td width="20">&nbsp;</td>
    <td width="156"><p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="449">&nbsp;</td>
    <td width="111">&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><span class="style60">&copy; Copyright Protected, 2012</span></div></td>
    <td>&nbsp;</td>
    <td colspan="2"><table width="522" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style60">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style60">About TravelToday </a></td>
        <td width="183"><a href="home.jsp" class="style60">TravelToday Home</a> </td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  </form>
</table>
</body>
</html>
