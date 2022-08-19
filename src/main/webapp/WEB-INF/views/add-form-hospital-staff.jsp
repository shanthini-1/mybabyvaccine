<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addhospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Hospital Staff</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<addhospitalstaffform:form action="addhospitalstaffs" method="post"
				modelAttribute="addHospitalStaff">
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<addhospitalstaffform:input path="hospitalId" />
				</div>
				<div>
					<label for="staffId">Staff Id</label>
				</div>
				<div>
					<addhospitalstaffform:input path="staffId" />
				</div>
				<div>
					<label for="staffRole">Staff Role</label>
				</div>
				<div>
					<addhospitalstaffform:input path="staffRole" />
				</div>

				<div>
					<addhospitalstaffform:button>Add Hospital Staff</addhospitalstaffform:button>
				</div>
			</addhospitalstaffform:form>
		</div>
	</div>
</body>
</html>