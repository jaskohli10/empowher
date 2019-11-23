<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/ngoregistration.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="RESOURCES/JS/ngoregistration.js"></script>

<title>NGO Registration</title>
</head>
<body>
	<div class="logo"></div>
	<div class="login-block">
		<h1>NGO Registration Form</h1>
		<form action="ngoadd.do" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<th>NGO Name</th>
					<td><input type="text" value="" placeholder="NGO name"
						id="organizationName" name="organizationName" /></td>
				</tr>
				<tr>
					<th>Owner Name</th>
					<td><input type="text" value="" placeholder="Owner Name"
						id="ownerName" name="ownerName" /></td>
				</tr>
				<tr>
					<th>NGO Address</th>
					<td><select name="state" id="state"
						onchange="populateRespectiveCity()">
							<option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Goa">Goa</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Manipur">Manipur</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Mizoram">Mizoram</option>
							<option value="Nagaland">Nagaland</option>
							<option value="Odisha">Odisha</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Sikkim">Sikkim</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
							<option value="Telangana">Telangana</option>
							<option value="Tripura">Tripura</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="Uttarakhand">Uttarakhand</option>
							<option value="West Bengal">West Bengal</option>
					</select></td>
				</tr>
				<tr>
					<th>City</th>
					<td><select id="city" name="city">
					</select></td>
				</tr>
				<tr>
					<th>Zip Code</th>
					<td><input type="number" id="zipCode" name="zipCode"></td>
				</tr>
				<tr>
					<th>Address Line</th>
					<td><input type="text" value="" placeholder="Address"
						id="address" name="address" /></td>
				</tr>
				<tr>
					<th>NGO Website</th>
					<td><input type="url" value="" placeholder="Website"
						id="webSite" name="webSite"></td>
				</tr>
				<tr>
					<th>Staff Number</th>
					<td><input type="text" value="" placeholder="Staff Number"
						id="staffStrength" name="staffStrength"></td>
				</tr>
				<tr>
					<th>FILES TO UPLOAD</th>
				</tr>
				<tr>
					<th>Memorandum of Association</th>
					<td>File1 to upload: <input type="file" name="file"><br /></td>
					<td>Name1: <input type="text" name="name" id="name"> <br />
						<br /></td>
				</tr>
				<tr>
					<th>societiesRegistrationAffidavit</th>
					<td>File2 to upload: <input type="file" name="file"><br /></td>
					<td>Name2: <input type="text" name="name" id="name"><br />
						<br /></td>

				</tr>
				<tr>
					<th>username</th>
					<td><input type="text"
						value="<%=session.getAttribute("username")%>"
						placeholder="Enter username" id="username" name="username"
						readonly="readonly"></td>
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




