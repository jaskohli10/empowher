<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<link rel="stylesheet" type="text/css"
	href="RESOURCES/CSS/stepregistration.css" />
<title>NGO Hostel Registration</title>
<script>
	$(document).ready(function() {

		$("input[name='child']").change(function() {
			if ($(this).val() == "yes") {

				$(".daycaredetails").show();
			} else {

				$(".daycaredetails").hide();
			}
		});
	});
</script>
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
	<div class="card">
		<h1 align="center">NGO Hostel Registration Form</h1>
		<form>
			<label>NGO REGISTRATION ID</label> <input type="text" value=""
				placeholder="NGO ID" id="ngoid" name="ngoid"><br> <label>NGO
				Name</label> <input type="text" value="" placeholder="NGO Name" id="ngoname"
				name="ngoname"><br> <label>Hostel Name</label> <input
				type="text" value="" placeholder="Hostel Name" id="hostelname"
				name="hostelname" /><br> <label>State</label> <input
				type="text" value="" placeholder="" id="hostelstate"
				name="hostelstate"><br> <label>City</label> <input
				type="text" value="" id="hostelcity" name="hostelcity"><br>

			<label>Zipcode</label> <input type="text" value="" id="hostelzip"
				name="hostelzip"><br> <label>Do You Provide
				Daycare Facility?</label> <input type="radio" name="child" id="yes"
				value="yes"> Yes <input type="radio" name="child" id="no"
				value="no"> No <br>

			<div class="daycaredetails" hidden=true>

				<label>Daycare ID</label><br> <input type="text" value=""
					placeholder="" id="daycareid" name="daycareid" /><br> <label>Daycare
					Name</label><br> <input type="text" value=""
					placeholder="Daycare Name" id="daycarename" name="daycarename" /><br>
				<br> <label>No of Teachers</label><br> <input type="text"
					value="" placeholder="No of Teachers" id="noofteachers"
					name="noofteachers" /><br> <br> <label>Capacity</label><br>
				<input type="text" value="" placeholder="Capacity" id="capacity"
					name="capacity" /><br> <br>
			</div>
		</form>
	</div>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>

</body>
</html>