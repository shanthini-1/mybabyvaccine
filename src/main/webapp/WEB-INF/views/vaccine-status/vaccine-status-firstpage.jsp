<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Status</title>
</head>
<body>
	<h1>Vaccination Status</h1>
	<ul>

		<li><a href="/admin/vaccinationstatus/vaccinationstatusaddform">Add
				vaccination status </a>
		<li><a
			href="/admin/vaccinationstatus/modifyvaccinationstatusform">Update
				vaccination status </a>
		<li><a
			href="/admin/vaccinationstatus/deletevaccinationstatusform">Delete
				vaccination status </a>
		
			<h3>fetch specyific vaccine status of child</h3>
			<li><a href="/admin/vaccinationstatus/fetchchildvaccinebyidform">Fetch
				of vaccination status  </a>
				<h3>list all vaccination status</h3>
		<li><a href="/admin/vaccinationstatus/listallvaccinationstatus">list
				of vaccination status </a>
				<h3>list all vaccines by child id from vaccine status</h3>
		<li><a href="/admin/vaccinationstatus/listvaccinebycid">Fetch
				By Child Id</a>
				<h3>list all children by vaccine id from vaccine status</h3>
		<li><a href="/admin/vaccinationstatus/listchildrenbyvacid">Fetch
				By Vacccine Id</a>
				<h3>Details of child and vaccine list by child id</h3>
		<li><a href="/admin/vaccinationstatus/detailsofchildvaccine">Details
				child vaccines</a>
						<h3>Details of vaccine and children list by vaccine id</h3>
		<li><a href="/admin/vaccinationstatus/childvaccinedetails">Details
				child vaccines</a>
				
	</ul>
</body>
</html>