<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findhospitalform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Hospital By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<findhospitalform:form action="" method="get"
				modelAttribute="fetchHospitalById">
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<findhospitalform:input path="hospitalId" />
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div>
					<findhospitalform:input path="hospitalName" />
				</div>
				<div>
					<label for="hospitalPlotNo">Hospital Plot No</label>
				</div>
				<div>
					<findhospitalform:input path="hospitalPlotNo" />
				</div>
				<div>
					<label for="hospitalStreet">Hospital Street</label>
				</div>
				<div>
					<findhospitalform:input path="hospitalStreet" />
				</div>
				<div>
					<label for="hospitalCity">Hospital City</label>
				</div>
				<div>
					<findhospitalform:input path="hospitalCity" />
				</div>
				<div>
					<label for="pinCode">Hospital pin Code</label>
				</div>
				<div>
					<findhospitalform:input path="pinCode" />
				</div>
				<div>
					<label for="contactPersonId">Contact Person Id</label>
				</div>
				<div>
					<findhospitalform:input path="contactPersonId" />
				</div>
			</findhospitalform:form>
		</div>
	</div>
</body>
</html>