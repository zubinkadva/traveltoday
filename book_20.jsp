<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Book 20</title>

<%String far=request.getParameter("fare");%>
<%String sesbid=(String)session.getAttribute("TheBusId");%>
<%!String obt;%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select booked_seats from bus_master where bid='"+sesbid+"'");
while(rs.next()){
obt=rs.getString(1);
out.println(obt);
}%>

<script>
var varr="<%=obt%>";
var fare_mul="<%=far%>";
var number=0;
var cca1=0;var cca2=0;var cca3=0;var cca4=0;
var ccb1=0;var ccb2=0;var ccb3=0;var ccb4=0;
var ccc1=0;var ccc2=0;var ccc3=0;var ccc4=0;
var ccd1=0;var ccd2=0;var ccd3=0;var ccd4=0;
var cce1=0;var cce2=0;var cce3=0;var cce4=0;
var array=new Array();

function bodyLoad() {
var trimmed = varr.replace(/^\s+|\s+$/g, '') ;
var day = trimmed.split(",");
for(i = 0; i < day.length; i++){
	document.getElementById(day[i]).src="img/already_booked_seat.jpg";
	document.getElementById(day[i]).id="";
}
}

function removeByElement(arrayName,arrayElement) {
	for(var i=0; i<arrayName.length;i++ ) { 
		if(arrayName[i]==arrayElement)
		arrayName.splice(i,1); 
	} 
}

function ca1(a) {
	if(cca1==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca1=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca1=0;
 	number--;
	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ca2(a) {
	if(cca2==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca2=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca2=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ca3(a) {
	if(cca3==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca3=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca3=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ca4(a) {
	if(cca4==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca4=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca4=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cb1(a) {
	if(ccb1==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb1=1;
 	number++;
  	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb1=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cb2(a) {
	if(ccb2==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb2=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb2=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cb3(a) {
	if(ccb3==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb3=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb3=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cb4(a) {
	if(ccb4==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb4=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb4=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;	
}
function cc1(a) {
	if(ccc1==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc1=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc1=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cc2(a) {
	if(ccc2==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc2=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc2=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cc3(a) {
	if(ccc3==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc3=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc3=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cc4(a) {
	if(ccc4==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc4=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc4=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cd1(a) {
	if(ccd1==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cdc1=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd1=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cd2(a) {
	if(ccd2==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd2=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd2=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cd3(a) {
	if(ccd3==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd3=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd3=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function cd4(a) {
	if(ccd4==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd4=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd4=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ce1(a) {
	if(cce1==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce1=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce1=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ce2(a) {
	if(cce2==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce2=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce2=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ce3(a) {
	if(cce3==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce3=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce3=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function ce4(a) {
	if(cce4==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce4=1;
 	number++;
	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce4=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}

function Next() {
var a=document.getElementById('booked_seats').value;

	if(a=="")
	alert("Please Select your seats");
	else
	document.info.action="seat_booked.jsp";
}

</script>


<style type="text/css">
<!--
.style1 {
	font-family: rupee;
	font-weight: bold;
	color: #6600FF;
	font-size: 18px;
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
.style36 {
	font-family: Rockwell;
	font-size: 23px;
	color: #6600FF;
}
body {
	background-image: url(img/BG1.JPG);
	background-repeat: repeat;
}
.style56 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; color: #6600FF; }
.style57 {color: #6600FF}
-->
</style></head>

<body onload="bodyLoad()">
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
  <p></p>
  <table width="948" border="2">
    <tr>
      <th scope="col"><span class="style36">Booking Seats for 20 Seater Bus </span></th>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="934" border="0">
    <tr>
      <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="1" /></th>
      <th scope="col"><img src="img/booked_seat.jpg" width="64" height="55" /></th>
      <th scope="col"><img src="img/already_booked_seat.jpg" width="64" height="55" /></th>
    </tr>
    <tr>
      <th scope="row"><span class="style56">Available Seat </span></th>
      <td><div align="center" class="style56">Selected Seat </div></td>
      <td><div align="center" class="style56">Reserved Seat </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="941" border="0">
    <tr>
      <th width="141" rowspan="3" scope="col">&nbsp;</th>
      <th width="194" rowspan="3" scope="col"><span class="style57">FRONT</span></th>
      <th scope="col"><table width="200" border="0" align="left">
        <tr>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A1" onclick="ca1(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A2" onclick="ca2(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A3" onclick="ca3(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A4" onclick="ca4(this.id)"/></th>
        </tr>
        <tr>
          <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B1" onclick="cb1(this.id)"/></th>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B2" onclick="cb2(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B3" onclick="cb3(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B4" onclick="cb4(this.id)"/></td>
        </tr>
        <tr>
          <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C1" onclick="cc1(this.id)"/></th>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C2" onclick="cc2(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C3" onclick="cc3(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C4" onclick="cc4(this.id)"/></td>
        </tr>
      </table></th>
      <th width="237" rowspan="3" scope="col"><span class="style57">BACK</span></th>
      <th width="112" rowspan="3" scope="col">&nbsp;</th>
    </tr>
    <tr>
      <td width="237">&nbsp;</td>
    </tr>
    <tr>
      <td><table width="200" border="0">
        <tr>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D1" onclick="cd1(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D2" onclick="cd2(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D3" onclick="cd3(this.id)"/></th>
          <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D4" onclick="cd4(this.id)"/></th>
        </tr>
        <tr>
          <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E1" onclick="ce1(this.id)"/></th>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E2" onclick="ce2(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E3" onclick="ce3(this.id)"/></td>
          <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E4" onclick="ce4(this.id)"/></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <form name="info" id="info" action="javascript:window.void(0)">
  <table width="939" border="0" background="img/abstract_0037.jpg">
    <tr>
      <th width="358" scope="col"><span class="style56">Booked Seats    : </span></th>
      <th width="571" scope="col"><div align="center">
        <textarea name="text" cols="30" rows="5" readonly="true" id="booked_seats"></textarea>
      </div></th>
    </tr>
    <tr>
      <th scope="row"><span class="style56">Number Of Seats :</span></th>
      <td><div align="center">
        <input name="text2" type="text" id="number_seats" size="10" readonly="true" />
      </div></td>
    </tr>
    <tr>
      <th scope="row"><span class="style56">Total Cost </span></th>
      <td><div align="center">
        <span class="style1">`</span>
        <input name="text22" type="text" id="cost" size="10" readonly="true" />
      </div></td>
    </tr>
    <tr>
      <th colspan="2" scope="row"><div align="center">
	  <input type="image" name="image" src="img/booknow.gif" onclick="Next()" /></div></th>
    </tr>
  </table>
  </form>
</body>
</html>
