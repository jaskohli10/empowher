<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css" href="RESOURCES/CSS/login.css" />
<title>User Login</title>
</head>
<body>
	<div class="header">
		<div style="text-align: left">
			<img id="logo" src="RESOURCES/IMAGES/mwcd.jpg" height="110"
				width="110">
		</div>
		<h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
		<p>A GOVERNMENT OF INDIA INITIATIVE</p>
	</div>

	<div class="topnav">
		<a href="homePage">HOME</a> <a href="stepHomePage">STEP</a> <a
			href="aboutusPage">ABOUT US</a> <a href="contactusPage">CONTACT
			US</a> <a href="faqsPage">FAQ</a>





		<div class="dropdown" style="float: right">
			<button class="dropbtn">
				LOGIN <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="viewUserLoginPage">User Login</a> <a
					href="viewAdminLoginPage">Admin Login </a>

			</div>
		</div>
	</div>


	<div class="card">
		<div class="login-block">
			<h1>Login</h1>
			<form action="userLogin.do" method="post">
				<table>
					<tr>
						<th><input type="text" value="" placeholder="Username"
							id="username" name="username" /></th>
					</tr>
					<tr>
						<th><input type="password" value="" placeholder="Password"
							id="password" name="password" /></th>
					</tr>
					<tr>
						<th>
							<button type="submit" onclick="userhome">Login</button>
						</th>
					</tr>
					<tr>
						<th>Not a user? <a href="viewUserRegistrationPage">click
								here</a>
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>