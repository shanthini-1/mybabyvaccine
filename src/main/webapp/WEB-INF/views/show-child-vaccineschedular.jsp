<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>child vaccination scheduler</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="childDetail">
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
			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="vacform">
			<table>
				<thead>
					<tr>
						<th>Vaccine Id</th>
						<th>Vaccine Name</th>
						<th>Date To Vaccinate</th>

					</tr>
				</thead>
				<tbody>
					 <c:forEach var="vac" items="${vaccinesch}"> 
						<tr>
							<td>${vaccinesch.vaccine.vaccineId}</td>
							<td>${vaccinesch.vaccine.vaccineName}</td>
							<td>${vaccinesch.dateToVaccinate}</td>
						</tr>
					 </c:forEach> 
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
