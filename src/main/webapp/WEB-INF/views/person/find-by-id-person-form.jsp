<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findpersonform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Person By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<findpersonform:form action="" method="get"
				modelAttribute="fetchPersonById">
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
				<div>
					<findpersonform:input path="phoneNumber" readonly="true" />
				</div>
				<div>
					<label for="doorNumber">Door Number</label>
				</div>
				<div>
					<findpersonform:input path="doorNumber" readonly="true" />
				</div>
				<div>
					<label for="street">Street</label>
				</div>
				<div>
					<findpersonform:input path="street" readonly="true" />
				</div>
				<div>
					<label for="city">city</label>
				</div>
				<div>
					<findpersonform:input path="city" readonly="true" />
				</div>
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<findpersonform:input path="pinCode" readonly="true" />
				</div>
			</findpersonform:form>
		</div>
	</div>
</body>
</html>