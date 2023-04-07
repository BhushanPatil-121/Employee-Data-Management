<%@page import="java.util.List"%>
<%@page import="com.jspider.springmvc.pojo.EmployeePOJO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />

<%
String msg = (String) request.getAttribute("msg");
List<EmployeePOJO> employees = (List<EmployeePOJO>) request.getAttribute("empList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management</title>
<style type="text/css">
body {
	
	background-image:
		url('https://images.unsplash.com/photo-1615715035999-516964e790a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80');
	background-size: 100%;
	
	
}
legend{
font-size: 28px;
text-transform: uppercase;
}
.table{
margin-top:30px;
border: 2px solid black;
border-collapse: collapse;
}
.tr td{
	font-size:23px;
	color: #111;
	background-color: white;
	font-family: 'Kanit', sans-serif;
}
td{
	padding:5px 20px;
	font-size: 20px;
}
input{
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

h2{
	margin:10px;
	text-align: center;
	font-size: 30px;
	width: inherit;
	background-color: #FFFF8F;
}
#p{
	height:610px;
	width:1400px;
	margin:0 auto;
	padding-top:20px;
	margin-top: -20px;
	display: flex;
	justify-content: center;
	align-items: start;
	background-image:
		url("https://images.unsplash.com/photo-1615715035999-516964e790a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80");
	background-position: left;
	background-size: cover;
	background-repeat:no-repeat;
	box-shadow: 2px 2px 20px #595959;
	overflow-X:hidden;	
	overflow-Y: scroll;
	padding-bottom: 20px;
}
#c1{
	width:1300px;
	margin:0 auto;
	border-bottom:2px solid #595959;
	background-image:
		url("https://images.unsplash.com/photo-1615715035999-516964e790a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80");
	background-position: left;
	background-size: cover;
	background-repeat:no-repeat;
	position: fixed;
	display: flex;
	justify-content: center;
	align-items: center;
}
#c2{

	margin-top: 250px;
}
thead {
	text-transform: uppercase;
	background-color: grey;
}
.id{
	width: 300px;
	padding:20px;
}
fieldset{
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<div id="p">
		<div id="c1" >
		<form action="./remove" method="post">
			<fieldset>
				<legend> - Remove Employee - </legend>
				<table style="width: 450px;">
					<tr>
						<td class="id">Enter ID</td>
						<td ><input type="number" name="id" required="required"></td>
					</tr>
				</table>
			<button type="submit">REMOVE</button>
			<%if (msg != null){ %>
		<h2>
			<%=msg%>
		</h2>
		<%} %>
		<%
		if (employees != null) {
		%>
			</fieldset>
		</form>
		
		</div>
		
		<div id="c2">
		<table border="2px solid black" class="table">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Email</td>
					<td>Contact</td>
					<td>Designation</td>
					<td>Salary</td>
				</tr>
			</thead>
			<%
			for (EmployeePOJO pojo : employees) {
			%>
			<tr class="tr">
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td><%=pojo.getEmail()%></td>
				<td><%=pojo.getContact()%></td>
				<td><%=pojo.getDesignation()%></td>
				<td><%=pojo.getSalary()%></td>
			</tr>
			<%
			}
			%>
		</table>
		</div>
		<%
		}
		%>
		
</div>
</body>
</html>