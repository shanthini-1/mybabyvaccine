<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<viewform:form action="" method="get" modelAttribute="getVaccine">
			<div>
				<label for="vaccineId">Vaccine Id</label>
			</div>
			<div>
				<viewform:input path="vaccineId" readonly="true" />
			</div>
			<div>
				<label for="week">Week</label>
			</div>
			<div>
				<viewform:input path="week" readonly="true" />
			</div>
			<div>
				<label for="vaccineName">Vaccine Name </label>
			</div>
			<div>
				<viewform:input path="vaccineName" readonly="true" />
			</div>
			<div>
				<label for="vacDescription">Description</label>
			</div>
			<div>
				<viewform:input path="vacDescription" readonly="true" />
			</div>
			<div>
				<label for="dosage">Dosage</label>
			</div>
			<div>
				<viewform:input path="dosage" readonly="true" />
			</div>
			<div>
				<label for="suggestion">Suggestion</label>
			</div>
			<div>
				<viewform:input path="suggestion" readonly="true" />
			</div>
			<div>
				<label for="vaccinePrice">Vaccine price</label>
			</div>
			<div>
				<viewform:input path="vaccinePrice" readonly="true" />
			</div>
			</viewform:form>
		</div>
	</div>
<div id="root">
		<div id="vacform">
			<table>
			<caption>Children</caption>
				<thead>
					<tr>
						<th>Child Id</th>
						<th>Child Name</th>
						<th>Child Dob</th>
						<th>Gender</th>
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
					<c:forEach var="vac" items="${childvacdetailslist}">
						<tr>
							<td>${vac.child.childId}</td>
							<td>${vac.child.childName}</td>
							<td>${vac.child.childDob}</td>
							<td>${vac.child.gender}</td>
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