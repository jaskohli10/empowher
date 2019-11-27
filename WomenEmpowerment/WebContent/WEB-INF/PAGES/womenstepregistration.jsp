<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/womenstepregistration.css" />
<script type="text/javascript"
	src="RESOURCES/JS/womenstepregistration.js"></script>
<title>NGO Registration</title>
</head>
<body onload="populateTraining()">
	<div class="header">
		<div style="text-align: left">
			<img id="logo" src="RESOURCES/IMAGES/mwcd.jpg" height="110"
				width="110">
		</div>
		<h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
		<p>A GOVERNMENT OF INDIA INITIATIVE</p>
	</div>

	<div class="topnav">
		<a href="viewUserHomePage">HOME</a>
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
	<form action="womenStepRegistration.do" method="post"
		action="uploadMultipleFile" enctype="multipart/form-data">
		<table>
			<!-- Powerful enought to fetch UserDetails(model : User) ie firstname lastname dob etc! -->
			<tr>
				<th>Username</th>
				<td><input type="text" name="userName" id="userName"
					value="${username}" readonly /></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="radio" value="male" id="gender" name="gender">Male</td>
				<td><input type="radio" value="female" id="gender"
					name="gender">Female</td>
				<td><input type="radio" value="other" id="gender" name="gender">Other</td>
			</tr>

			<tr>
				<th>Marital Status</th>
				<td><select id="maritalStatus" name="maritalStatus">
						<option value="unmarried">Unmarried</option>
						<option value="married">Married</option>
						<option value="widowed">Widowed</option>
						<option value="divorced">Divorced</option>
						<option value="separated">Separated</option>
				</select></td>
			</tr>
			<tr>
				<th>Caste</th>
				<td><select id="caste" name="caste">
						<option value="general">General</option>
						<option value="obc">OBC</option>
						<option value="scst">SC/ST</option>
						<option value="vjnt">VJ/NT</option>
						<option value="sbc">SBC</option>
				</select></td>
			</tr>
			<tr>
				<th>Category</th>
				<td><select id="category" name="category">
						<option value="physically">Physically Challenged</option>
						<option value="visually">Visually challenged</option>
						<option value="hearing">Hearing Impaired</option>
						<option value="NA">Not Applicable</option>
				</select></td>
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
				<th>NGO's IN YOUR CITY</th>
				<td><select id="ngocity" name="ngocity">
				</select></td>
			</tr>

			<tr>
				<th>TRAINING DETAILS POVIDED BY SELECTED NGO</th>
			</tr>
			<tr>
				<th>Training Type</th>
				<td><select id="trainingcategory" name="trainingcategory"
					onchange="populateTrainingNameByNgoName()"></select></td>
			</tr>
			<tr>
				<th>Training Name</th>
				<td><select id="trainingname" name="trainingname"></select></td>
			</tr>

			<tr>
				<th>Aadhaar Card and Pan Card(Identification)</th>
			</tr>
			<tr>
				<th>Upload your Aadhar card (in .pdf format only)</th>
				<td><input type="file" name="file"></td>
				<td><label>Enter Aadhaar Number </label></td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<th>Upload your Pan card (in .pdf format only)</th>
				<td><input type="file" name="file"></td>
				<td><label>Enter Pan Number </label></td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<th>Emergency Contact Number</th>
				<td><input type="text" value="" placeholder="Emergency Number"
					id="emergencyContactNo" name="emergencyContactNo"
					onblur="setNgoIdTrainingId()" required="required"></td>
			</tr>
			<tr>
				<td><input type="number" style="display: none" id="ngoid"
					name="ngoid" /></td>
			</tr>
			<tr>
				<td><input type="number" style="display: none" id="trainingId"
					name="trainingId" /></td>
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

	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>