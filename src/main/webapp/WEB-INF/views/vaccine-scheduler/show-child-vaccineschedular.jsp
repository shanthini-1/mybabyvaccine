<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccination scheduler</title>
</head>
<body>
	<div id="narrowroot">
		<div id="narrowform">
			<form:form action="" method="get" modelAttribute="childDetail">
				<div class="row">
					<div class="col-25">
					<label for="childId">Child Id</label>
				</div>
				<div class="col-75">
					<form:input path="childId" />
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="childName">Child Name</label>
				</div>
			<div class="col-75">
					<form:input path="childName" />
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="childDob">Child Dob </label>
				</div>
				<div class="col-75">
					<form:input path="childDob" />
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="gender">Gender</label>
				</div>
			<div class="col-75">
					<form:input path="gender" />
				</div>
				</div>
			</form:form>
		</div>
	</div>
<hr/>
	<div class="container">
			<table>
			<caption>vaccine schedule list</caption>
				<thead>
					<tr>
						<th>Vaccine Id</th>
						<th>Vaccine Name</th>
						<th>Date To Vaccinate</th>
						<th>Update Status</th>

					</tr>
				</thead>
				<tbody>
					 <c:forEach var="vac" items="${vaccinesch}"> 
						<tr>
							<td>${vaccinesch.vaccine.vaccineId}</td>
							<td>${vaccinesch.vaccine.vaccineName}</td>
							<td>${vaccinesch.dateToVaccinate}</td>
							<td></td>
						</tr>
					 </c:forEach> 
				</tbody>
			</table>
		</div>
</body>
</html>
