<html>
<head>
<title>signup</title>
</head>
<body></body>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  
         <%@page import ="java.sql.*" %>
         <%@page import ="javax.sql.*" %>
         <%   
              
              
              String fname=request.getParameter("fnam");
         String sname=request.getParameter("snam");
         String email=request.getParameter("em");
              String passwd=request.getParameter("pass");
              
              String dob=request.getParameter("dob");
              String phno=request.getParameter("num");
              String dlno=request.getParameter("dl");
              

              try{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              java.sql.Connection con = DriverManager.getConnection
              ("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
              String sql="insert into customer_details(fname,sname,email,passwd,dob,phno,dl)values(?,?,?,?,?,?,?)";
              PreparedStatement preparestatement=con.prepareStatement(sql);
              preparestatement.setString(1,fname);
              preparestatement.setString(2,sname);
              preparestatement.setString(3,email);
              preparestatement.setString(4,passwd);
              preparestatement.setString(5,dob);
              preparestatement.setString(6,phno);
              preparestatement.setString(7,dlno);
              preparestatement.execute();
              out.println("Successful in adding the data!");
              response.sendRedirect("sign_in.html");

              }
              
              catch(SQLException e)
              {
              out.println("error in loading data");
              out.println(e);
              }
              %>
              </body>
              </html>