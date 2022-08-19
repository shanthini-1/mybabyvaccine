<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Vaccine</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<viewform:form action="" method="get" modelAttribute="findvaccinebyid">
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
</body>
</html>