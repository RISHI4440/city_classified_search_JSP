	<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root"); //connecting to new DB   

        
PreparedStatement ps=con.prepareStatement("select * from city1_user where name=?");
ps.setString(1,n);
ResultSet rs=ps.executeQuery();
boolean status=rs.next();

if(status)
out.println("Invalid user! userName already exists");
else
out.println("Valid user");

con.close();
}catch(Exception e){e.printStackTrace();}

%>