<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Update driver details</title>
	<style>
table, td, th {  
  border: 1px solid #802b00;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  padding: 20px;
}
	</style>
</head>
<body>

	<%
		String driverID = request.getParameter("driverID");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String vehicle_type = request.getParameter("vehicle_type");
	%>
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>Driver ID</td>
			<td><input type="text" name="driverID" value="<%= driverID %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Driver Address</td>
		<td><input type="text" name="address" value="<%= address %>"></td>
	</tr>
	<tr>
		<td>Driver Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>Driver Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Vehicle Type</td>
		<td><input type="text" name="vehicle_type" value="<%= vehicle_type %>"></td>
	</tr>		
	</table>
	<br>
	
	<input type="submit" name="submit" value="Update">
	</form>
	
</body>
</html>