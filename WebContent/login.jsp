<html>
<head>
<title>login</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
        <%
            String uid = request.getParameter("em");
            String pswd = request.getParameter("pass");
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false", "root", "");
            String Query="select * from customer_details where email=? and passwd=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,uid);
            psm.setString(2,pswd);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
            response.sendRedirect("select.html");
            }                  
                else
              { 
                	out.println("login failed,wrong credentials");	//response.sendError(401,"Invalid Credentials");
                  
              }
            
            }
            catch(Exception e)
              {
              out.println(e);
              }
%>
</body>
</html>