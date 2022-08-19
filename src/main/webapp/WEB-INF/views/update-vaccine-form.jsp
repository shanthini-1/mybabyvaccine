<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updateform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine Form</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<updateform:form action="modifyvaccines" method="post"
				modelAttribute="modifyvaccine">
				<div>
					<label for="vaccineId">Vaccine Id</label>
				</div>
				<div>
					<updateform:input path="vaccineId" />
				</div>
				<div>
					<label for="week">Week</label>
				</div>
				<div>
					<updateform:input path="week" />
				</div>
				<div>
					<label for="vaccineName">Vaccine Name </label>
				</div>
				<div>
					<updateform:input path="vaccineName" />
				</div>
				<div>
					<label for="vacDescription">Description</label>
				</div>
				<div>
					<updateform:input path="vacDescription" />
				</div>
				<div>
					<label for="dosage">Dosage</label>
				</div>
				<div>
					<updateform:input path="dosage" />
				</div>
				<div>
					<label for="suggestion">Suggestion</label>
				</div>
				<div>
					<updateform:input path="suggestion" />
				</div>
				<div>
					<label for="vaccinePrice">Vaccine price</label>
				</div>
				<div>
					<updateform:input path="vaccinePrice" />
				</div>
				<div>
					<updateform:button>Update Vaccine</updateform:button>
				</div>
			</updateform:form>
		</div>
	</div>
</body>
</html>