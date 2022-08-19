find-by-id-person-form.jsp<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatepersonform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Person Form</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<updatepersonform:form action="modifypersons" method="post"
				modelAttribute="modifyPerson">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<updatepersonform:input path="userId" />
				</div>
				<div>
					<label for="userName">User Name</label>
				</div>
				<div>
					<updatepersonform:input path="userName" />
				</div>
				<div>
					<label for="userDob">User Dob </label>
				</div>
				<div>
					<updatepersonform:input path="userDob" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<updatepersonform:input path="gender" />
				</div>
				<div>
					<label for="personCategory">personCategory</label>
				</div>
				<div>
					<updatepersonform:input path="personCategory" />
				</div>
				<div>
					<label for="email">Email</label>
				</div>
				<div>
					<updatepersonform:input path="email" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
				</div>
				<div>
					<updatepersonform:input path="phoneNumber" />
				</div>
				<div>
					<label for="doorNumber">Door Number</label>
				</div>
				<div>
					<updatepersonform:input path="doorNumber" />
				</div>
				<div>
					<label for="street">Street</label>
				</div>
				<div>
					<updatepersonform:input path="street" />
				</div>
				<div>
					<label for="city">city</label>
				</div>
				<div>
					<updatepersonform:input path="city" />
				</div>
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<updatepersonform:input path="pinCode" />
				</div>
				<div>
					<label for="passWord">Password</label>
				</div>
				<div>
					<updatepersonform:input path="passWord" />
				</div>
				<div>
					<updatepersonform:button>Update Person</updatepersonform:button>
				</div>
			</updatepersonform:form>
		</div>
	</div>
</body>
</html>