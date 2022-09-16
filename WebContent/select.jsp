<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Select Driver</title>
	<style type="text/css">
			body{
			font-family: Hind SemiBold;
			background-color: #231F1E ;
			background-image: url("img/banner-9.jpg");
		    }

		input[type=text]{
			width: 50%;
			padding: 12px 15px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid whitesmoke;
    		box-sizing: border-box;
    		border-radius: 20%;
			}
			
			
			
.button {
  background-color: #4CAF50;
  border: 1;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
   font-weight: bold;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.labale{


color:red;

}


.header{

color:red;
}
			
	</style>
	
</head>
<body>
<center> 
  <h1 class="header">TO VIEW DRIVER PROFILE.</h1>
  <br><br><br><br>
    
	<form action="select" method="post">
		<label for="adname" class="labale"><b>Driver Name</b></label> 
		<input type="text" name="dname" placeholder="Enter driver name"><br><br>
		
		<input type="submit" name="submit" value="Enter" class="button">
	</form>
</center>
</body>
</html>