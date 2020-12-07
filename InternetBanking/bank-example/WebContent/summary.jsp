<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUMMARY | KPKVM BANK | BUDRUK</title>


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
</style>

</head>
<body>

<div class="navbar">
		<ul>
			<li><a href="homi.jsp">HOME </a></li>
			<li><a href="profile.jsp">VIEW PROFILE </a></li>
			<li><a href="transfer.jsp">TRANSFER MONEY </a></li>
			<li><a href="summary.jsp" class="active">SUMMARY</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
			<li style="float: right" class="brand">KPKVM BANK</li>
		</ul>
	</div>

<div class="container" style="background-color:white;border-radius:10px;margin-top:5%;margin-left:15%;margin-right:15%;">
<div style="margin-left:2%;margin-top:2%;">
<br>
<span style="color:darkorange;font-weight:400;margin-left:2%;margin-top:2%;font-size:28px;">ACCOUNT SUMMARY</span>
<hr style="width:40%;color:orange;margin-left:2%;">

<br>
<span style="padding:15px;color:#333;">CURRENT BALANCE :
<%=session.getAttribute("Bal")%>  
   </span><br><br>
<span style="padding:15px;color:#333;">ACCOUNT NO :  
<% String accNo = (String)session.getAttribute("Acno");
	out.print(accNo);
%>
</span><br><br>
<span style="padding:15px;color:#333;">NAME : 
<%=session.getAttribute("Name")%>
</span><br>
<br><br>
<h2 align="center"><font><strong>YOUR ACCOUNT SUMMARY</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b> TRANSACTION ID</b></td>
<td><b>SENDER ACCOUNT</b></td>
<td><b>RECEIVER ACCOUNT</b></td>
<td><b>AMOUNT</b></td>
<td><b>DATE AND TIME</b></td>
</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM transaction WHERE senderAcc = '" + accNo + "' OR receiverAcc ='" + accNo + "' ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("transactionID") %></td>
<td><%=resultSet.getString("senderAcc") %></td>
<td><%=resultSet.getString("receiverAcc") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("timestamp") %></td>

</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><br>

</div>
</div>

</body>
</html>