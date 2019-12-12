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
<% try{
	String url = "jdbc:mysql://travelagency.cvbfi8amiu9x.us-east-2.rds.amazonaws.com:3306/FlightBooking";	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, "group11", "password11");
	
	Statement stmt = con.createStatement();
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	
	String insert = "INSERT INTO Customer	"
			+ "VALUES (?, ?, ?, ?)";
	PreparedStatement ps = con.prepareStatement(insert);
	ps.setString(1, username);
	ps.setString(2, password);
	ps.setString(3, name);
	ps.setInt(4, 1);
	
	ps.executeUpdate();
	
	con.close();
	out.print("Account Successfully Created");

}catch (Exception ex) {
	//out.print(ex);
	out.print("Username Already Exists");
}
%>
<br>
<jsp:include page="index.jsp"/> 

</body>
</html>