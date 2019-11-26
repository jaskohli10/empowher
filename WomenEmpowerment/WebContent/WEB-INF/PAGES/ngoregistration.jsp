<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/ngoregistration.css" />
<script type="text/javascript" src="RESOURCES/JS/ngoregistration.js"></script>
<title>NGO Registration</title>
</head>
<body id="thiscss" onload="populateStates()">
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

	<h1>NGO Registration Form</h1>
	<form action="ngoadd.do" method="POST" action="uploadMultipleFile"
		enctype="multipart/form-data">


		<label>Username:</label> <input type="text" name="username"
			value="${username}" readonly /> <label>NGO Name</label> <input
			type="text" value="" placeholder="NGO name" id="organizationName"
			name="organizationName" /> <label>Owner Name</label> <input
			type="text" value="" placeholder="Owner Name" id="ownerName"
			name="ownerName" /> <label> state </label> <select name="state"
			id="state" onchange="populateRespectiveCity()"></select> <label>City</label>
		<select id="city" name="city">
		</select> <label>Address</label> <input type="text" value=""
			placeholder="Address" id="address" name="address" /> <label>Zip
			Code</label> <input type="number" value="" placeholder="Address" id="zipCode"
			name="zipCode" /> <label>NGO Website</label> <input type="url"
			value="" placeholder="Website" id="webSite" name="webSite"> <label>Staff
			Number</label> <input type="number" value="" placeholder="Staff Number"
			id="staffStrength" name="staffStrength"> <label>Memorandum
			of Association</label> <input type="file" name="file"> <label>Enter
			document name</label> <input type="text" name="name"> <label>Societies
			Registration Affidavit</label> <input type="file" name="file"> <label>Enter
			document name</label> <input type="text" name="name">


		<table>
			<tr>
				<td><input type="submit" value="Submit" id="submit"
					style="margin: 30px;"></td>
				<td><input type="reset" value="Reset" id="reset"
					style="margin: 30px;"></td>
			</tr>
		</table>
	</form>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>