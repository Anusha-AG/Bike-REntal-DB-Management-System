<html>
<head>
<title>Feedback</title>
</head>
<body></body>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
         <%   
              
              
              String email=request.getParameter("em");
         String feedback=request.getParameter("feedback");
             
              

              try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
              String sql="insert into feedback(email,comment)values(?,?)";
              PreparedStatement preparestatement=con.prepareStatement(sql);
              preparestatement.setString(1,email);
              preparestatement.setString(2,feedback);
              preparestatement.execute();
              out.println("Feedback Successful");
              response.sendRedirect("main.html");

              }
              
              catch(SQLException e)
              {
              out.println("error in loading data");
              out.println(e);
              }
              %>
              </body>
              </html>