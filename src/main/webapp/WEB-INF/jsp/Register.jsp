<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="css/register.css" rel="stylesheet">
<title>Login</title>
<style>
body
 {
 	background-image:url("static/images/4.jpg");
 	background-repeat:no-repeat;
	background-size:1400px 700px;
 }
</style>
</head>
<body>
	<div class="front">
	<h1 style="font-size:80px;font-family:Gabriola;color:orange">New User</h1>
	 
	<form action="/register" method="post">
		<span style="font-size:25px;color:white;font-family:Times New Roman">Name</span><br>
		<input type="text" name="name" placeholder="Username" pattern="[a-z A-Z]*"required/><br>
		<span style="font-size:25px;color:white;font-family:Times New Roman">Email-ID</span><br>
		<input type="email" name="emailid" placeholder="EmailId" required/><br>
		<span style="font-size:25px;color:white;font-family:Times New Roman">Password</span><br>
		<input type="password" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"required/><br><br>
		<input type="submit" value="Submit"/><br>
		<label style="color:black;font-family:Times New Roman ;font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${message1}</label><br>
		<span style="font-size:25px;color:white;font-family:Times New Roman"> &nbsp;&nbsp;Existing User? <a href="/login"><span style="color:orange">Login</span></a></span>
	</form>
	</div>
	
	${ loginFailed }
	${ success }
	${ error }
	
</body>
</html>