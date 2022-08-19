<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findchildprentform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find guardian Child By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<div>
				<findchildprentform:form action="" method="get"
					modelAttribute="childdetails">
					<div>
						<label for="childId">Child Id</label>
					</div>
					<div>
						<findchildprentform:input path="childId" />
					</div>
					<div>
						<label for="childName">Child Name</label>
					</div>
					<div>
						<findchildprentform:input path="childName" />
					</div>
					<div>
						<label for="childDob">Child Dob </label>
					</div>
					<div>
						<findchildprentform:input path="childDob" />
					</div>
					<div>
						<label for="gender">Gender</label>
					</div>
					<div>
						<findchildprentform:input path="gender" />
					</div>
					<div>
						<label for="birthWeight">Birth Weight</label>
					</div>
					<div>
						<findchildprentform:input path="birthWeight" />
					</div>
					<div>
						<label for="birthPlace">Birth Place</label>
					</div>
					<div>
						<findchildprentform:input path="birthPlace" />
					</div>
					<div>
						<label for="bloodGroup">Blood Group</label>
					</div>
					<div>
						<findchildprentform:input path="bloodGroup" />
					</div>
					<div>
						<label for="hospitalId">Hospital Id</label>
					</div>
					<div>
						<findchildprentform:input path="hospitalId" />
					</div>
					<div>
						<label for="doctorId">Doctor Id</label>
					</div>
					<div>
						<findchildprentform:input path="doctorId" />
					</div>
					<div>
						<label for="fatherId">Father Id</label>
					</div>
					<div>
						<findchildprentform:input path="fatherId" />
					</div>
					<div>
						<label for="motherId">Mother Id</label>
					</div>
					<div>
						<findchildprentform:input path="motherId" />
					</div>
					<div>
						<label for="guardianId">guardian Id</label>
					</div>
					<div>
						<findchildprentform:input path="guardianId" />
					</div>
				</findchildprentform:form>
			</div>

			<div>
				<findchildprentform:form action="" method="get"
					modelAttribute="childGuardianDetails">
					<table border="2" style="border-color: blue;">
						<thead>
						<caption>Guardian Details</caption>
						<tr>
							<th>User Id</th>
							<th>User Name</th>
							<th>User Dob</th>
							<th>Gender</th>
							<th>Person Category</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Door Number</th>
							<th>Street</th>
							<th>City</th>
							<th>Pin Code</th>
						</tr>
						</thead>
						<tbody>
							<tr>
								<td>${childGuardianDetails.userId}</td>
								<td>${childGuardianDetails.userName}</td>
								<td>${childGuardianDetails.userDob}</td>
								<td>${childGuardianDetails.gender}</td>
								<td>${childGuardianDetails.personCategory}</td>
								<td>${childGuardianDetails.email}</td>
								<td>${childGuardianDetails.phoneNumber}</td>
								<td>${childGuardianDetails.doorNumber}</td>
								<td>${childGuardianDetails.street}</td>
								<td>${childGuardianDetails.city}</td>
								<td>${childGuardianDetails.pinCode}</td>
							</tr>
						</tbody>
					</table>
				</findchildprentform:form>
			</div>
			<div>
				<findchildprentform:form action="" method="get"
					modelAttribute="childMotherdetails">
					
					<table border="2pxsolidblack" >
						
						<thead>
						<caption>Mother Details</caption>
						<tr>
							<th>User Id</th>
							<th>User Name</th>
							<th>User Dob</th>
							<th>Gender</th>
							<th>Person Category</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Door Number</th>
							<th>Street</th>
							<th>City</th>
							<th>Pin Code</th>
						</tr>
						</thead>
						<tbody>
							<tr>
								<td>${childMotherdetails.userId}</td>
								<td>${childMotherdetails.userName}</td>
								<td>${childMotherdetails.userDob}</td>
								<td>${childMotherdetails.gender}</td>
								<td>${childMotherdetails.personCategory}</td>
								<td>${childMotherdetails.email}</td>
								<td>${childMotherdetails.phoneNumber}</td>
								<td>${childMotherdetails.doorNumber}</td>
								<td>${childMotherdetails.street}</td>
								<td>${childMotherdetails.city}</td>
								<td>${childMotherdetails.pinCode}</td>
							</tr>
						</tbody>
					</table>
				</findchildprentform:form>
			</div>
			<div>
				<findchildprentform:form action="" method="get"
					modelAttribute="childFatherdetails">
					<table border="2" style="border-color: blue;">
						<thead>
						<caption>Father Details</caption>
						<tr>
							<th>User Id</th>
							<th>User Name</th>
							<th>User Dob</th>
							<th>Gender</th>
							<th>Person Category</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Door Number</th>
							<th>Street</th>
							<th>City</th>
							<th>Pin Code</th>
						</tr>
						</thead>
						<tbody>
							<tr>
								<td>${childFatherdetails.userId}</td>
								<td>${childFatherdetails.userName}</td>
								<td>${childFatherdetails.userDob}</td>
								<td>${childFatherdetails.gender}</td>
								<td>${childFatherdetails.personCategory}</td>
								<td>${childFatherdetails.email}</td>
								<td>${childFatherdetails.phoneNumber}</td>
								<td>${childFatherdetails.doorNumber}</td>
								<td>${childFatherdetails.street}</td>
								<td>${childFatherdetails.city}</td>
								<td>${childFatherdetails.pinCode}</td>
							</tr>
						</tbody>
					</table>
				</findchildprentform:form>
			</div>

		</div>
	</div>
</body>
</html>