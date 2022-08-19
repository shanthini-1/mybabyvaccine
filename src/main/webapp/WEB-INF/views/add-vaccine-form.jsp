<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add vaccine form</title>
</head>
<body>
		<div id="root">
		<div id="form">
			<addform:form action="addvaccines" method="post" modelAttribute="addvaccine">
				<div>
					<label for="vaccineId">Vaccine Id</label>
				</div>
				<div>
					<addform:input path="vaccineId" />
				</div>
				<div>
					<label for="week">Week</label>
				</div>
				<div>
					<addform:input path="week" />
				</div>
				<div>
					<label for="vaccineName">Vaccine Name </label>
					</div>
					<div>
					<addform:input path="vaccineName"/>
					</div>
					<div>
					<label for="vacDescription">Description</label>
					</div>
					<div>
					<addform:input path="vacDescription"/>
					</div>
					<div>
					<label for="dosage">Dosage</label>
					</div>
					<div>
					<addform:input path="dosage"/>
					</div>
					<div>
					<label for="suggestion">Suggestion</label>
					</div>
					<div>
					<addform:input path="suggestion"/>
					</div>
					<div>
					<label for="vaccinePrice">Vaccine price</label>
					</div>
					<div>
					<addform:input path="vaccinePrice"/>
					</div>
					<div>
					<addform:button>Add Vaccine</addform:button></div>
			</addform:form>
		</div>
	</div>
</body>
</html>