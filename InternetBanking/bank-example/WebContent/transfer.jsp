<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRANSFER MONEY | KPKVM BANK | BUDRUK</title>


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

/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

/* Firefox */
input[type=number] {
	-moz-appearance: textfield;
}
</style>

</head>
<body>

	<div class="navbar">
		<ul>
			<li><a href="homi.jsp">HOME </a></li>
			<li><a href="profile.jsp">VIEW PROFILE </a></li>
			<li><a href="transfer.jsp" class="active">TRANSFER MONEY </a></li>
			<li><a href="summary.jsp">SUMMARY</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li><li><a></a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
			<li style="float: right" class="brand">KPKVM BANK</li>
		</ul>
	</div>



	<div class="container"
		style="margin-right: 13%; margin-left: 15%; margin-top: 5%; background-color: white; border-radius: 5px; background-image: url('images/transfer1.jpg'); background-size: 70%; background-repeat: no-repeat; background-position: 320px 25px;">
		<br>
		<h1 style="color: darkorange; font-weight: 400; margin-left: 3%;">TRANSFER
			AMOUNT</h1>
		<hr style="width: 40%; color: orange; margin-left: 3%;">
		<p style="margin-left: 3%; color: #007b5e;">
			You can transfer money from your account <br>to another account
			in the same bank
		</p>
		<p style="margin-left: 3%;">Minimum amount : Rs. 100</p>
		<p style="margin-left: 3%;">Maximum amount : Rs. 50000</p>
		<form method="post" action="Transaction">
			<table
				style="border: 2px solid #007b5e; background-color: #eee; width: 30%; border-radius: 5px; margin-left: 3%;">
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr style="margin-top: 5%;">
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><input type="hidden" name="saccNumber" id="myText" value='<%=session.getAttribute("Acno")%>'
						style="width: 90%; border-radius: 5px;"></td>
						<td><input type="hidden" name="balance"  value='<%=session.getAttribute("Bal")%>'
						style="width: 90%; border-radius: 5px;"></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr style="margin-top: 5%;">
					<td>Account No. of Receiver</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><input type="number" name="raccNumber" min="1"
						style="width: 90%; border-radius: 5px;" required></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td>Amount</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><input type="number" name="amount" min="100" max="50000"
						style="width: 90%; border-radius: 5px;" required></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><button type="submit" value="TRANSFER"
							style="background-color: #007b5e; color: white; padding: 5px;">TRANSFER
						</button></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
			<br>
		</form>

	</div>



</body>
</html>