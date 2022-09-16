<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Display Details</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>

<body>
	<table>
	<c:forEach var="driver" items="${driverDetails}">
	
	<c:set var="driverID" value="${driver.driverID}"/>
	<c:set var="name" value="${driver.name}"/>
	<c:set var="address" value="${driver.address}"/>
	<c:set var="phone" value="${driver.phone}"/>
	<c:set var="email" value="${driver.email}"/>
	<c:set var="vehicle_type" value="${driver.vehicle_type}"/>
	
	<tr>
		<td>Driver ID</td>
		<td>${driver.driverID}</td>
	</tr>
	<tr>
		<td>Driver Name</td>
		<td>${driver.name}</td>
	</tr>
	<tr>
		<td>Driver Address</td>
		<td>${driver.address}</td>
	</tr> 
	<tr>
		<td>Driver Phone</td>
		<td>${driver.phone}</td>
	</tr>
	<tr>
		<td>Driver Email</td>
		<td>${driver.email}</td>
	</tr>
	<tr>
		<td>Vehicle Type</td>
		<td>${driver.vehicle_type}</td>
	</tr>
	
	</c:forEach>
	</table>
	<br>
	
	<c:url value="updatedriver.jsp" var="driverupdate">
		<c:param name="driverID" value="${driverID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="vehicle_type" value="${vehicle_type}"/>
	</c:url>
	
	<a href="${driverupdate}">
	<input type ="button" name ="update" value ="Update Driver's Details">
	</a>
	
	<br>
	<br>
	
	<c:url value="deletedriver.jsp" var="driverdelete">
		<c:param name="driverID" value="${driverID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="vehicle_type" value="${vehicle_type}"/>
	</c:url>
	
	<a href="${driverdelete}">
	<input type ="button" name ="delete" value ="Delete Driver's Account">
	</a>
	
</body>
</html>