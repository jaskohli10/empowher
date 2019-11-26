<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<title>STEP Trainings</title>
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

	<div class="card">
		<table border='1'>
			<tr>
				<th>Training Name</th>
				<th>Training Description</th>
				<th>Trainee Capacity</th>
				<th>Training Start Date</th>
				<th>Training End Date</th>
				<th>state</th>
				<th>city</th>
				<th>Zip code</th>
				<th>Address</th>
				<th>Ngo Name</th>
			</tr>
			<c:forEach var="train" items="${requestScope.training}">
				<tr>
					<td><c:out value="${train.trainingName}" /></td>
					<td><c:out value="${train.trainingDescription}" /></td>
					<td><c:out value="${train.traineeCapacity}" /></td>
					<td><c:out value="${train.trainingStartDate}" /></td>
					<td><c:out value="${train.trainingEndDate}" /></td>
					<td><c:out value="${train.state}" /></td>
					<td><c:out value="${train.city}" /></td>
					<td><c:out value="${train.zipCode}" /></td>
					<td><c:out value="${train.address}" /></td>
			</c:forEach>
		</table>
	</div>

	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>

</body>
</html>