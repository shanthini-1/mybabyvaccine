<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Location</title>
</head>
<body>
	<div id="root">
		<div id="loctionform">
			<table>
				<caption>location</caption>
				<thead>
					<tr>
						<th>Pin Code</th>
						<th>District</th>
						<th>State Name</th>
						<th>Country</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="locationCode" items="${listAllLocation}">
						<tr>
							<td>${locationCode.pinCode}</td>
							<td>${locationCode.district}</td>
							<td>${locationCode.stateName}</td>
							<td>${locationCode.country}</td>						
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>