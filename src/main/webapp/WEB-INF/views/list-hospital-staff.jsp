<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Hospital Staff</title>
</head>
<body>
	<div id="root">
		<div id="hospitalstaffform">
			<table>
				<caption>Hospital Staff</caption>
				<thead>
					<tr>
						<th>Hospital Id</th>
						<th>Staff Id</th>
						<th>Staff Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="hospitalstaff" items="${listAllHospitalStaffs}">
						<tr>
							<td>${hospitalstaff.hospitalId}</td>
							<td>${hospitalstaff.staffId}</td>
							<td>${hospitalstaff.staffRole}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>