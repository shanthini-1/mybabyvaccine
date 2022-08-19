<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewlocationform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Location</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<viewlocationform:form action="" method="get"
				modelAttribute="fetchLocationById">
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<viewlocationform:input path="pinCode" readonly="true" />
				</div>
				<div>
					<label for="district">District</label>
				</div>
				<div>
					<viewlocationform:input path="district" readonly="true" />
				</div>
				<div>
					<label for="stateName">State Name</label>
				</div>
				<div>
					<viewlocationform:input path="stateName" readonly="true" />
				</div>
				<div>
					<label for="country">Country</label>
				</div>
				<div>
					<viewlocationform:input path="country" readonly="true" />
				</div>
			</viewlocationform:form>
		</div>
	</div>
</body>
</html>