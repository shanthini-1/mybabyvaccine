<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="ISO-8859-1">
<title>User</title>
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
				<a href="/login/loginform"> <em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.jsp"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
		</div>
	</nav>

		<h1>Person</h1>
	<ul>
		<li><a href="/persons/addpersonform">Add Person </a>
		<li><a href="/persons/usermodifyform">Modify person </a>
		<li><a href="/persons/userdeleteform">Delete Person </a>
		<li><a href="/persons/userfindform">Find person </a>
		<li><a href="/persons/userlocationfindform">Find Person Location </a>
		<li><a href="/persons/listallpersons">list of person </a>
	</ul>
<footer>
		<p>
			create by shanthini <br>Copyright &#169; 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
		
	</script>

</body>
</html>