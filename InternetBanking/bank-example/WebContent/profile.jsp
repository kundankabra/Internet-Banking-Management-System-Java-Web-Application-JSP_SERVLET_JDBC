<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROFILE | KPKVM BANK | BUDRUK</title>

<style>
body {
	background-color: #eee;
}

.navbar {
	background-color: #333;
	margin-top: 0;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #e7e7e7;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 16px 16px;
	text-decoration: none;
	font-size: 12px;
}

li a:hover{
	background-color: darkorange;
}

li a.active {
	color: white;
	background-color: #4CAF50;
}

.brand {
	color: darkorange;
	text-align: center;
	padding: 12px 14px;
	font-size: 20px;
	font-weight: 200;
}
</style>


</head>
<body>

<div class="navbar">
		<ul>
			<li><a href="homi.jsp" >HOME </a></li>
			<li><a href="profile.jsp" class="active">VIEW PROFILE </a></li>
			<li><a href="transfer.jsp">TRANSFER MONEY </a></li>
			<li><a href="summary.jsp">SUMMARY</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
			<li style="float: right" class="brand">KPKVM BANK</li>
		</ul>
	</div>

<div class="container" style="margin-right:13%;margin-left:15%;margin-top:5%;background-color:white;width:70%;background-image:url('images/bank_1.png');border-radius:10px;">
<br>
<span style="color:darkorange;font-weight:300;font-size:30px;margin-left:1.5%;margin-top:5%;">PROFILE</span>
<hr style="width:50%;margin-right:48.4%;">
<br>
<span style="padding:15px;color:#333;">ACCOUNT BALANCE :
<span style="padding:15px;color:darkorange;font-weight:500;text-decoration:underline;"><%=session.getAttribute("Bal")%>  </span>
   </span><br><br>
<span style="padding:15px;color:#333;">ACCOUNT NO : 
<span style="padding:15px;color:darkorange;font-weight:500;text-decoration:underline;"><%=session.getAttribute("Acno")%></span>
</span><br><br>
<span style="padding:15px;color:#333;">NAME : 
<span style="padding:15px;color:darkorange;font-weight:500;text-decoration:underline;"><%=session.getAttribute("Name")%></span>
</span><br><br>
<hr style="width:50%;margin-right:48.4%;">
<p style="color:green;font-weight:300;padding:15px;">You can update your profile by visiting the bank</p>
<br>
</div>
</body>
</html>