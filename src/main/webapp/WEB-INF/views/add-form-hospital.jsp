<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addhospitalform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Hospital</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<addhospitalform:form action="addhospitals" method="post"
				modelAttribute="addHospital">
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<addhospitalform:input path="hospitalId" />
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div>
					<addhospitalform:input path="hospitalName" />
				</div>
				<div>
					<label for="hospitalPlotNo">Hospital Plot No</label>
				</div>
				<div>
					<addhospitalform:input path="hospitalPlotNo" />
				</div>
				<div>
					<label for="hospitalStreet">Hospital Street</label>
				</div>
				<div>
					<addhospitalform:input path="hospitalStreet" />
				</div>
				<div>
					<label for="hospitalCity">Hospital City</label>
				</div>
				<div>
					<addhospitalform:input path="hospitalCity" />
				</div>
				<div>
					<label for="pinCode">Hospital pin Code</label>
				</div>
				<div>
					<addhospitalform:input path="pinCode" />
				</div>
				<div>
					<label for="contactPersonId">Contact Person Id</label>
				</div>
				<div>
					<addhospitalform:input path="contactPersonId" />
				</div>
				<div>
					<addhospitalform:button>Add Hospital</addhospitalform:button>
				</div>
			</addhospitalform:form>
		</div>
	</div>
</body>
</html>