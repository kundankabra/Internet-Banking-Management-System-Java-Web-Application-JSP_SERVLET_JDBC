<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="net.javaguides.login.database.*"%>   
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
<%@page import="net.javaguides.login.bean.LoginBean"%>
<%@page import="net.javaguides.login.database.LoginDao"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

li a:hover {
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

.lapimg {
	width: 100%;
	height: 750px;
}

.imgcontainer {
	width: 100%;
	position: relative;
	font-family: Arial;
}

.text-block1 {
	position: absolute;
	top: 40px;
	left: 30px;
	background-color: transparent;
	color: black;
	padding-left: 20px;
	padding-right: 20px;
	text-align: justify;
	font-size: 17px;
}

.welcome {
	font-size: 50px;
	color: darkorange;
}

.op {
	font-weight: 500;
	color: #007b5e;
	line-height:1.5em;
}
</style>

</head>
<body>
<div class="navbar">
		<ul>
			<li><a href="home.jsp" class="active">HOME </a></li>
			<li><a href="profile.jsp">VIEW PROFILE </a></li>
			<li><a href="transfer.jsp">TRANSFER MONEY </a></li>
			<li><a href="summary.jsp">SUMMARY</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
			<li style="float: right" class="brand">KPKVM BANK</li>
		</ul>
	</div>
           
          <div class="imgcontainer">
		<img src="images/1.jpeg" alt="laptop image" class="lapimg">
		<div class="text-block1">

			<br>
			<br>
			
			<br>
			<br> <span class="welcome">WELCOME
			<%=session.getAttribute("Name")%>
			</span> <br>
			<br>
			<br>
			<p>
				<span style="font-size: 16px; font-weight: 600;">KPKVM</span> Bank's
				Online portal is designed to help you<br> perform selected
				banking operations from anywhere and anytime!
			</p>
			You can perform the following operations: <br>
			<div class="op">
				<br>* VIEW YOUR ACCOUNT PROFILE AND ACCOUNT BALANCE <br>* TRANSFER MONEY FROM
				ONE ACCOUNT TO ANOTHER IN SAME BRANCH <br>* VIEW YOUR ACCOUNT
				SUMMARY
			</div>
			<hr>
			<p>You can also <span style="font-size: 18px; font-weight: 400;color:#007b5e;">CONTACT US</span>. We are extensively available for our
				users 24*7</p>


		</div>

	</div>    
           
             
 
</body>
</html>