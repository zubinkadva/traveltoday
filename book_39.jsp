<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Book 39</title>

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
}%>

<script>
var varr="<%=obt%>";
var fare_mul="<%=far%>";
var number=0;
var cca1=0;var cca2=0;var cca3=0;var cca4=0;var cca5=0;var cca6=0;var cca7=0;var cca8=0;
var ccb1=0;var ccb2=0;var ccb3=0;var ccb4=0;var ccb5=0;var ccb6=0;var ccb7=0;var ccb8=0;
var ccc1=0;var ccc2=0;var ccc3=0;var ccc4=0;var ccc5=0;var ccc6=0;var ccc7=0;var ccc8=0;
var ccd1=0;var ccd2=0;var ccd3=0;var ccd4=0;var ccd5=0;var ccd6=0;var ccd7=0;var ccd8=0;
var cce1=0;var cce2=0;var cce3=0;var cce4=0;var cce5=0;var cce6=0;var cce7=0;
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

function ca5(a) {
	if(cca5==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca5=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca5=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function ca6(a) {
	if(cca6==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca6=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca6=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function ca7(a) {
	if(cca7==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca7=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca7=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function ca8(a) {
	if(cca8==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cca8=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cca8=0;
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

function cb5(a) {
	if(ccb5==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb5=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb5=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cb6(a) {
	if(ccb6==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb6=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb6=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cb7(a) {
	if(ccb7==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb7=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb7=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cb8(a) {
	if(ccb8==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccb8=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccb8=0;
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

function cc5(a) {
	if(ccc5==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc5=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc5=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cc6(a) {
	if(ccc6==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc6=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc6=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cc7(a) {
	if(ccc7==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc7=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc7=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cc8(a) {
	if(ccc8==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccc8=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccc8=0;
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
function cd5(a) {
	if(ccd5==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd5=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd5=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cd6(a) {
	if(ccd6==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd6=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd6=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cd7(a) {
	if(ccd7==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd7=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd7=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function cd8(a) {
	if(ccd8==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	ccd8=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	ccd8=0;
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
function ce5(a) {
	if(cce5==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce5=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce5=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function ce6(a) {
	if(cce6==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce6=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce6=0;
 	number--;
 	}
document.getElementById('booked_seats').value=array;
document.getElementById('number_seats').value=number;
document.getElementById('cost').value=number*fare_mul;
}
function ce7(a) {
	if(cce7==0) {
	document.getElementById(a).src="img/booked_seat.jpg";
 	array.push(a);
 	cce7=1;
 	number++;
 	}
 	else {
 	document.getElementById(a).src="img/av_seat.jpg";
 	removeByElement(array,a);
 	cce7=0;
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
body {
	background-color: #003399;
	background-image: url(img/BG1.JPG);
}
.style38 {
	font-size: 23px;
	font-family: Rockwell;
	color: #6600FF;
}
.style51 {color: #6600FF; font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px; }
.style52 {color: #6600FF}
-->
</style>
</head>

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
      <th class="style38" scope="col">Booking Seats for 39 Seater Bus </th>
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
      <th scope="row"><span class="style51">Available Seat </span></th>
      <td><div align="center" class="style51">Selected Seat </div></td>
      <td><div align="center" class="style51">Reserved Seat </div></td>
    </tr>
  </table>
  <p></p>
  <table width="941" border="0">
    <tr>
      <th width="141" rowspan="3" scope="col"><span class="style52">FRONT</span></th>
      <th width="674" scope="col"><div align="center">
        <table width="200" border="0" align="center">
          <tr>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A1" onclick="ca1(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A2" onclick="ca2(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A3" onclick="ca3(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A4" onclick="ca4(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A5" onclick="ca5(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A6" onclick="ca6(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A7" onclick="ca7(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="A8" onclick="ca8(this.id)"/></th>
          </tr>
          <tr>
            <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B1" onclick="cb1(this.id)"/></th>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B2" onclick="cb2(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B3" onclick="cb3(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B4" onclick="cb4(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B5" onclick="cb5(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B6" onclick="cb6(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B7" onclick="cb7(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="B8" onclick="cb8(this.id)"/></td>
          </tr>
          <tr>
            <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C1" onclick="cc1(this.id)"/></th>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C2" onclick="cc2(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C3" onclick="cc3(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C4" onclick="cc4(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C5" onclick="cc5(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C6" onclick="cc6(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C7" onclick="cc7(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="C8" onclick="cc8(this.id)"/></td>
        </tr
        ></table>
      </div>      </th>
      <th width="112" rowspan="3" scope="col"><span class="style52">BACK</span></th>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">
        <table width="200" border="0" align="center">
          <tr>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D1" onclick="cd1(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D2" onclick="cd2(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D3" onclick="cd3(this.id)"/></th>
            <th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D4" onclick="cd4(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D5" onclick="cd5(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D6" onclick="cd6(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D7" onclick="cd7(this.id)"/></th>
			<th scope="col"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="D8" onclick="cd8(this.id)"/></th>
          </tr>
          <tr>
            <th scope="row"><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E1" onclick="ce1(this.id)"/></th>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E2" onclick="ce2(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E3" onclick="ce3(this.id)"/></td>
            <td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E4" onclick="ce4(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E5" onclick="ce5(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E6" onclick="ce6(this.id)"/></td>
			<td><img src="img/av_seat.jpg" width="64" height="55" border="2" id="E7" onclick="ce7(this.id)"/></td>
          </tr>
        </table>
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="939" border="0" background="img/abstract_0037.jpg">
  <form action="javascript:window.void(0)">
    <tr>
      <th width="358" scope="col"><span class="style51">Booked Seats    : </span></th>
      <th width="571" scope="col"><div align="center">
          <textarea name="text" cols="30" rows="5" readonly="true" id="booked_seats"></textarea>
      </div></th>
    </tr>
    <tr>
      <th scope="row"><span class="style51">Number Of Seats :</span></th>
      <td><div align="center">
          <input name="text2" type="text" id="number_seats" size="10" readonly="true" />
      </div></td>
    </tr>
    <tr>
      <th scope="row"><span class="style51">Total Cost </span></th>
      <td><div align="center"> <span class="style1">`</span>
              <input name="text22" type="text" id="cost" size="10" readonly="true" />
      </div></td>
    </tr>
    <tr>
      <th colspan="2" scope="row"><input type="image" name="image" src="img/booknow.gif" onclick="Next()" /></th>
    </tr>
	</form>
  </table>
</body>
</html>
