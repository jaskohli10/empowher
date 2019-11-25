<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/userregistration.css" />
<title>User Registration</title>
</head>
<body>
	<div class="login-block">
		<h1>User Registration Form</h1>
		<form action="add.do" method="post">
			<table>
				<tr>
					<th>User Name</th>
					<td><input type="text" value="" placeholder="Username"
						id="userName" name="userName" /></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" value="" placeholder="Password"
						id="password" name="password" /></td>
				</tr>
				<tr>
					<th>Confirm Password</th>
					<td><input type="password" value="" placeholder="Password"
						id="cpassword" name="cpassword" /></td>
				</tr>
				<tr>
					<th>First Name</th>
					<td><input type="text" value="" placeholder="Firstname"
						id="firstName" name="firstName"></td>
				</tr>
				<tr>
					<th>Middle Name</th>
					<td><input type="text" value="" placeholder="Middlename"
						id="=middleName" name="middleName"></td>
				</tr>
				<tr>
					<th>Last Name</th>
					<td><input type="text" value="" placeholder="Lastname"
						id="lastName" name="lastName"></td>
				</tr>
				<tr>
					<th>Email ID</th>
					<td><input type="text" value="" placeholder="Enter the email"
						id="email" name="email"></td>
				</tr>
				<tr>
					<th>Contact No</th>
					<td><input type="text" value=""
						placeholder="Enter your contact no" id="contactNo"
						name="contactNo"></td>
				</tr>
				<tr>
					<th>Date of Birth</th>
					<td><input type="date" value="" placeholder="dateofbirth"
						id="dateOfBirth" name="dateOfBirth"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" id="submit"></td>
					<td><input type="reset" value="Reset" id="reset"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>