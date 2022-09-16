<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style> 
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}


	body{
			font-family: Hind SemiBold;
			background-color:#231F1E;
			background-image: url("img/banner-9.jpg");
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

.formm{

position:absolute;
top:200px;
width:800px;
color:#ff0000;


}


</style>





<meta charset="ISO-8859-1">
<title>Insert drivers data</title>
</head>
<body>
	
	<form action="insert" method="post" class="formm">
		Name <input type="text" name="name"><br>
		Address <input type="text" name="address"><br>
		Phone Number <input type="text" name="phone"><br>
		Email <input type="text" name="email"><br>
		Vehicle Type <input type="text" name="vehicle_type"><br>
		
		<input type="submit" name="submit" value="Create Driver" class="button">
	</form>
	
</body>
</html>