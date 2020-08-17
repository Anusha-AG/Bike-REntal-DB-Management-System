<%@ page import="java.sql.*" %>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
try{
	String url = "jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
	String username = "root";
	String password = "";
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url,username,password);
	if(conn!=null)
	{
		out.print("Connected to Database");
	}
}catch(Exception e)
	{	
		out.print("Not connected:  "+e);
	}

%>

</body>
</html>