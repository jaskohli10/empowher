<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
					<th>Not a user? <a href="userregistration.jsp">click here</a>
					</th>
				</tr>
			</table>
		</form>
	</div>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>