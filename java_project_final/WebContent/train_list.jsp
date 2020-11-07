<%@page import="com.cdac.dto.Train"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style type="text/css">
td{
	  border: 2px solid black;
  border-radius: 3px;
   padding: 8px 20px;
  margin: 5px 0;	
}
</style>


</head>
<body>

	<table align="center">
		<%
			List<Train> elist = (List<Train>) request.getAttribute("trnList");
		for (Train trn : elist) {
		%>
		
		<tr>
			<td>Passanger Name :</td>
			<td><%=trn.getPassName()%></td>
		</tr>
		
		<tr>
			<td>Passanger Age :</td>
			<td><%=trn.getPassAge()%></td>
		</tr>

		<tr>
			<td>Passanger Gender :</td>
			<td><%=trn.getPassGender()%></td>
		</tr>

		<tr>
			<td>Train No :</td>
			<td><%=trn.getTrainId()%></td>
		</tr>

		<tr>
			<td>Train Name :</td>
			<td><%=trn.getTrainName()%></td>
		</tr>

		<tr>
			<td>Pass Type : </td>
			<td><%=trn.getPassType()%></td>
		</tr>

		<tr>
			<td>Staring Destination :</td>
			<td><%=trn.getTrainFrom()%></td>
		</tr>

		<tr>
			<td>End Destination :</td>
			<td><%=trn.getTrainTo()%></td>
		</tr>


		<td><a href="train_delete.htm?trainId=<%=trn.getTrainId()%>">Delete
				Booking </a></td>
		<td><a href="train_update_form.htm?trainId=<%=trn.getTrainId()%>">Update
				Booking</a></td>
		<%
			}
		%>
			<td><a href="home.jsp">Back</a></td>

	 
	</table>

</body>
</html>