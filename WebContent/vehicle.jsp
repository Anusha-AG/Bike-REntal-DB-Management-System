<html>
<head>
<title>VEHICLE</title>
</head>
<body></body>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
         <%   
              
              
              String plate_no =request.getParameter("pl");
         String color=request.getParameter("clr");
              String model=request.getParameter("mdl");
              
              String make=request.getParameter("make");
              String gear=request.getParameter("gear");
              String phr=request.getParameter("phr");
             
              

              try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
             //String sql="insert into vehicle(plate_no,color,model,make,gear,phr)values(?,?,?,?,?,?)";
              PreparedStatement preparestatement=con.prepareStatement("{call getvehicle(?,?,?,?,?,?)}");
              preparestatement.setString(1,plate_no);
              preparestatement.setString(2,color);
              preparestatement.setString(3,model);
              preparestatement.setString(4,make);
              preparestatement.setString(5,gear);
              preparestatement.setString(6,phr);
              
              preparestatement.execute();
              out.println("<script type=\"text/javascript\">");
              out.println("alert(\"Successful in adding the data!\")");
              out.println("window.location=\"admin2.html\";");
              out.println("</script>");
              }
              
              catch(SQLException e)
              {
              out.println("error in loading data");
              out.println(e);
              }
              %>
              </body>
              </html>