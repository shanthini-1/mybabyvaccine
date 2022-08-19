<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findchildhospitalform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Hospital Child  By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<h3>Child Details</h3>
			<findchildhospitalform:form action="" method="get"
				modelAttribute="childDetails">
			<div>
					<label for="childId">Child Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="childId" />
				</div>
				 <div>
					<label for="childName">Child Name</label>
				</div>
				<div>
					<findchildhospitalform:input path="childName" />
				</div>
				<div>
					<label for="childDob">Child Dob </label>
				</div>
				<div>
					<findchildhospitalform:input path="childDob" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<findchildhospitalform:input path="gender" />
				</div>
				<div>
					<label for="birthWeight">Birth Weight</label>
				</div>
				<div>
					<findchildhospitalform:input path="birthWeight" />
				</div>
				<div>
					<label for="birthPlace">Birth Place</label>
				</div>
				<div>
					<findchildhospitalform:input path="birthPlace" />
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
				</div>
				<div>
					<findchildhospitalform:input path="bloodGroup" />
				</div>
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalId" />
				</div>
				<div>
					<label for="doctorId">Doctor Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="doctorId" />
				</div>
				<div>
					<label for="fatherId">Father Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="fatherId" />
				</div>
				<div>
					<label for="motherId">Mother Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="motherId" />
				</div>
				 <div>
					<label for="guardianId">Guardian Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="guardianId" />
				</div> 
			</findchildhospitalform:form>
			<div>
			<h3>Hospital Details</h3>
			<findchildhospitalform:form action="" method="get"
				modelAttribute="childHospitaldetails">
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalId" />
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalName" />
				</div>
				<div>
					<label for="hospitalPlotNo">Hospital Plot No</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalPlotNo" />
				</div>
				<div>
					<label for="hospitalStreet">Hospital Street</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalStreet" />
				</div>
				<div>
					<label for="hospitalCity">Hospital City</label>
				</div>
				<div>
					<findchildhospitalform:input path="hospitalCity" />
				</div>
				<div>
					<label for="pinCode">Hospital pin Code</label>
				</div>
				<div>
					<findchildhospitalform:input path="pinCode" />
				</div>
				<div>
					<label for="contactPersonId">Contact Person Id</label>
				</div>
				<div>
					<findchildhospitalform:input path="contactPersonId" />
				</div>
				</findchildhospitalform:form>
				</div>
		</div>
	</div>
</body>
</html>