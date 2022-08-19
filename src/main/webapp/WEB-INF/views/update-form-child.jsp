<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatechildform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Child Form</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<updatechildform:form action="modifychilds" method="post"
				modelAttribute="modifyChild">
				<div>
					<label for="childId">Child Id</label>
				</div>
				<div>
					<updatechildform:input path="childId" />
				</div>
				<div>
					<label for="childName">Child Name</label>
				</div>
				<div>
					<updatechildform:input path="childName" />
				</div>
				<div>
					<label for="childDob">Child Dob </label>
				</div>
				<div>
					<updatechildform:input path="childDob" />
				</div>
				<div>
					<label for="gender">Gender</label>
				</div>
				<div>
					<updatechildform:input path="gender" />
				</div>
				<div>
					<label for="birthWeight">Birth Weight</label>
				</div>
				<div>
					<updatechildform:input path="birthWeight" />
				</div>
				<div>
					<label for="birthPlace">Birth Place</label>
				</div>
				<div>
					<updatechildform:input path="birthPlace" />
				</div>
				<div>
					<label for="bloodGroup">Blood Group</label>
				</div>
				<div>
					<updatechildform:input path="bloodGroup" />
				</div>
				<div>
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div>
					<updatechildform:input path="hospitalId" />
				</div>
				<div>
					<label for="doctorId">Doctor Id</label>
				</div>
				<div>
					<updatechildform:input path="doctorId" />
				</div>
				<div>
					<label for="fatherId">Father Id</label>
				</div>
				<div>
					<updatechildform:input path="fatherId" />
				</div>
				<div>
					<label for="motherId">Mother Id</label>
				</div>
				<div>
					<updatechildform:input path="motherId" />
				</div>
				<div>
					<label for="guardianId">Guardian Id</label>
				</div>
				<div>
					<updatechildform:input path="guardianId" />
				</div>
				<div>
					<updatechildform:button>Update Child</updatechildform:button>
				</div>
			</updatechildform:form>

		</div>
	</div>
</body>
</html>