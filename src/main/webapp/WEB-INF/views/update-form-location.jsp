<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatelocationform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Location Form</title>
</head>
<body>
<div id="root">
		<div id="form">
			<updatelocationform:form action="modifylocations" method="post"
				modelAttribute="modifyLocation">
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<updatelocationform:input path="pinCode" />
				</div>
				<div>
					<label for="district">District</label>
				</div>
				<div>
					<updatelocationform:input path="district" />
				</div>
				<div>
					<label for="stateName">State Name</label>
				</div>
				<div>
					<updatelocationform:input path="stateName" />
				</div>
				<div>
					<label for="country">Country</label>
				</div>
				<div>
					<updatelocationform:input path="country" />
				</div>
				<div>
					<updatelocationform:button>Update Location</updatelocationform:button>
				</div>
			</updatelocationform:form>
		</div>
	</div>
</body>
</html>