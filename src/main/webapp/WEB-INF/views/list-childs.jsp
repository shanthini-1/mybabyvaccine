<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Child</title>
</head>
<body>
	<div id="root">
		<div id="vacform">
			<table>
			<caption>List of Child</caption>
				<thead>
					<tr>
						<th>Child Id </th>
						<th>Child Name</th>
						<th>Child Dob</th>
						<th>Gender</th>
						<th>Birth Weight</th>
						<th>Birth Place</th>
						<th>Blood Group</th>
						<th>Hospital Id</th>
						<th>Doctor Id</th>
						<th>Father Id</th>
						<th>Mother Id</th>
						<th>Guardian Id</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="child" items="${listAllChilds}">
						<tr>
							<td>${child.childId}</td>
							<td>${child.childName}</td>
							<td>${child.childDob}</td>
							<td>${child.gender}</td>
							<td>${child.birthWeight}</td>
							<td>${child.birthPlace}</td>
							<td>${child.bloodGroup}</td>
							<td>${child.hospitalId}</td>
							<td>${child.doctorId}</td>
							<td>${child.fatherId}</td>
							<td>${child.motherId}</td>
							<td>${child.guardianId}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>