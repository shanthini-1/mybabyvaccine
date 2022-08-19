<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="findpersonform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Child by parent</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<findpersonform:form action="" method="get"
				modelAttribute="childsFather">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<findpersonform:input path="userId" readonly="true" />
				</div>
				<div>
					<label for="userName">User Name</label>
				</div>
				<div>
					<findpersonform:input path="userName" readonly="true" />
				</div>
				<div>
					<label for="userDob">User Dob </label>
				</div>
				<div>
					<findpersonform:input path="userDob" readonly="true" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<findpersonform:input path="gender" readonly="true" />
				</div><div>
					<label for="personCategory">Person Category</label>
				</div>
				<div>
					<findpersonform:input path="personCategory" readonly="true" />
				</div>
				<div>
					<label for="email">Email</label>
				</div>
				<div>
					<findpersonform:input path="email" readonly="true" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
				</div>
			</findpersonform:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<findpersonform:form action="" method="get"
				modelAttribute="childsMother">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<findpersonform:input path="userId" readonly="true" />
				</div>
				<div>
					<label for="userName">User Name</label>
				</div>
				<div>
					<findpersonform:input path="userName" readonly="true" />
				</div>
				<div>
					<label for="userDob">User Date Of Birth </label>
				</div>
				<div>
					<findpersonform:input path="userDob" readonly="true" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<findpersonform:input path="gender" readonly="true" />
				</div><div>
					<label for="personCategory">Person Category</label>
				</div>
				<div>
					<findpersonform:input path="personCategory" readonly="true" />
				</div>
				<div>
					<label for="email">Email</label>
				</div>
				<div>
					<findpersonform:input path="email" readonly="true" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
				</div>
			</findpersonform:form>
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
					<c:forEach var="child" items="${listofchildbyparent}">
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