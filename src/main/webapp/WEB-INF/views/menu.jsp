<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	<h1 style="font-size: large; color: maroon;">Welcome to
		FirstCare!!!</h1>
	<h1>Index page</h1>
	<ul>
		<li>
			<h1>Vaccine</h1>
		<li><a href="/admin/vaccine/vaccineaddform">add vaccine </a>
		<li>
			<form action="/admin/vaccine/vaccinedeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccine/vaccinemodifyform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccine/fetchvaccine" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/admin/vaccine/listallvaccines">list of vaccine </a>
	</ul>
	<ul>
		<li>
			<h1>Vaccination Schedular</h1>
		<li><a href="/admin/vaccinationschedular/vaccinationschedularaddform">add vaccination schedular </a>
		<li>
			<form action="/admin/vaccinationschedular/vaccinationschedulardeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccinationschedular/vaccinationschedularmodifyform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccinationschedular/fetchvaccinationschedular" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/admin/vaccinationschedular/listallvaccinationschedulars">list of vaccination schedular </a>
	</ul>
	<ul>
		<li>
			<h1>Vaccination status</h1>
		<li><a href="/admin/vaccinationstatus/vaccinationstatusaddform">add vaccination status </a>
		<li>
			<form action="/admin/vaccinationstatus/vaccinationstatusdeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccinationstatus/vaccinationstatusupdateform" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/admin/vaccinationstatus/fetchvaccination" method="get">
				<label>enter id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/admin/vaccinationstatus/listallvaccinationstatus">list of vaccination status </a>
	</ul>
	<ul>
		<li>
			<h1>Location</h1>
		<li><a href="/admin/location/addlocationform">add location </a>
		<li>
			<form action="/admin/location/locationdeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="pin code"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/admin/location/locationmodifyform" method="get">
				<label>enter id </label> <input type="text" placeholder="pin code"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/admin/location/fetchlocation" method="get">
				<label>enter id </label> <input type="text" placeholder="pin code"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/admin/location/listalllocations">list of
				locations </a>
	</ul>
	<ul>
		<li>
			<h1>Person</h1>
		<li><a href="/user/person/addpersonform">add Person </a>
		<li>
			<form action="/user/person/persondeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="user id"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/user/person/personmodifyform" method="get">
				<label>enter id </label> <input type="text" placeholder="user id"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/user/person/fetchperson" method="get">
				<label>enter id </label> <input type="text" placeholder="user id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/user/person/listallpersons">list of person </a>
		<li>
		<h3>fetch person and location</h3>
			<form action="/user/person/getpersonlocation" method="get">
				<label>enter id </label> <input type="text" placeholder="user id"
					name="perId"> <input type='submit' value="fetch" name="submit">
			</form>
	</ul>
	<ul>
		<li>
			<h1>Child</h1>
		<li><a href="/admin/child/addchildform">add child </a>
		<li>
			<form action="/admin/child/childdeleteform" method="get">
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="delete"
					name="submit">
			</form>
		<li>
			<form action="/admin/child/childmodifyform" method="get">
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="update"
					name="submit">
			</form>
		<li>
			<form action="/admin/child/fetchchild" method="get">
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
		<li><a href="/admin/child/listallchilds">list of child </a>
		<li>
			<form action="/admin/child/childvaccinestatus" method="get">
			<h3>fetch child vaccination status details</h3>
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/childhospitaldetails" method="get">
			<h3>fetch child hospital details</h3>
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/childparentdetails" method="get">
			<h3>fetch child parent details</h3>
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/childguardiandetails" method="get">
			<h3>fetch child guardian details</h3>
				<label>enter id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/listchildbyparentid" method="get">
			<h3>list child by parent id</h3>
				<label>enter id </label> <input type="text" placeholder="father id"
					name="fId">
					<label>enter id </label> <input type="text" placeholder="mother id"
					name="mId">
					 <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/listchildbyhospitalid" method="get">
			<h3>list child by Hospital id</h3>
				<label>enter id </label> <input type="text" placeholder="hospital id"
					name="hospitalId">
					 <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/listchildbydoctorid" method="get">
			<h3>list child by Doctor id</h3>
				<label>enter id </label> <input type="text" placeholder="doctor id"
					name="doctorId">
					 <input type='submit' value="fetch" name="submit">
			</form>
			<li>
			<form action="/admin/child/listchildbyguardianid" method="get">
			<h3>list child by Guardian id</h3>
				<label>enter id </label> <input type="text" placeholder="doctor id"
					name="gId">
					 <input type='submit' value="fetch" name="submit">
			</form>
	</ul>
	<ul>
		<li>
			<h1>Hospital</h1>
		<li><a href="/admin/hospital/addhospitalform">add Hospital </a>
		<li>
			<form action="/admin/hospital/hospitaldeleteform" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital id" name="id"> <input type='submit'
					value="delete" name="submit">
			</form>
		<li>
			<form action="/admin/hospital/hospitalmodifyform" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital id" name="id"> <input type='submit'
					value="update" name="submit">
			</form>
		<li>
			<form action="/admin/hospital/fetchhospital" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital id" name="id"> <input type='submit'
					value="fetch" name="submit">
			</form>
		<li><a href="/admin/hospital/listallhospitals">list of
				Hospital </a>
				<li>
			<form action="/admin/hospital/gethoscontactperson" method="get">
				<label>enter id </label> <input type="text"
					placeholder="contact person id" name="id"> <input type='submit'
					value="fetch" name="submit">
			</form>
	</ul>
	<ul>
		<li>
			<h1>Hospital Staff</h1>
		<li><a href="/admin/hospitalstaff/addhospitalstaffform">add Hospital staff</a>
		<li>
			<form action="/admin/hospitalstaff/hospitalstaffdeleteform" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospita lstaff id" name="id"> <input type='submit'
					value="delete" name="submit">
			</form>
		<li>
			<form action="/admin/hospitalstaff/hospitalstaffmodifyform" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital staff id" name="id"> <input type='submit'
					value="update" name="submit">
			</form>
		<li>
			<form action="/admin/hospitalstaff/fetchhospitalstaff" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital staff id" name="id"> <input type='submit'
					value="fetch" name="submit">
			</form>
		<li><a href="/admin/hospitalstaff/listallhospitalstaffs">list of Hospital Staffs </a>
		<li>
		<h3>fetch details of staff</h3>
			<form action="/admin/hospitalstaff/gethoscontactpersondetails" method="get">
				<label>enter id </label> <input type="text"
					placeholder="hospital staff id" name="id"> <input type='submit'
					value="fetch" name="submit">
			</form>
		
	
	</ul>
</body>
</html>