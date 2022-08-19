<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of vaccine status</title>
</head>
<body>
	<div id="root">
		<div id="vacform">
			<table>
				<caption>Vaccine Status</caption>
				<thead>
					<tr>
						<th>Child Id</th>
						<th>Vaccine Id</th>
						<th>dateOfVaccination</th>
						<th>vaccinatedStatus</th>
						<th>hospitalId</th>
						<th>attenderId</th>
						<th>babyWeight</th>
						<th>babyHeigh</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vac" items="${allVaccinationStatuslist}">
						<tr>
						<td>${vac.childId}</td>
							<td>${vac.vaccineId}</td>
							<td>${vac.dateOfVaccination}</td>
							<td>${vac.vaccinatedStatus}</td>
							<td>${vac.hospitalId}</td>
							<td>${vac.attenderId}</td>
							<td>${vac.babyWeight}</td>
							<td>${vac.babyHeight}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>