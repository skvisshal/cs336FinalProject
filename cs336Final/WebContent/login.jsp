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
	String choice = request.getParameter("command");
	
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(choice!=null&&choice.compareTo("Customer")==0) {
		String select = "SELECT * FROM Customer WHERE user_name='"+username+"' AND passwd='"+password+"'";
		ResultSet result = stmt.executeQuery(select);
		if(result.first()){
			out.print("<center>Welcome "+result.getString("name")+"</center");
			%>
			<jsp:include page="customer.jsp"/> 
			<%
		}
		else{
			out.print("Username doesn't exist");
			%>
			<jsp:include page="index.jsp"/> 
			<%
		}
	}
	else if(choice!=null&&choice.compareTo("admin")==0){
		String select = "SELECT * FROM Person WHERE user_name='"+username+"' AND passwd='"+password+"' AND is_admin=true";
		ResultSet result = stmt.executeQuery(select);
		if(result.first()){
			out.print("<center>Welcome "+result.getString("name")+"</center");
			%>
			<jsp:include page="admin.jsp"/> 
			<%
			
		}
		else{
			out.print("Username doesn't exist");
			%>
			<jsp:include page="index.jsp"/> 
			<%
		}
	}
	else if(choice!=null&&choice.compareTo("custRep")==0){
		String select = "SELECT * FROM Person WHERE user_name='"+username+"' AND passwd='"+password+"' AND is_admin=false";
		ResultSet result = stmt.executeQuery(select);
		if(result.first()){
			out.print("<center>Welcome "+result.getString("name")+"</center");
			%>
			<jsp:include page="custRep.jsp"/> 
			<%
		}
		else{
			out.print("Username doesn't exist");
			%>
			<jsp:include page="index.jsp"/> 
			<%
		}
	}
	else{
		out.print("Please select a Radio Button");
		%>
		<jsp:include page="index.jsp"/> 
		<%
	}
	
	
	
}catch (Exception ex) {
	out.print(ex);
	out.print("Login failed Exception");
}
%>

</body>
</html>