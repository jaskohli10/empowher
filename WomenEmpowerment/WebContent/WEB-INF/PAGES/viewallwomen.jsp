<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<title>Registered Women Under STEP</title>
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
		<a href="viewAdminHomePage">HOME</a> <a href="#">STEP</a> <a
			href="viewNgos.do">NGO</a>

		<div style="float: right">
			<a href="logout.do">LOGOUT</a>
		</div>
	</div>
	<div class="card">
		<table border='1'>
			<tr>
				<th>Registration ID</th>
				<th>Marital Status</th>
				<th>Caste</th>
				<th>Category</th>
				<th>State</th>
				<th>City</th>
				<th>Address</th>
				<th>Zipcode</th>
				<th>Aadhar Card</th>
				<th>Pan Card</th>
				<th>Emergency Contact Number</th>
				<th>Approval Status</th>
			</tr>
			<c:forEach var="women" items="${requestScope.womenList}">
				<tr>
					<td><c:out value="${women.womenRegistrationId}" /></td>
					<td><c:out value="${women.maritalStatus}" /></td>
					<td><c:out value="${women.caste}" /></td>
					<td><c:out value="${women.category}" /></td>
					<td><c:out value="${women.state}" /></td>
					<td><c:out value="${women.city}" /></td>
					<td><c:out value="${women.address}" /></td>
					<td><c:out value="${women.zipcode}" /></td>
					<td><c:url value="${women.aadhaarcard}" var="aadharcard" /> <a
						href="FILESUPLOADED/${aadharcard}.pdf"><c:out
								value="${aadharcard}" /></a></td>
					<td><c:url value="${women.pancard}" var="pancard" /> <a
						href="FILESUPLOADED/${pancard}.pdf"><c:out value="${pancard}" /></a></td>

					<td><c:out value="${women.emergencyContactNo}" /></td>
					<td><c:out value="${women.approvalStatus}" /></td>
			</c:forEach>
		</table>
		<form action="updateWoman.do" method="post">
			<input type="text" name="registrationId" id="registrationId">
			<!-- <input type="text" name="registrationId" id="registrationId">
		<input type="text" name="approvalStatus" id="approvalStatus"> -->
			<select name="approvalStatus" id="approvalStatus">
				<option value="Accepted">Accepted</option>
				<option value="Rejected">Rejected</option>
			</select>
			<button type="submit">Update</button>
		</form>
	</div>

	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>
</body>
</html>