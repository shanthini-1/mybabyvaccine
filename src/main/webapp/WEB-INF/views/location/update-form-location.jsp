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
<%@include file="/WEB-INF/css/addlocation.css" %>
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
		<div class="logo">My Baby Vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/locations/locationfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.html"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
<div id="root">
		<div>
			<h1>Update Location</h1>
		</div>
		<div id="form">
			<updatelocationform:form action="modifylocations" method="post"
				modelAttribute="modifyLocation">
				<div class="row">
					<div class="col-25">
						      <label for="pinCode">Pin Code</label>    
					</div>
					<div class="col-75">
						<updatelocationform:select path="pinCode" name="pinCode"
							id="pinCode" placeholder="pincode" pattern="^[6][0-9]*{6}"
							required="true">
                    <updatelocationform:option value=''>-select-</updatelocationform:option>
                        <c:forEach items="${listAllPincode}"
								var="pinCode" varStatus="loop">
                            <updatelocationform:option
									value='${pinCode}'>${pinCode}</updatelocationform:option>
                        </c:forEach>
                    </updatelocationform:select>
					</div>
				</div>
                <updatelocationform:errors path="pinCode"
					class="text-danger" />

				<div class="row">
					<div class="col-25">
						<label for="district">District</label>
					</div>
					<div class="col-75">
						<updatelocationform:input path="district" type="text"
							name="district" minlength="3" maxlength="25" id="pin"
							placeholder="district" pattern="^[A-Za-z]+[A-Za-z ]*$"
							required="true" />
					</div>
				</div>
				<updatelocationform:errors path="district" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="stateName">State Name</label>
					</div>
					<div class="col-75">
						<updatelocationform:input path="stateName" type="text"
							name="stateName" minlength="3" maxlength="25" id="pin"
							placeholder="stateName" pattern="^[A-Za-z]+[A-Za-z ]*$"
							required="true" />
					</div>
				</div>
				<updatelocationform:errors path="stateName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="country">Country</label>
					</div>
					<div class="col-75">
						<updatelocationform:input path="country" type="text"
							name="country" minlength="3" maxlength="25" id="pin"
							placeholder="country" pattern="^[A-Za-z]+[A-Za-z ]*$"
							required="true" />
					</div>
				</div>
				<updatelocationform:errors path="country" class="text-danger" />
				<updatelocationform:button>Update Location</updatelocationform:button>

			</updatelocationform:form>
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