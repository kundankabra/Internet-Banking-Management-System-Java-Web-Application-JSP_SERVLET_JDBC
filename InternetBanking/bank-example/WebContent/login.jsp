<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KPKVM BANK</title>
<style>
body {
	background-color: white;
	 background-image: url('images/why-us.png');
	  background-repeat:no-repeat;
    background-size: 40%; 
	background-position: 600px 100px;
}

.frm {
	background-color: #eee;
	padding: 20px;
	width: 20%;
	margin-left:17%;
	margin-top:10%;
	border: 2px solid #007b5e;
	border-radius:20px;
	height:250px;
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
  <h2 style="color:darkorange;">Customer Login Form</h2>
  <hr>
	<br>
        <form action="home.jsp" method="post">
            <table>
                <tr>
                    <td>Account No.</td>
                    <td><input type="number" name="accNo"  min="1" max="50000" style="border-radius:5px;width: 90%;" required /></td>
                </tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" style="border-radius:5px;width: 90%;" required  /></td>
                </tr>
	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
            </table>
            <input type="submit" value="LOGIN" />
        </form>
</div>
</body>
</html>