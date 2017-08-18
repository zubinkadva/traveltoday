<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Booking</title>
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="javaScript" type="text/javascript" src="calendar.js"></script>
<link href="calendar.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>

<%@ page import="java.sql.*"%>
<%!String aaa;%>
<%String isLogged=(String)session.getAttribute("UserName");%>
<%String is=(String)session.getAttribute("ThePid");%>

<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select booked_seats from passenger where pid="+is);
while(rs.next()){
aaa=rs.getString(1);
}
session.setAttribute("IsBooked",aaa);
%>



<script language="JavaScript" type="text/javascript">
function AhmedabadClick() {
document.tel.img1.src="img/tel/Ahmedabad.png";
}

function BangaloreClick() {
document.tel.img1.src="img/tel/Bangalore.png";
}

function MumbaiClick() {
document.tel.img1.src="img/tel/Mumbai.png";
}

function PuneClick() {
document.tel.img1.src="img/tel/Pune.png";
}

function GoaClick() {
document.tel.img1.src="img/tel/Goa.png";
}

function modal_Offers() {
	if (window.showModalDialog) {
 	window.showModalDialog("Offer_Jan_12.jsp","name","dialogWidth:860px;dialogHeight:450px");
	}
	else {
	window.open('Offer_Jan_12.jsp','name','height=500,width=500,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no ,modal=yes');
	}
} 

function modal_Print() {
	if (window.showModalDialog) {
 	window.showModalDialog("print.jsp","name","dialogWidth:790px;dialogHeight:350px");
	}
	else {
	window.open('print.jsp','name','height=500,width=500,resizable=no ,modal=yes');
	}
} 

function modal_Cancel() {
	if (window.showModalDialog) {
 	window.showModalDialog("Cancel.jsp","name","dialogWidth:900px;dialogHeight:350px");
	}
	else {
	window.open('Cancel.jsp','name','height=255,width=250,toolbar=no,directories=no,status=no,menubar=no,scrollbars=0,resizable=no ,modal=yes');
	}
} 

function Validate() {
var islog="<%=isLogged%>";
var srcIndex = document.searc.drop_src.selectedIndex;
var srcValue = document.searc.drop_src.options[srcIndex].value;
var desIndex = document.searc.drop_dest.selectedIndex;
var desValue = document.searc.drop_dest.options[desIndex].value;
var texValue = document.searc.datum1.value;
var today_date=d.getDate();
var today_month=d.getMonth()+1;
var theyear=d.getFullYear();
var obj = document.getElementById('datum1'); 
var date = obj.value.split("-")[0];
var month = obj.value.split("-")[1]; 
var year = obj.value.split("-")[2];

	if(islog=="null") {
	alert("Please Log In To Continue");
	}
	else if(srcValue == desValue) {
	alert("Source and Destination cannot be the same!");
	}
	else if(srcIndex == "0") {
		 	if(desIndex == "0") { 
			alert("Please Select a Valid Source and Destination!");
			}
			else
			alert("Please Select a Valid Source!");
	}
	else if(desIndex == "0") {
	alert("Please Select a Valid Destination!");
	}
	else if(texValue == "") {
	alert("Please Select a Valid Date!");
	}
	else if(today_month>month||today_date>date||theyear>year) {
	alert("Cannot book for a date that has already passed!");
	}
	else {
	document.searc.action="search_result.jsp";
	}
}

function goto() {
var islog="<%=isLogged%>";
var islo="<%=aaa%>";
if(islog=="null")
alert("Please Log In First");
else if(islo==null||islo==""||islo=="null")
alert("It seems that you have not booked a ticket yet");
else
window.open('print_sms.jsp');
}

function goto2() {
var islog="<%=isLogged%>";
var islo="<%=aaa%>";
if(islog=="null")
alert("Please Log In First");
else if(islo==null||islo==""||islo=="null")
alert("It seems that you have not booked a ticket yet");
else
window.open('Cancel.jsp');
}

</script>
<style type="text/css">
<!--
.style13 {font-size: 16px}
.style18 {
	font-family: harrington;
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
.style35 {
	font-family: magneto;
	font-size: 18px;
	color: #2AFF55;
}
.style36 {font-family: harrington}
.style37 {font-family: harrington; font-size: 36px; }
.style38 {font-size: 36px}
.style39 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
	font-weight: bold;
	font-size: 16px;
	color: #FF6666;
}
.style49 {	font-size: 18px;
	font-family: "Copperplate Gothic Light", "Copperplate Gothic Bold";
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style52 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
}
.style53 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
-->
</style>
</head>
<body bgcolor="#C0DFFD">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#3366CC">
    <td colspan="2" rowspan="2"><div align="left"><img src="img/sunsets-13460.jpg" alt="" width="295" height="154" border="0" /></div></td>
    <td height="58" colspan="2" align="center" valign="bottom" nowrap="nowrap" bgcolor="#3366CC" id="logo"><span class="style18"><span class="style19">T</span><span class="style20">r</span><span class="style21">a</span><span class="style22">v</span><span class="style23">e</span><span class="style24">l</span><span class="style25">T</span><span class="style26">o</span><span class="style34">d</span><span class="style28">a</span><span class="style29">y</span><span class="style30">.</span><span class="style31">c</span><span class="style32">o</span><span class="style33">m</span></span></td>
  </tr>

  <tr bgcolor="#3366CC">
    <td height="80" colspan="2" id="tagline" valign="top" align="center"><p align="center" class="bodyText style13">&nbsp;</p>
      <p align="center" class="bodyText style13 style35">Online Booking For Bus Tickets </p></td>
  </tr>

  <tr>
    <td colspan="4" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

  <tr bgcolor="#CCFF99">
  	<th colspan="4" id="dateformat" height="25">   
		  <marquee>
<span class="style39">Online Bus Booking and much more !&nbsp;&nbsp; </span>
  	  </marquee>
   
   		  <div align="right">
		  	<span class="style39">
	    		<script language="JavaScript" type="text/javascript">
      			document.write(TODAY);	
				</script>
	 	  </span>	      </div></th>
  </tr>
 <tr>
    <td colspan="4" bgcolor="#003366"><img src="img/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
  </tr>

 <tr>
    <td width="295" height="1177" valign="top" bgcolor="#E6F3FF">
	<table width="100%"   border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td width="100%"><p>&nbsp;</p>
            <table width="223" border="0">
              <tr>
                <th width="217" scope="col"> <%
	  String username =(String) session.getAttribute("UserName");
	  String type=(String)session.getAttribute("IsAdmin");
	  if(username!=null)  {
      out.println("Welcome "+username); %>
                  <a href="user_details.jsp">View/Update Details</a></th>
              </tr>
              <tr>
                <th scope="row"><div align="left"><a href="logout.jsp"><img src="img/logout+button.jpg" width="135" height="33" border="0" /></a>
                        <%
	 }
	 %>
                </div></th>
              </tr>
            </table></td>
        </tr>
	      <td nowrap="nowrap"><a href="home.jsp" class="style37">Home Page </a></td>
        </tr>
		<tr>
		<tr>
          <td nowrap="nowrap"><a href="customerreviews.jsp" class="style37">Testimonials </a></td>
        </tr>
        <tr>
          <td><a href="businfo.jsp" class="navText style36 style38">Bus Info </a></td>
        </tr>
        <tr>
          <td><a href="booking.jsp" class="navText style36 style38">Booking</a></td>
        </tr>
        <tr>
          <td><a href="locations.jsp" class="navText style36 style38">Locations</a></td>
        </tr>
        <tr>
          <td><a href="sitemap.jsp" class="navText style36 style38">Site Map</a></td>
        </tr>
		 <tr>
          <td><a href="aboutus.jsp" class="style37">About Us </a></td>
        </tr>
        <tr>
          <td><a href="contactus.jsp" class="style37">Contact Us </a></td>
        </tr>
      </table>
 	<br />
  	&nbsp;<br /> 	</td>
    <td colspan="3" valign="top"><table width="680" border="10">
      <tr>
        <th width="652" scope="col"><span class="style49">Booking</span></th>
      </tr>
    </table>
      <p>&nbsp;</p>
    <table width="782" border="0">
      <tr>
        <th height="39" scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
        <th scope="col">&nbsp;</th>
      </tr>
      <tr>
        <th colspan="5" scope="row"><div align="center"><img src="img/banner_dec-12.gif" width="401" height="29" /></div></th>
      </tr>
      
      <tr>
        <th scope="row">&nbsp;</th>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th scope="row">&nbsp;</th>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th colspan="5" scope="row">
		<form name="searc" id="searc" action="javascript:void(0)">
		<table width="367" border="0" align="center">
          <tr>
            <th scope="col"><span class="style52">From</span></th>
            <th scope="col"><span class="style52">To</span></th>
          </tr>
          
            <tr>
              <th scope="row"><select name="drop_src">
                  <option>--Select A Source-- </option>
                  
                  <%rs=st.executeQuery("Select distinct source from route order by 1");
while(rs.next()){
String str=rs.getString(1);%>
                  <option value="<%=str%>"><%=str%> </option>
                  <%}
				  %>
                </select>              </th>
              <td><div align="center">
                  <select name="drop_dest">
                    <option>--Select A Desination--</option>
                    <%rs=st.executeQuery("Select distinct source from route order by 1");
while(rs.next()){
String str2=rs.getString(1);%>
                    <option value="<%=str2%>"><%=str2%> </option>
                    <%}
				  con.close(); st.close();%>
                  </select>
              </div></td>
            </tr>
            <tr>
              <th scope="row"><span class="style52">Date Of Journey </span></th>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <th scope="row"><input type="text" id="datum1" name="datum1" readonly="true" />          
                &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" onclick="setYears(2008, 2012); showCalender(this, 'datum1');">
				 <img src="img/calender.png" width="17" height="13" /></a></th>
              <td>             <div align="center">
                <input type="image" src="img/searchbuses.gif" onclick="Validate()"/>
                </a></div></td>
            </tr>
 
          <tr>
            <td></td>
          </tr>
        </table>
		</form></th>
      </tr>
    </table>
	
      <p>&nbsp;</p>
	  <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center">
	          <select onChange="showCalenderBody(createCalender(document.getElementById

('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>            </td>
            <td colspan="2" align="center">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" 

id="selectYear">
				</select>			</td>
            <td align="center">
			    <a href="#" onClick="closeCalender();"><font color="#003333" 

size="+1">X</font></a>			</td>
		  </tr>
       </tbody>
	   
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
      <table width="782" border="0">
        <tr>
          <th width="403" rowspan="5" scope="col"><div align="left">
              <table width="200" border="0">
                <tr>
                  <th scope="col"><table width="397" border="0">
                      <tr>
                        <th colspan="2" scope="col"><span class="style52">Select Your City For Contact Number </span></th>
                      </tr>
                      <tr>
                        <th width="50" scope="col"><img src="img/Cartoon_phone.gif" width="78" height="80" /></th>
                        <th width="337" scope="col"> <form id="form1" name="tel">
                            <img src="img/tel/Ahmedabad.png" name="img1" width="254" height="42" id="img1" />
                        </form></th>
                      </tr>
                    </table>
                      <table width="200" border="0">
                        <tr>
                          <th scope="col"><a href="javascript:BangaloreClick()" class="style52">Bangalore</a></th>
                          <th scope="col"><a href="javascript:AhmedabadClick()" class="style52">Ahmedabad</a></th>
                        </tr>
                        <tr>
                          <th scope="col"><a href="javascript:MumbaiClick()" class="style52">Mumbai</a></th>
                          <th scope="col"><a href="javascript:PuneClick()" class="style52">Pune</a></th>
                        </tr>
                        <tr>
                          <th scope="col"><a href="javascript:GoaClick()" class="style52">Goa</a></th>
                          <th scope="col">&nbsp;</th>
                        </tr>
                    </table></th>
                </tr>
              </table>
          </div></th>
          <th colspan="8" rowspan="5" scope="col">&nbsp;</th>
          <th width="289" height="72" scope="col"><span class="style52">Offers Section </span></th>
        </tr>
        <tr>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th scope="col"><span class="style52">Do Not Forget to Check Out the Offer Of the Month. </span></th>
        </tr>
        <tr>
          <th scope="col"><span class="style52">Click on the image to find out more </span></th>
        </tr>
        <tr>
          <th scope="col"><a href="#"><img src="img/offers.gif" width="97" height="53" border="0" onclick="modal_Offers(); return false;"/></a></th>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="768" border="0">
        <tr>
          <th width="344" rowspan="18" scope="col"><table width="344" border="0">
              <tr>
                <th width="338" scope="col"><div class="style52">
                    <div align="left">TravelToday Advantages </div>
                </div></th>
              </tr>
              <tr>
                <th scope="row"> <div align="left" class="style52"><strong>Cash on delivery</strong> service of bus tickets in major cities </div></th>
              </tr>
              <tr>
                <th height="41" scope="row"><div align="left" class="style52">Book online using <strong>credit, debit cards</strong> and <strong>net banking</strong></div></th>
              </tr>
              <tr> </tr>
              <tr>
                <th scope="row"><div align="left" class="style52">Book bus tickets online for over 10000+ routes across India </div></th>
              </tr>
              <tr>
                <th scope="row"> <div align="left" class="style52">Return bus tickets reservation </div></th>
              </tr>
              <tr>
                <th scope="col">&nbsp;</th>
              </tr>
          </table></th>
          <th width="117" scope="col">&nbsp;</th>
          <th width="293" scope="col"><span class="style52">Changing your Plans ? </span></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><span class="style52">Need to Cancel Your Ticket ? </span></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><span class="style52">Do it Right Here </span></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><img src="img/down-arrow-icon.jpg" width="50" height="50" /></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col"><img src="img/remove-ticket-icon.png" width="95" height="90" /></th>
          <th scope="col"><a href="javascript:modal_Cancel()" class="style52"><a href="javascript:goto2()">Cancellation</a></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><span class="style52">Get rid of standing in long queues for booking your bus ticket. </span></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><span class="style52">Get ticket notifications via SMS </span></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><img src="img/down-arrow-icon.jpg" width="50" height="50" /></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><a href="javascript:goto()" class="style52">Print / SMS Ticket </a></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col"><img src="img/3d_text_1.gif" width="101" height="39" /></th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th width="117" scope="col">&nbsp;</th>
          <th scope="col">&nbsp;</th>
        </tr>
      </table>
      <p>&nbsp;</p>    </td>
 </tr>
  <tr>
    <td colspan="3"><p align="center"><span class="style53">&copy; Copyright Protected, 2012 </span></p>      <p>&nbsp;</p></td>
    <td width="1021"><table width="519" border="0" align="center">
      <tr>
        <td width="156" height="20"><a href="terms.jsp" class="style53">Terms Of Use </a></td>
        <td width="169"><a href="aboutus.jsp" class="style53">About TravelToday </a></td>
        <td width="180"><a href="home.jsp" class="style53">TravelToday Home</a> </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
</table>
</body>
</html>
