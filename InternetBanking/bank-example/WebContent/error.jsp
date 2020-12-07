<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	background-color: white;
}

.frm {
	background-color: #eee;
	padding: 20px;
	width: 50%;
	margin-left:28%;
	margin-top:10%;
	border-radius:20px;
	line-height:1.3em;
}

.header {
	color: #007b5e;
	font-weight:200;
	text-decoration:none;
	font-size:34px;
	margin-top:5%;
	padding:40px;
}

.nav1{
background-color:#333;
color:#eee;
margin-right:2%;
font-weight:200;
float:right;
text-decoration:none;
padding:10px;
}
</style>

</head>
<body>
<br>
<div class="container-fluid">
<a href="login.jsp" class="header"> KPKVM BANK</a>

<a href="newAccount.jsp" class="nav1">REQUEST A NEW ACCOUNT</a>
</div>
<br>
<hr>

<div  class="container frm">
<h2 style="color:red">:ERROR</h2>
WRONG CREDINTIALS ENETERED. CLICK <a href="login.jsp">here</a> TO GO BACK AND <span style="color:#007b5e">TRY AGAIN!</span>
</div>
</body>
</html>