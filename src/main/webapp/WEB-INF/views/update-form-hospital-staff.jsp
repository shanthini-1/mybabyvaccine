<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatehospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Hospital Staff Form</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<updatehospitalstaffform:form action="modifyhospitalstaffs" method="post"
				modelAttribute="modifyHospitalStaff">
		<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<updatehospitalstaffform:input path="hospitalId" />
				</div>
				<div>
					<label for="staffId">Staff Id</label>
				</div>
				<div>
					<updatehospitalstaffform:input path="staffId" />
				</div>
				<div>
					<label for="staffRole">Staff Role</label>
				</div>
				<div>
					<updatehospitalstaffform:input path="staffRole" />
				</div>
				
				<div>
					<updatehospitalstaffform:button>Update Hospital Staff</updatehospitalstaffform:button>
				</div>
			</updatehospitalstaffform:form>
		</div>
	</div>
</body>
</html>