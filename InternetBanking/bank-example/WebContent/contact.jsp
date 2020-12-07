<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
			<li><a href="profile.jsp">VIEW PROFILE </a></li>
			<li><a href="transfer.jsp">TRANSFER MONEY </a></li>
			<li><a href="summary.jsp">SUMMARY</a></li>
			<li><a href="contact.jsp" class="active">CONTACT US</a></li>
			<li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
			<li style="float: right" class="brand">KPKVM BANK</li>
		</ul>
	</div>

<div class="container" style="background-color:white;border-radius:10px;margin-top:5%;margin-left:15%;margin-right:15%;background-image:url('images/contact1.png');background-size:54%;background-repeat:no-repeat;background-position: 370px 4px;">
<div style="margin-left:2%;margin-top:2%;">
<br>
<span style="color:darkorange;font-weight:400;margin-left:2%;margin-top:2%;font-size:30px;">CONTACT US</span>
<hr style="width:36%;color:orange;margin-left:2%;">
<br>
<pre style="line-height:1.7em;margin-left:2%;font-size:13px;"><span style="font-weight:400;color:#007b5e">Head Branch:</span> 
679, Rasta Peth,
Pune - 411048,
Maharashtra, INDIA.
Tel No. : 0240-2241298
Mail    : <span style="color:blue;">support@kpkvm.com</span>
</pre>
<br>
<hr style="width:59%;color:orange;margin-left:2%;">
<br>
<span style="color:green;font-weight:300;padding:15px;">*Bank is open Mon-fri , 9am to 4pm</span>
<br><br>
</div>
</div>



</body>
</html>