<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>DELETE DRIVER DETAILS</title>
	<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
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
	
	<h1>Driver Account Delete</h1>
	
	<form action="delete" method="post">
	<table>
		<tr>
			<td>Driver ID</td>
			<td><input type="text" name="driverID" value="<%= driverID %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Address</td>
			<td><input type="text" name="address" value="<%= address %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Phone number</td>
			<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
		</tr>
		<tr>
			<td>Driver Email</td>
			<td><input type="text" name="email" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<td>Vehicle Type</td>
			<td><input type="text" name="vehicle_type" value="<%= vehicle_type %>" readonly></td>
		</tr>		
	</table>
	<br>
	
	<input type="submit" name="submit" value="Delete Driver's Account">
	</form>
	
</body>
</html>