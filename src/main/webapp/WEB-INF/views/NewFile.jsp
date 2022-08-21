<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch children</title>
<style type="text/css">
<%@include file="/WEB-INF/css/person-add-form.css" %>
 #root {
	margin-bottom: 289px;
	padding-bottom: 34px;
}

input #childId {
	font-size: 20px;
}
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
		<div class="logo">My Baby vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/children/childfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class="logotitle">Find child</h1>
		</div>
		<div id="form">
			<form action="/children/fetchchild" method="get">
				<div onclick="myFunction()" id="myDropdown">
					 <select name="cid" id=cid  onclick="filterFunction()">
					<option value=''></option>
						<c:forEach items="${listAllChildrenId}" var="childId"
							varStatus="loop">
							<option value='${childId}'>${childId}</option>
						</c:forEach>
					</select> 
				</div>
					<input type="submit" value="find"></input>
			</form>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script type="text/javascript">
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		function filterFunction() {
			var input, filter, option, i;
			input = document.getElementById("cid");
			filter = input.value.toUpperCase();
			 div = document.getElementById("myDropdown"); 
			option = div.getElementsByTagName("option");
			for (i = 0; i < option.length; i++) {
				txtValue = option[i].textContent || option[i].innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					option[i].style.display = "";
				} else {
					option[i].style.display = "none";
					/* <option value='${childId}'>${childId}</option> */
				}
			}
		}
	</script>
	<script>
		
	<%@include file="/WEB-INF/js/time.js" %>
		
	</script>
</body>
</html>