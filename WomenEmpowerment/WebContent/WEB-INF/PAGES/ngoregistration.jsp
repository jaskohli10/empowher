<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
				WOMEN HOSTEL <i class="fa fa-caret-down"></i>
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
		enctype="multipart/form-data" id="myForm">


		<label>Username:</label> <input type="text" name="username"
			value="${username}" readonly /> <label>NGO Name</label> <input
			type="text" value="" placeholder="NGO name" id="organizationName"
			name="organizationName" />
		<p id="error-organizationName" name="error-organizationName"></p>


		<label>Owner Name</label> <input type="text" value=""
			placeholder="Owner Name" id="ownerName" name="ownerName" />
		<p id="error-ownerName" name="error-ownerName"></p>

		<label> state </label> <select name="state" id="state"
			onchange="populateRespectiveCity()"></select> <label>City</label> <select
			id="city" name="city">
		</select> <label>Address</label> <input type="text" value=""
			placeholder="Address" id="address" name="address" />
		<p id="error-address" name="error-address"></p>


		<label>Zip Code </label> <input type="number" value=""
			placeholder="Address" id="zipCode" name="zipCode" /> <label>NGO
			Website</label> <input type="url" value="" placeholder="Website" id="webSite"
			name="webSite" /> <label>Staff Number </label> <input type="number"
			value="" placeholder="Staff Number" id="staffStrength"
			name="staffStrength">
		<p id="error-staffno" name="error-staffno"></p>

		<label>Memorandum of Association</label> <input type="file"
			name="file"> <label>Enter document name</label> <input
			type="text" name="name" id="moa"> <label>Societies
			Registration Affidavit</label> <input type="file" name="file"> <label>Enter
			document name</label> <input type="text" name="name" id="sra">


		<table>
			<tr>
				<td><input type="button" value="Submit"
					onclick="ngoRegistrationValidate()" id="submit"
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