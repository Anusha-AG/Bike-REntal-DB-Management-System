<html>
<head>
<title>Delete</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
	String Query="delete from vehicle where plate_no=?";
	PreparedStatement psm=conn.prepareStatement(Query);
	psm.setString(1, id);
	psm.executeUpdate();
	out.println("Data Deleted Successfully!");
	response.sendRedirect("admin2.html");
}
catch(Exception ex)
{
	System.out.print(ex);
}
%>
</body>
</html>