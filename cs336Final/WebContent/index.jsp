<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Services</title>
</head>
<body>
<center>Flight Services Project Fall 2019</center>
<br>
<center>Login Page</center>
<br>
<form method="post" action="login.jsp">
<input type="radio" name="command" value="admin"/> Admin Login
<br>
<input type="radio" name="command" value="custRep"/> Customer Representative Login
<br>
<input type="radio" name="command" value="Customer"/> Customer Login
<br>
<center>
<table>
    <tr>
        <td>Username</td><td><input type="text" name="username"></td>
    </tr>
    <tr>
        <td>Password</td><td><input type="text" name="password"></td>
    </tr>
</table>
</center>
<br>
<center><input type="submit" value="Login" /></center>
</form>
<br>
<center>Create a new Customer</center>
<br>
<center>
	<form method="post" action="create.jsp">
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
	<input type="submit" value="Create New User" />
	</form>
	</center>
	<br>
</body>
</html>