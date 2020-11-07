<%@page import="com.cdac.dto.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%-- 
<% 
	if(session.getAttribute("user")!=null ){
		
%>      --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<table align="center" >
		<tr><td>&nbsp;&nbsp;</td></tr>
		<tr>
			<td> Welcome <%=((User)session.getAttribute("user")).getFirstName()%> </td>
		</tr>
		<tr>
			<td> <a href="prep_train_add_form.htm" >Book Train Pass</a> </td>
		</tr>
		<tr>
			<td> <a href="train_list.htm" >Pass List</a> </td>
		</tr>
		<tr>
			<td> <a href="logout.htm" >Logout</a> </td>
		</tr>
	</table>
</body>
</html>
<%-- 
<% }else{
	response.sendRedirect("index.jsp");	
	}
%>--%> 
