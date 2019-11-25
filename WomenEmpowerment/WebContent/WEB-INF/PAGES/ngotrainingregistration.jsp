<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script type="text/javascript"
	src="RESOURCES/JS/ngotrainingregistration.js"></script>
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/ngotrainingregistration.css" />
<title>NGO Training Registration</title>
</head>
<body id="thiscss" onload="populateTraining()">
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

	<h1>NGO Training Registration Form</h1>
	<form action="ngoTrainingAdd.do" method="post">
		<label>NGO REGISTRATION ID</label> <input type="text" value=""
			placeholder="NGO ID" id="ngoRegisterationId"
			name="ngoRegisterationId"> <label>NGO Name</label> <input
			type="text" value="" placeholder="NGO Name" id="organizationName"
			name="organizationName">

		<h4>
			<label>List of trainings provided under different training
				sectors</label>
		</h4>
		<select id="trainingcategory" name="trainingcategory"></select> <label>Trainee
			Capacity</label> <input type="text" value="" placeholder=""
			id="traineeCapacity" name="traineeCapacity"> <label>Training
			Start Date</label> <input type="date" value="" id="trainingStartDate"
			name="trainingStartDate"> <label>Training End Date</label> <input
			type="date" value="" id="trainingEndDate" name="trainingEndDate">
		<label>Training Description</label> <input type="text" value=""
			placeholder="" id="description" name="description"> <label>State</label>
		<select name="state" id="state" onchange="populateRespectiveCity()">
		</select> <label>City</label><select id="city" name="city">
		</select> <label>Address</label> <input type="text" value="" id="address"
			name="address"> <label>Zipcode</label> <input type="text"
			value="" id="zipCode" name="zipCode">

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