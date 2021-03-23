<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdnexample.com/script.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="css/login.css" rel="stylesheet">
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
	<h1 style="font-size:75px;font-family:Gabriola;color:orange">User Login</h1>
	 
	<form action="/homepage" method="post">
		<span style="font-size:25px;color:white;font-family:Times New Roman">Email-ID</span><br>
		<input type="email" name="emailid" placeholder="EmailId" required/><br>
		<span style="font-size:25px;color:white;font-family:Times New Roman">Password</span><br>
		<input type="password" name="password"placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required/><br><br>
		<input type="submit" value="Submit"/><br><br>
		
		<label style="font-family:Times New Roman;color:black; font-size:20px">&nbsp;&nbsp;${message}&nbsp;&nbsp;&nbsp;</label><br>
		<span style="font-size:25px;color:white;font-family:Times New Roman"> &nbsp;&nbsp;&nbsp;&nbsp;Not A User? <a href="/register"><span style="color:orange">Register</span></a></span>
	</form>
	</div>
</body>
</html>