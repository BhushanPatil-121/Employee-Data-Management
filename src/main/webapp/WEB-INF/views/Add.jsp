<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> - Employee Management - </title>
<style type="text/css">
body {
	
	background-image:
		url('https://images.unsplash.com/photo-1615715035999-516964e790a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80');
	background-size: 100%;
	overflow: hidden;
	
}
legend{
font-size: 28px;
text-transform: uppercase;
}
table{
padding: 10px;
width: 500px;
}
td{
	padding: 10px;
	font-size: 23px;
}
input{
width:350px;
padding: 5px;
font-size: 20px;
}
button {
	padding: 8px 16px;
	font-size: 20px;
	color: white;
	background-color: #333;
	border-radius: 5px;
	font-family: 'Kanit', sans-serif;
}
button:hover {
	background-color: #111;
	border-radius: 5px;
	box-shadow: 2px 2px 20px #595959;
}

h1{
margin-top:35px;
	text-align: center;
	font-size: 35px;
	background-color: #FFFF8F;
}
#p{
	height:580px;
	width:800px;
	margin:0 auto;
	padding-top:30px;
	display: flex;
	justify-content: center;
	align-items: start;
	background-image:
		url("https://images.unsplash.com/photo-1615715035999-516964e790a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80");
	background-position: left;
	background-size: cover;
	background-repeat:no-repeat;
	box-shadow: 2px 2px 20px #595959;	
}
</style>
</head>
<body>
	<div id="p">
	<div align="center">
		<form action="./add" method="post">
			<fieldset>
				<legend>ADD EMPLOYEE DATA</legend>
				<table>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name" placeholder="Enter Your Name" required="required"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" placeholder="Enter Your Email" required="required"></td>
					</tr>
					<tr>
						<td>Contact</td>
						<td><input type="number" maxlength="10" min="10" name="contact" placeholder="Enter Your Contact" required="required" ></td>
					</tr>
					<tr>
						<td>Designation</td>
						<td><input type="text" name="designation" placeholder="Enter Your Job Role" required="required"></td>
					</tr>
					<tr>
						<td>Salary</td>
						<td><input type="number" name="salary" placeholder="Enter Your Salary" required="required"></td>
					</tr>
				</table>
			</fieldset>
			<button type="submit">ADD</button>
			<%
			if (msg != null) {
			%>
			<h1><%=msg%></h1>
			<%
			}
			%>
		</form>
	</div>
</div>
</body>
</html>