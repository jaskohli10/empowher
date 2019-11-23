<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="RESOURCES/CSS/userlogin.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
	<div class="logo"></div>
	<div class="login-block">
		<h1>Login</h1>
		<form action="adminlogin.do" method="post">
			<input type="text" value="" placeholder="Username" id="username"
				name="username" /> <input type="password" value=""
				placeholder="Password" id="password" name="password" />

			<button type="submit">Login</button>
		</form>
	</div>
</body>
</html>