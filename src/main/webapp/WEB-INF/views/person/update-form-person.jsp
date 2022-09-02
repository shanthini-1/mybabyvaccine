<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatepersonform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Person Form</title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<header>
		<div>
			<span id="time"> </span>
		</div>
	</header>
	<nav class="navbar">
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/persons/userfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class="logotitle">User Update Form</h1>
		</div>
		<div id="form">
			<updatepersonform:form action="modifypersons" method="post"
				modelAttribute="modifyPerson">
				<div class="row">
					<div class="col-25">
					<label for="userId">User Id</label>
				</div>
				<div class="col-75">
					<updatepersonform:input path="userId" />
				</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="userName">User Name</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="userName" type="text" name="username"
							minlength="3" maxlength="25" id="user name"
							placeholder="user name" pattern="^[A-Za-z ]+[A-Za-z ]*{3-25}$"
							required="true" />
					</div>
				</div>
				<updatepersonform:errors path="userName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="userDob">User Dob </label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="userDob" type="date"
							placeholder="birth date" required="true"/>
					</div>
				</div>
				<updatepersonform:errors path="userDob" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						Male
						<updatepersonform:radiobutton path="gender" value="Male" required="true" />
						Female
						<updatepersonform:radiobutton path="gender" value="Female" />
					</div>
				</div>
				<updatepersonform:errors path="gender" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="personCategory">Person Category</label>
					</div>
					<div class="col-75">
						<updatepersonform:select name="personCategory" path="personCategory"
							id="personCategory" required="true">
							<option value="${modifyPerson.personCategory}">${modifyPerson.personCategory}</option>
							<option value="User">User</option>
						
						</updatepersonform:select>
					</div>
				</div>
				<updatepersonform:errors path="personCategory" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="email">Email</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="email" type="email" name="email"
							id="email" placeholder="email"
							pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}" size="30"
							style="text-transform: none;" required="true" />
					</div>
				</div>
				<updatepersonform:errors path="email" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="phoneNumber" type="tel" id="phone"
							name="phone" placeholder="phone number"
							pattern="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
							required="true" maxlength="10" minlength="10" />
					</div>
				</div>
				<updatepersonform:errors path="phoneNumber" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="doorNumber">Door Number</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="doorNumber" type="text" name="doorno"
							minlength="1" maxlength="10" id="door no" placeholder="door no"
							pattern="[0-9A-Za-z+-\\/]*$" required="true" />
					</div>
				</div>
				<updatepersonform:errors path="doorNumber" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="street">Street</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="street" type="text" name="street"
							minlength="3" maxlength="25" id="street" placeholder="street"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<updatepersonform:errors path="street" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="city">city</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="city" type="text" name="city"
							minlength="3" maxlength="25" id="city" placeholder="city"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<updatepersonform:errors path="city" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Pin Code</label>
					</div>
					<div class="col-75">
						 <select name="pinCode" id="pinCode" required>
							<option value="${modifyPerson.pinCode}" >${modifyPerson.pinCode}</option>
							<c:forEach items="${listOfpincode}" var="code" varStatus="loop">
								<option value='${code}'>${code}</option>
							</c:forEach>
						</select> 
					</div>
				</div>
				<!-- use session to update password  -->
				<div class="row">
					<div class="col-25">
						<label for="passWord">Password</label>
					</div>
					<div class="col-75">
						<updatepersonform:input path="passWord" type="password" minlength="8"
							maxlength="25" placeholder="password"
							pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="true" />
					</div>
				</div>
				<updatepersonform:errors path="pinCode" class="text-danger" />
				
				<div class="button-s">
					<updatepersonform:button>Update</updatepersonform:button>
				</div>
			</updatepersonform:form>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
			<%@include file="/WEB-INF/js/time.js" %>
	</script>

</body>
</html>