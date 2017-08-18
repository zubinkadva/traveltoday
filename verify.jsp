<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Password Recovery Step 2</title>
<%String mail=request.getParameter("mail");%>
<%session.setAttribute("ses",mail);%>
<%!public String s_ques,s_answ,trims_answ;%>
<%@ page import="java.sql.*"%>
<%Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:BusReservation");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select secret_question,secret_answer from login_master,passenger where login_master.username=passenger.username and pass_email='"+mail+"'");
while(rs.next()){
s_ques=rs.getString("secret_question");
s_answ=rs.getString("secret_answer");
}
con.close(); st.close();
%>
<script>
var db_answ="<%=s_answ%>";
if(db_answ=="null")
window.location="nonexist.jsp";


function dff() {
var en_answ=document.form1.answer.value;
var db_answ="<%=s_answ%>";
var trimdb=db_answ.split(' ').join('');
var trimen=en_answ.split(' ').join('');

	if(en_answ=="")
	alert("Please Enter your secret Answer");
	else if(trimen==trimdb)
	document.form1.action="password_correct.jsp?right=s_answ";
	else
	alert("Please verify your Secret Answer");
}
</script>
<style type="text/css">
<!--
body {
	background-color: #333399;
	background-image: url(img/BG_4.JPG);
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
.style37 {font-size: 18px; color: #00FF00; font-family: "Times New Roman", Times, serif; font-weight: bold; }
.style1 {	color: #006600;
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
	font-family: Rockwell;
}
.style38 {color: #0000FF}
.style39 {font-family: "Times New Roman", Times, serif; font-weight: bold; font-size: 18px;}
.style53 {font-size: 18px; color: #000066; font-family: "Times New Roman", Times, serif; font-weight: bold; }
.style54 {color: #000066}
.style55 {color: #FF0000}
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
<table width="958" border="0">
  <tr>
    <th colspan="2" scope="col"><span class="style1">Password Recovery (Step 2)</span></th>
  </tr>
  <tr>
    <th rowspan="9" scope="col"><img src="img/forgot.jpg" width="199" height="203" /></th>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col"><div align="center" class="style38"><span class="style39">Now Enter your secret answer </span></div></th>
  </tr>
  <tr>
    <th scope="col"><div align="center" class="style38"><span class="style39">to the question you have given </span></div></th>
  </tr>
  <tr>
    <th scope="col"><div align="center" class="style38"><span class="style39">during registration.</span></div></th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th scope="col"><span class="style37">NOTE THAT THE ANSWER IS <span class="style55">CASE SENSITIVE </span></span></th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
  </tr>
  
  
  <tr>
    <th colspan="2" scope="row">&nbsp;</th>
  </tr>
  <tr>
    <th width="406" scope="row"><span class="style53">Entered E-Mail Address : </span></th>
    <th width="542" scope="row"><strong><span class="style53"> <%=mail%>&nbsp;</span></strong></th>
  </tr>
  <tr>
    <th scope="row"><span class="style53">Secret Question : </span></th>
    <th scope="row"><span class="style53"><%=s_ques%></span></th>
  </tr>
 
    <th scope="row"><span class="style53">Your Secret Answer : </span></th>
	<th scope="row"> <form name="form1"  method="post" action="javascript:void(0)">
        <form action="javascript:void(0)"  method="post" name="form1" class="style54"> <input name="answer" type="text" size="60" />

  <tr>
    <th scope="row"><span class="style53">When Finished Click On &quot;Send Email&quot;</span></th>
    <th scope="row">

	   <input name="imageField" type="image" onclick="dff()" src="img/send-email-blog-button-small-4apr2011.png"/>
     </form>	      </th>
	     
  </tr>
</table>
</body>
</html>
