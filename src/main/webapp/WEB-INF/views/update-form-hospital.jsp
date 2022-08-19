<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatehospitalform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Hospital Form</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<updatehospitalform:form action="modifyhospitals" method="post"
				modelAttribute="modifyHospital">
		<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<updatehospitalform:input path="hospitalId" />
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div>
					<updatehospitalform:input path="hospitalName" />
				</div>
				<div>
					<label for="hospitalPlotNo">Hospital Plot No</label>
				</div>
				<div>
					<updatehospitalform:input path="hospitalPlotNo" />
				</div>
				<div>
					<label for="hospitalStreet">Hospital Street</label>
				</div>
				<div>
					<updatehospitalform:input path="hospitalStreet" />
				</div>
				<div>
					<label for="hospitalCity">Hospital City</label>
				</div>
				<div>
					<updatehospitalform:input path="hospitalCity" />
				</div>
				<div>
					<label for="pinCode">Hospital pin Code</label>
				</div>
				<div>
					<updatehospitalform:input path="pinCode" />
				</div>
				<div>
					<label for="contactPersonId">Contact Person Id</label>
				</div>
				<div>
					<updatehospitalform:input path="contactPersonId" />
				</div>
				<div>
					<updatehospitalform:button>Update Hospital</updatehospitalform:button>
				</div>
			</updatehospitalform:form>
		</div>
	</div>
</body>
</html>