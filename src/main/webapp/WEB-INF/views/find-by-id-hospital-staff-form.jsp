<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findhospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Hospital Staff Person By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<h3>Staff Role</h3>
			<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchHospitalStaffById">
				<div>
					<label for="staffId">Staff Id</label>
				</div>
				<div>
					<findhospitalstaffform:input path="staffId" readonly="true"/>
				</div>
				<div>
					<label for="staffRole">Staff Role</label>
				</div>
				<div>
					<findhospitalstaffform:input path="staffRole" readonly="true"/>
				</div>
			</findhospitalstaffform:form>
			<h3>Staff Details</h3>
			 <findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchstaffById">
				<div>
					<label for="userName">User Name</label>
				</div>
				<div>
					<findhospitalstaffform:input path="userName" readonly="true" />
				</div>
				<div>
					<label for="userDob">User Dob </label>
				</div>
				<div>
					<findhospitalstaffform:input path="userDob" readonly="true" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<findhospitalstaffform:input path="gender" readonly="true" />
				</div><div>
					<label for="personCategory">Person Category</label>
				</div>
				<div>
					<findhospitalstaffform:input path="personCategory" readonly="true" />
				</div>
				<div>
					<label for="email">Email</label>
				</div>
				<div>
					<findhospitalstaffform:input path="email" readonly="true" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
				</div>
				<div>
					<findhospitalstaffform:input path="phoneNumber" readonly="true" />
				</div>
				<div>
					<label for="doorNumber">Door Number</label>
				</div>
				<div>
					<findhospitalstaffform:input path="doorNumber" readonly="true" />
				</div>
				<div>
					<label for="street">Street</label>
				</div>
				<div>
					<findhospitalstaffform:input path="street" readonly="true" />
				</div>
				<div>
					<label for="city">city</label>
				</div>
				<div>
					<findhospitalstaffform:input path="city" readonly="true" />
				</div>
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<findhospitalstaffform:input path="pinCode" readonly="true" />
				</div>
				</findhospitalstaffform:form> 
				<h3>Staff Hospital Details</h3>
				<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchHospitalById">
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalId" />
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalName" />
				</div>
				<div>
					<label for="hospitalPlotNo">Hospital Plot No</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalPlotNo" />
				</div>
				<div>
					<label for="hospitalStreet">Hospital Street</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalStreet" />
				</div>
				<div>
					<label for="hospitalCity">Hospital City</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalCity" />
				</div>
				<div>
					<label for="pinCode">Hospital pin Code</label>
				</div>
				<div>
					<findhospitalstaffform:input path="pinCode" />
				</div>
		
				</findhospitalstaffform:form>
		</div>
	</div>
</body>
</html>