<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addchildform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add child</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<addchildform:form action="addchilds" method="post"
				modelAttribute="addChild">
				<div>
					<label for="childId">Child Id</label>
				</div>
				<div>
					<addchildform:input path="childId" />
				</div>
				<div>
					<label for="childName">Child Name</label>
				</div>
				<div>
					<addchildform:input path="childName" />
				</div>
				<div>
					<label for="childDob">Child Dob </label>
				</div>
				<div>
					<addchildform:input path="childDob" type="date"/>
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<addchildform:input path="gender"  />
				</div>
				<div>
					<label for="birthWeight">Birth Weight</label>
				</div>
				<div>
					<addchildform:input path="birthWeight" />
				</div>
				<div>
					<label for="birthPlace">Birth Place</label>
				</div>
				<div>
					<addchildform:input path="birthPlace" />
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
				</div>
				<div>
					<addchildform:input path="bloodGroup" />
				</div>
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<addchildform:input path="hospitalId" />
				</div>
				<div>
					<label for="doctorId">Doctor Id</label>
				</div>
				<div>
					<addchildform:input path="doctorId" />
				</div>
				<div>
					<label for="fatherId">Father Id</label>
				</div>
				<div>
					<addchildform:input path="fatherId" />
				</div>
				<div>
					<label for="motherId">Mother Id</label>
				</div>
				<div>
					<addchildform:input path="motherId" />
				</div>
				<div>
					<label for="guardianId">Guardian Id</label>
				</div>
				<div>
					<addchildform:input path="guardianId" />
				</div>
				<div>
					<addchildform:button>Add Child</addchildform:button>
				</div>
			</addchildform:form>
		</div>
	</div>
</body>
</html>