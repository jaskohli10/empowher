<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/userlogin.css" />
<title>User Login</title>
</head>
<body>
	<div class="logo"></div>
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
						<button type="submit">Login</button>
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
</body>
</html>