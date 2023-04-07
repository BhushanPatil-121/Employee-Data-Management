<%@page import="java.util.List"%>
<%@page import="com.jspider.springmvc.pojo.EmployeePOJO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />

<%
String msg = (String) request.getAttribute("msg");
List<EmployeePOJO> employees = (List<EmployeePOJO>) request.getAttribute("empList");
EmployeePOJO employee = (EmployeePOJO) request.getAttribute("emp");
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
	
	<%if(employee != null){ %>
	<div id="c1" align="center" style="border-bottom: 0px solid">
				<form action="./updateData" method="post">
		<fieldset>
				<legend>UPDATE EMPLOYEE DATA</legend>
				<table>
					<tr hidden="true">
						<td>Id</td>
						<td><input type="text" name="id" placeholder="Enter Your Name" required="required" value="<%=employee.getId() %>" ></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name" placeholder="Enter Your Name" required="required" value="<%=employee.getName() %>"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" placeholder="Enter Your Email" required="required" value="<%=employee.getEmail()%>"></td>
					</tr>
					<tr>
						<td>Contact</td>
						<td><input type="number" maxlength="10" min="10" name="contact" required="required" placeholder="Enter Your Contact" value="<%=employee.getContact() %>" ></td>
					</tr>
					<tr>
						<td>Designation</td>
						<td><input type="text" name="designation" placeholder="Enter Your Job Role" required="required" value="<%=employee.getDesignation() %>" ></td>
					</tr>
					<tr>
						<td>Salary</td>
						<td><input type="number" name="salary" placeholder="Enter Your Salary" required="required" value="<%=employee.getSalary() %>" ></td>
					</tr>
				</table>
			</fieldset>
			<button type="submit">UPDATE</button>
			</form>
			</div>
		<%}else{ %>
		<div id="c1" >
		<form action="./update" method="post">
			<fieldset>
				<legend> - Update Employee - </legend>
				<table style="width: 450px;">
					<tr>
						<td class="id">Enter ID</td>
						<td ><input type="number" name="id" required="required"></td>
					</tr>
				</table>
			<button type="submit">SELECT</button>
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
		
		<%
		}
		%>
		
		
</div>
</body>
</html>