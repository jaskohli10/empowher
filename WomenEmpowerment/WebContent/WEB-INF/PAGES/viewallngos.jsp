<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin home</title>
</head>
<body>
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
		<!-- <input type="text" name="registrationId" id="registrationId">
		<input type="text" name="approvalStatus" id="approvalStatus"> -->
		<select name="approvalStatus" id="approvalStatus">
			<option>
		
		</select>
		<button type="submit">Update</button>
	</form>

</body>
</html>