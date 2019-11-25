<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/womenstepregistration.css" />
<script type="text/javascript"
	src="RESOURCES/JS/womenstepregistration.js"></script>
<title>NGO Registration</title>
</head>
<body onload="populateStates()">
	<div class="header">
		<div style="text-align: left">
			<img id="logo" src="RESOURCES/IMAGES/mwcd.jpg" height="110"
				width="110">
		</div>
		<h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
		<p>A GOVERNMENT OF INDIA INITIATIVE</p>
	</div>

	<div class="topnav">
		<a href="homePage">HOME</a>
		<div class="dropdown">
			<button class="dropbtn">
				NGO <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="ngoRegistrationPage"> Registration</a> <a
					href="ngoTrainingRegistrationPage"> Training Registration</a> <a
					href="ngoHostelRegistrationPage"> Hostel Registration</a>

			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				STEP <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="womenStepRegistrationPage">Training Registration</a> <a
					href="viewListedTraining.do">Listed Trainings </a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				WOMEN HOSTEL<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="womenHostelRegistrationPage">Hostel DayNcare
					Registration </a> <a href="viewListedHostels.do">View Hostel</a>
			</div>
		</div>

		<div style="float: right">
			<a href="logout.do">LOGOUT</a>
		</div>

	</div>

	<h1>STEP Registration Form</h1>
	<form action="add.do" method="post">
		<table>
			<tr>
				<th>Registration ID</th>
				<td><input type="text" value="" placeholder="Registration ID"
					id="regid" name="regid" required /></td>
			</tr>
			<tr>
				<th>Username</th>
				<td><input type="text" value="" placeholder="Username"
					id="username" name="username" /></td>
			</tr>
			<tr>
				<th>First Name</th>
				<td><input type="text" value="" placeholder="Firstname"
					id="firstname" name="firstname" /></td>
			</tr>
			<tr>
				<th>Middle Name</th>
				<td><input type="text" value="" placeholder="Middlename"
					id="middlename" name="middlename" /></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input type="text" value="" placeholder="Lastname"
					id="lastname" name="lastname" /></td>
			</tr>
			<tr>
				<th>Date of Birth</th>
				<td><input type="date" value="" placeholder="" id="dob"
					name="dob"></td>
			</tr>
			<tr>
				<th>Marital Status</th>
				<td><select>
						<option value="xz">---select---</option>
						<option value="unmarried">Unmarried</option>
						<option value="married">Married</option>
						<option value="widowed">Widowed</option>
						<option value="divorced">Divorced</option>
						<option value="separated">Separated</option>
				</select></td>
			</tr>
			<tr>
				<th>Caste</th>
				<td><select>
						<option value="xy">---select---</option>
						<option value="general">General</option>
						<option value="obc">OBC</option>
						<option value="scst">SC/ST</option>
						<option value="vjnt">VJ/NT</option>
						<option value="sbc">SBC</option>
				</select> <!--placeholder="caste"
							id="caste" name="caste">--></td>
			</tr>
			<tr>
				<th>Category (If applicable)</th>
				<td><select>
						<option value="xx">---select---</option>
						<option value="physically">Physically Challenged</option>
						<option value="visually">Visually challenged</option>
						<option value="hearing">Hearing Impaired</option>
				</select> <!--placeholder="category"
								id="category" name="category">--></td>
			</tr>

			<tr>
				<th>State</th>
				<td><select name="state" id="state"
					onchange="populateRespectiveCity()"></select></td>
			</tr>
			<tr>
				<th>City</th>
				<td><select id="city" name="city" onblur="populateNgoByCity()">
				</select></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><input type="text" value="" placeholder="Address"
					id="address" name="address" /></td>
			</tr>
			<tr>
				<th>Zipcode</th>
				<td><input type="text" value="" placeholder="Zipcode"
					id="zipcode" name="zipcode" /></td>
			</tr>

			<tr>
				<th>NGO's in your city</th>
				<td><select id="ngocity" name="ngocity">
				</select></td>
			</tr>
			<tr>
				<th>Aadhar Card</th>
				<td><input type="text" value="" placeholder="Aadhar card"
					id="aadharcard" name="aadharcard" /></td>
			</tr>
			<tr>
				<th>Upload your Aadhar card (in .pdf format only)</th>
				<td><input type="url" value="" placeholder="" id="aadharpic"
					name="aadharpic"></td>
			</tr>
			<tr>
				<th>Pan Card</th>
				<td><input type="text" value="" placeholder="Pan card"
					id="pancard" name="pancard"></td>
			</tr>
			<tr>

				<th>Upload your Pan card (in .pdf format only)</th>
				<td><input type="text" value="" placeholder="" id="panpic"
					name="panpic"></td>
			</tr>

			<tr>
				<th>TRAINING DETAILS</th>
			</tr>
			<tr>
				<th>Training Name</th>
				<td><input type="text" value="" placeholder="Training Name"
					id="trainingname" name="trainingname"></td>
			</tr>
			<tr>
				<th>Training Type</th>
				<td><input type="text" value="" placeholder="Training Type"
					id="trainingtype" name="trainingtype"></td>
			</tr>
			<tr>
				<th>Duration</th>
				<td><input type="text" value="" placeholder="Pan card"
					id="duration" name="duration"></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="radio" value="r1" placeholder="" id="r1"
					name="gender">Male</td>
				<td><input type="radio" value="r1" placeholder="" id="r1"
					name="gender">Female</td>
				<td><input type="radio" value="r1" placeholder="" id="r1"
					name="gender">Other</td>
			</tr>
			<tr>
				<th>Emergency Contact Number</th>
				<td><input type="text" value="" placeholder="Emergency Number"
					id="emergencyno" name="emergencyno"></td>
			</tr>
			<tr>
				<th>Approval Status</th>
				<td><input type="hidden" value="" placeholder=""
					id="approvalstatus" name="approvalstatus"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" id="submit"></td>
				<td><input type="reset" value="Reset" id="reset"></td>
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