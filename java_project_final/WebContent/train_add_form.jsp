<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Add Train Booking Form</title>
<style type="text/css">
td{
	  border: 2px solid black;
  border-radius: 4px;
   padding: 12px 20px;
  margin: 8px 0;
	
}



</style>


</head>
<body bgcolor="#0AAFFBC">
	<spr:form action="train_add.htm" method="post" commandName="train">
		<center>
			<h1>
				<marquee bgcolor="#0FBF00">Railway Reservation System </marquee>
			</h1>
			<table>
				<tr>
					<td>Train No :</td>
					<td><spr:input path="trainId" /></td>
				</tr>

				<tr>
					<td>Passanger Name :</td>
					<td><spr:input path="passName" /></td>
				</tr>
				<tr>
					<td>Passanger Age :</td>
					<td><spr:input path="passAge" /></td>
				</tr>

				<tr>
					<td><form:label path="passGender">Gender</form:label></td>
					<td><spr:radiobutton path="passGender" value="Male" />Male <spr:radiobutton
							path="passGender" value="Female" />Female</td>
				</tr>

				<tr>
					<td>Train Name :</td>
					<td><spr:input path="trainName" /></td>
				</tr>
				<tr>
					<td>Pass Type</td>
					<td><spr:select path="passType">
							<spr:option value="Weekly">Weekly</spr:option>
							<spr:option value="Monthly">Monthly</spr:option>
							<spr:option value="Quarterly">Quarterly</spr:option>
							<spr:option value="Yearly">Yearly</spr:option>
						</spr:select></td>
				</tr>

				<tr>
					<td>Train From :</td>
					<td><spr:select path="trainFrom">
							<option value="Virar">Virar</option>
							<option value="Kasara">Kasara</option>
							<option value="Panvel">Panvel</option>

						</spr:select></td>
				</tr>

				<tr>
					<td>Train To:</td>
					<td><spr:select path="trainTo">
							<option value="Churchgate">Churchgate</option>
							<option value="Mumbai CST">Mumbai CST</option>
							<option value="Thane">Thane</option>

						</spr:select></td>
				</tr>

				<tr>
				<td>Booking Date (YYYY-MM-DD ):</td>
				<td><spr:input path="bookDate" /></td>
				</tr>

				<tr>
					<td><a href="home.jsp">Back</a></td>
					<td><input type="submit" value="Add"></td>
				</tr>
			</table>
		</center>
	</spr:form>
	<div align="center">
<img src="timetable-for-mumbais-first-ac-local-3.jpg" alt="Train Schedule " width="500" height="600">
</div>
</body>
</html>