<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>non-gear</title>



<style>

   body{
   		 background-repeat: no-repeat;
            height:100%;
            background-position: center;
           background-size:cover;
            color: black;
        background-color:azure;
        background-size: 100%;
      }
      button{
	
            background-position: center;
           
            background-size:cover;
            border-radius: 150px;
            background-color: ghostwhite;
            font-family: cursive;
        
        }
        button:hover{
            background-color: black;
            font-family: fantasy;
            color: ghostwhite
        }

      form {
  margin:0 auto;
  width:300px
  }
  input {
  margin-bottom:3px;
  padding:10px;
  width: 100%;
  border:1px solid #CCC
  }
  button {
  padding:10px
  }
  label {
  cursor:pointer
  }

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}


</style>

<body style="background-image: url(a5.jpg)">
<table class="content-table" align='center'>

            
      <br><br><br>
<center><b><h1>SCOOTY</h1></b></center>
<thead>
<tr><th>PLATE_NO</th>
	<th>COLOR</th>
	<th>MAKE</th>
	<th>MODEL</th>
	<th>PRICE/HOUR</th>
	
	</tr>
</thead>
<%
 try
{
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
     java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bike?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
 	String username = "root";
     String Query="SELECT * FROM `gear2`"; 
     PreparedStatement psm=conn.prepareStatement(Query);
     ResultSet rs=psm.executeQuery();
     while(rs.next())
     {
    	 %>
    	 <tr>
    	 <td><%=rs.getString("plate_no") %></td>
    	 <td><%=rs.getString("color") %></td>
    	 <td><%=rs.getString("model") %></td>
    	 <td><%=rs.getString("make") %></td>
    	 <td><%=rs.getInt("phr") %></td>
    	 </tr><%
     }
}
catch(Exception ex)
{
	out.println(ex);
}
%>
	
      
      

</font>
</table>
<center>
<a href="book.html"><button style="border-radius:50px">Book</button></a>
<a href="2.html"><button style="border-radius:50px">Cancle</button></a>
</center>

</body>
</html>