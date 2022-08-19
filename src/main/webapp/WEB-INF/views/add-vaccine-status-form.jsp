<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add vaccine form</title>
</head>
<body>
	<addform:form action="addvaccinationstatuss" method="post"
		modelAttribute="addvaccinationStatus">
		<div>
			<label for="childId">child Id</label>
		</div>
		<div>
			<addform:input path="childId" />
		</div>
		<div>
			<label for="vaccineId">vaccine Id</label>
		</div>
		<div>
			<addform:input path="vaccineId" />
		</div>
		<div>
			<label for="dateOfVaccination">Date of Vaccination </label>
		</div>
		<div>
			<addform:input path="dateOfVaccination" />
		</div>
		<div>
			<label for="vaccinatedStatus">Vaccinated Status</label>
		</div>
		<div>
			<addform:input path="vaccinatedStatus" />
		</div>
		<div>
			<label for="hospitalId">Hospital Id</label>
		</div>
		<div>
			<addform:input path="hospitalId" />
		</div>
		<div>
			<label for="attenderId">Attender Id</label>
		</div>
		<div>
			<addform:input path="attenderId" />
		</div>
		<div>
			<label for="babyWeight">Baby Weight</label>
		</div>
		<div>
			<addform:input path="babyWeight" />
		</div>
		<div>
			<label for="babyHeight">Baby Height</label>
		</div>
		<div>
			<addform:input path="babyHeight" />
		</div>
		<div>
			<addform:button>Add Vaccination status</addform:button>
		</div>
	</addform:form>
</body>
</html>