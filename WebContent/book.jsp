<html>
<head>
<title>book</title>
</head>
<body></body>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
         <%   
              
              
              String plate_no=request.getParameter("pl");
              String email=request.getParameter("em");
              String hours=request.getParameter("hr");
              
             
              

              try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
              String sql="insert into booking(plate_no,email,hrs)values(?,?,?)";
              PreparedStatement preparestatement=con.prepareStatement(sql);
              preparestatement.setString(1,plate_no);
              preparestatement.setString(2,email);
              preparestatement.setString(3,hours);
              preparestatement.execute();
              out.println("Booking successfull");
              response.sendRedirect("sbooking.html");

              }
              
              catch(SQLException e)
              {
              out.println("error in loading data");
              out.println(e);
              }
              %>
              </body>
              </html>