<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Train Form</title>
</head>
<body>
	<spr:form action="train_update.htm" method="post" commandName="train" >
	<table align="center" >
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
							<option value="Nashik">Panvel</option>

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
		 
		<tr>
			<td>
				<a href="train_list.htm" >Back</a>
			</td>
			<td>
				<input type="submit" value="Update" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>