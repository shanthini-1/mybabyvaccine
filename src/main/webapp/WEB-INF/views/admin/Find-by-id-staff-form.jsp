<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="findhospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Staff</title>
</head>
<body>
<div id="root">
		<div id="form">
		<h3>Staff </h3>
			<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchStaffDetailsById">
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
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<findhospitalstaffform:input path="hospitalId" readonly="true"/>
				</div>
			</findhospitalstaffform:form>
			</div>
			</div>
</body>
</html>