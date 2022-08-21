<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>vaccineschedule list by date</title>
</head>
<body>
<div class="container">
			<table>
			<caption>vaccine schedule list</caption>
				<thead>
					<tr>
					<th>Child Id</th>
					<th>Child Name</th>
					<th>Vaccine Id</th>
					<th>Vaccine Name</th>
					<th>Date To Vaccinate</th>
					<th>Update Status</th>

				</tr>
				</thead>
				<tbody>
					 <c:forEach var="vac" items="${vaccinesch}"> 
						<tr>
							<td>${vaccinesch.child.childId}</td>
							<td>${vaccinesch.child.childName}</td>
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