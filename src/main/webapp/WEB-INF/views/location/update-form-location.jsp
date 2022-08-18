<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatelocationform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Location Form</title>
<style>

.text-danger {
	color: red;
	font-size: 15px;
}
#form{
	border: 2px solidnavy;
	margin:auto;
}
#formbuttons{
	display: flex;
	justify-content: space-between;
}
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<updatelocationform:form action="modifylocations" method="post"
				modelAttribute="modifyLocation">
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
				
					<updatelocationform:input path="pinCode" type="text" value=""  name="pincode" minlength="6" maxlength="6"  id="pin" pattern="^[1-9][0-9]{5}" required="true"/>
				</div>
					<updatelocationform:errors path="pinCode" class="text-danger" />
				<div>
					<label for="district">District</label>
				</div>
				<div>
					<updatelocationform:input path="district" type="text"  name="pincode" minlength="3" maxlength="25"  id="pin" pattern="^[A-Za-z]+[A-Za-z ]*$" required="true"/>
				</div>
					<updatelocationform:errors path="district" class="text-danger" />
				<div>
					<label for="stateName">State Name</label>
				</div>
				<div>
					<updatelocationform:input path="stateName" type="text"  name="pincode" minlength="3" maxlength="25"  id="pin" pattern="^[A-Za-z]+[A-Za-z ]*$" required="true"/> 
				</div>
				<updatelocationform:errors path="stateName" class="text-danger" />
				<div>
					<label for="country">Country</label>
				</div>
				<div>
					<updatelocationform:input path="country" type="text"  name="pincode" minlength="3" maxlength="25"  id="pin" pattern="^[A-Za-z]+[A-Za-z ]*$" required="true"/>
				</div>
				<updatelocationform:errors path="country" class="text-danger" />
				<div id="formbuttons">
				<div>
				<updatelocationform:button><a href="/location/modifylocationform">Back</a></updatelocationform:button>
				</div>
				<div>
					<updatelocationform:button>Update Location</updatelocationform:button>
				</div>
				</div>
			</updatelocationform:form>
		</div>
	</div>
</body>
</html>