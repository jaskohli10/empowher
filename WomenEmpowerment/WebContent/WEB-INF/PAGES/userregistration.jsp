<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/userregistration.css" />
<script type="text/javascript" src="RESOURCES/JS/userregistration.js"></script>
<title>User Registration</title>
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
		<a href="">HOME</a> <a href="stepHomePage">STEP</a> <a
			href="ngohomepage">NGO</a> <a href="aboutusPage">ABOUT US</a> <a
			href="contactusPage">CONTACT US</a> <a href="faqsPage">FAQ</a>

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
			<h1>User Registration Form</h1>
			<form action="add.do" method="post" id="myForm">
				<table>
					<tr>
						<th>User Name</th>
						<td><input type="text" value="" placeholder="Username"
							id="userName" name="userName" />
							<p id="error-username" name="error-username"></p></td>


					</tr>

					<tr>
						<th>Password</th>
						<td><input type="password" value="" placeholder="Password"
							id="password" name="password" />
							<p id="error-password" name="error-password"></p></td>
					</tr>
					<tr>
						<th>Confirm Password</th>
						<td><input type="password" value="" placeholder="Password"
							id="cpassword" name="cpassword" />
							<p id="error-cpassword" name="error-cpassword"></p></td>
					</tr>
					<tr>
						<th>First Name</th>
						<td><input type="text" value="" placeholder="Firstname"
							id="firstName" name="firstName" required></td>
					</tr>
					<tr>
						<th>Middle Name</th>
						<td><input type="text" value="" placeholder="Middlename"
							id="=middleName" name="middleName"></td>
					</tr>
					<tr>
						<th>Last Name</th>
						<td><input type="text" value="" placeholder="Lastname"
							id="lastName" name="lastName" required></td>

					</tr>
					<tr>
						<th>Email ID</th>
						<td><input type="text" value="" placeholder="Enter the email"
							id="email" name="email">
							<p id="error-email" name="error-email"></p></td>
					</tr>
					<tr>
						<th>Contact No</th>
						<td><input type="text" value=""
							placeholder="Enter your contact no" id="contactNo"
							name="contactNo">
							<p id="error-contact" name="error-contact"></p></td>
					</tr>
					<tr>
						<th>Date of Birth</th>
						<td><input type="date" value="" placeholder="dateofbirth"
							id="dateOfBirth" name="dateOfBirth"></td>
					</tr>
					<tr>
						<td><input type="button" value="Submit" id="submit"
							onclick="ngoRegistrationValidate()"></td>
						<td><input type="reset" value="Reset" id="reset"></td>
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