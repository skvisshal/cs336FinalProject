<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Create a new Admin
	<form method="post" action="createAdmin.jsp">
		<table>
		    <tr>
		        <td>Username</td><td><input type="text" name="username"></td>
		    </tr>
		    <tr>
		        <td>Password</td><td><input type="text" name="password"></td>
		    </tr>
		    <tr>
		        <td>Name</td><td><input type="text" name="name"></td>
		    </tr>
		</table>
	<br>
	<input type="submit" value="Create New Admin" />
	</form>
	<br>
Create a new Customer Representative
	<form method="post" action="createCustRep.jsp">
		<table>
		    <tr>
		        <td>Username</td><td><input type="text" name="username"></td>
		    </tr>
		    <tr>
		        <td>Password</td><td><input type="text" name="password"></td>
		    </tr>
		    <tr>
		        <td>Name</td><td><input type="text" name="name"></td>
		    </tr>
		</table>
	<br>
	<input type="submit" value="Create New Customer Representative" />
	</form>
	<br>
	<a href="index.jsp">LOG OUT</a>
</body>
</html>