<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Details of vaccination status children</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get"
				modelAttribute="chilinfo">
				<div>
					<label for="childId">Child Id</label>
				</div>
				<div>
					<form:input path="childId" />
				</div>
				<div>
					<label for="childName">Child Name</label>
				</div>
				<div>
					<form:input path="childName" />
				</div>
				<div>
					<label for="childDob">Child Dob </label>
				</div>
				<div>
					<form:input path="childDob" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<form:input path="gender" />
				</div>
				<div>
					<label for="birthWeight">Birth Weight</label>
				</div>
				<div>
					<form:input path="birthWeight" />
				</div>
				<div>
					<label for="birthPlace">Birth Place</label>
				</div>
				<div>
					<form:input path="birthPlace" />
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
				</div>
				<div>
					<form:input path="bloodGroup" />
				</div>
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<form:input path="hospitalId" />
				</div>
				<div>
					<label for="doctorId">Doctor Id</label>
				</div>
				<div>
					<form:input path="doctorId" />
				</div>
				<div>
					<label for="fatherId">Father Id</label>
				</div>
				<div>
					<form:input path="fatherId" />
				</div>
				<div>
					<label for="motherId">Mother Id</label>
				</div>
				<div>
					<form:input path="motherId" />
				</div>
				<div>
					<label for="guardianId">Guardian Id</label>
				</div>
				<div>
					<form:input path="guardianId" />
				</div>
			</form:form>
		</div>
		<div id="root">
		<div id="vacform">
			<table>
				<thead>
					<tr>
						<th>Child Id</th>
						<th>Vaccine Id</th>
						<th>Vaccine Name</th>
						<th>dateOfVaccination</th>
						<th>vaccinatedStatus</th>
						<th>hospitalId</th>
						<th>attenderId</th>
						<th>babyWeight</th>
						<th>babyHeigh</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vac" items="${vaccinestatus}">
						<tr>
						<td>${vac.childId}</td>
							<td>${vac.vaccineId}</td>
							<td>${vac.vaccine.vaccineName}</td>
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
	</div>
</body>
</html>