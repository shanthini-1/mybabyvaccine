<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="listhospitalbycontactpersonform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>contact person with Hospital By Id</title>
</head>
<body>
	<div>
		<a href="index.jsp">Home</a>
	</div>
	<div>
		<listhospitalbycontactpersonform:form action="" method="get"
			modelAttribute="fetchConPerfromPersonById">
			<div>
				<label for="userName">User Name</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="userName" readonly="true" />
			</div>
			<div>
				<label for="userDob">User Dob </label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="userDob" readonly="true" />
			</div>
			<div>
				<label for="gender">Gender</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="gender" readonly="true" />
			</div>
			<div>
				<label for="personCategory">Person Category</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="personCategory" readonly="true" />
			</div>
			<div>
				<label for="email">Email</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="email" readonly="true" />
			</div>
			<div>
				<label for="phoneNumber">Phone Number</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="phoneNumber" readonly="true" />
			</div>
			<div>
				<label for="doorNumber">Door Number</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="doorNumber" readonly="true" />
			</div>
			<div>
				<label for="street">Street</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="street" readonly="true" />
			</div>
			<div>
				<label for="city">city</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="city" readonly="true" />
			</div>
			<div>
				<label for="pinCode">Pin Code</label>
			</div>
			<div>
				<listhospitalbycontactpersonform:input path="pinCode" readonly="true" />
			</div>
		</listhospitalbycontactpersonform:form>
	</div>
	<div id="root">
		<div id="form">
			<table>
				<caption>Hospital</caption>
				<thead>
					<tr>
						<th>Hospital Id</th>
						<th>Hospital Name</th>
						<th>Hospital Plot No</th>
						<th>Hospital Street</th>
						<th>Hospital City</th>
						<th>Hospital pin Code</th>
						<th>Contact Person Id</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="hospital" items="${listHosByConPersonId}">
						<tr>
							<td>${hospital.hospitalId}</td>
							<td>${hospital.hospitalName}</td>
							<td>${hospital.hospitalPlotNo}</td>
							<td>${hospital.hospitalStreet}</td>
							<td>${hospital.hospitalCity}</td>
							<td>${hospital.pinCode}</td>
							<td>${hospital.contactPersonId}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>