<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="RESOURCES/CSS/skeleton.css">
<title>Registered NGO's</title>
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
				<th>Organisation Name</th>
				<th>Owner Name</th>
				<th>State</th>
				<th>City</th>
				<th>Zip code</th>
				<th>Address</th>
				<th>Website</th>
				<th>Staff Strength</th>
				<th>Memorandum Of Association</th>
				<th>Societies Registration Affidavit</th>
				<th>Approval Status</th>
			</tr>
			<c:forEach var="ngo" items="${requestScope.ngoList}">
				<tr>
					<td><c:out value="${ngo.ngoRegisterationId}" /></td>
					<td><c:out value="${ngo.organizationName}" /></td>
					<td><c:out value="${ngo.ownerName}" /></td>
					<td><c:out value="${ngo.state}" /></td>
					<td><c:out value="${ngo.city}" /></td>
					<td><c:out value="${ngo.zipCode}" /></td>
					<td><c:out value="${ngo.address}" /></td>
					<td><c:url value="${ngo.webSite}" var="ngoWebsite" /> <a
						href="${ngoWebsite}"><c:out value="${ngoWebsite}" /></a></td>
					<td><c:out value="${ngo.staffStrength}" /></td>
					<td><c:url value="${ngo.memorandumOfAssociation}"
							var="memorandum" /> <a href="FILESUPLOADED/${memorandum}.pdf"><c:out
								value="${memorandum}" /></a></td>
					<td><c:url value="${ngo.societiesRegistrationAffidavit}"
							var="sra" /> <a href="FILESUPLOADED/${sra}.pdf"><c:out
								value="${sra}" /></a></td>
					<td><c:out value="${ngo.approvalStatus}" /></td>
			</c:forEach>
		</table>

		<form action="updateNgo.do" method="post">
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
	<div class="card"></div>
	<div class="footer">
		<h5 class="headerhtags">Website Content Managed by Ministry of
			Women and Child Development, GOI Designed, Developed and Hosted by
			National Informatics Centre( NIC ) Last Updated: 31 May 2019</h5>
	</div>


</body>
</html>