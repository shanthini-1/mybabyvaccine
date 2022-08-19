<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addlocationform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Location</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<addlocationform:form action="addlocations" method="post"
				modelAttribute="addLocation">
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<addlocationform:input path="pinCode" />
				</div>
				<div>
					<label for="district">District</label>
				</div>
				<div>
					<addlocationform:input path="district" />
				</div>
				<div>
					<label for="stateName">State Name</label>
				</div>
				<div>
					<addlocationform:input path="stateName" />
				</div>
				<div>
					<label for="country">Country</label>
				</div>
				<div>
					<addlocationform:input path="country" />
				</div>
				<div>
					<addlocationform:button>Add Location</addlocationform:button>
				</div>
			</addlocationform:form>
		</div>
	</div>
</body>
</html>