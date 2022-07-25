<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>City Search</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">City Classified and Search Project</a></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
<%@ include file="header.jsp" %>
	
        <div id="username" >
                                        <%
					if(session.getAttribute("user")!=null)
                                        {
					out.print("Hi,"+(String)session.getAttribute("user"));
                                       
                                       }
					 %>
                                    </div>
        </div>
        
        </div>
	
        
        
	<div id="banner"><img id="coverimg" src="images/img03.jpg" /></div>
	<div id="welcome">
	<%@ include file="coockie.jsp" %>
        <h3 class="title" ><a href="#">City Classified and Search Project</a></h3>
		<div class="entry">
			
                    
	
	
                </div>
	
	<div id="three-columns" >
		<div id="column1">
			  <h3>Category:</h3>
<ul>
<li><a href="details.jsp?category=bank">Bank</a></li>
<li><a href="details.jsp?category=atm">ATM</a></li>
<li><a href="details.jsp?category=school">School</a></li>
<li><a href="details.jsp?category=hospital">Hospital</a></li>
<li><a href="details.jsp?category=company">Company</a></li>
<li><a href="details.jsp?category=hotel"> Hotel</a></li>
</ul>
		</div>
		<div id="column2">

                    <div id="dsearch">
                        <form method="post" action="details.jsp"><br/>
<table >
<tbody>
<tr>
<td>&nbsp;Search City<br/></td>
<td>&nbsp;<input type="text" name="city" placeholder="Enter City Name "/></td>
</tr>
    <tr height="15px;"></tr>
  <!--  <tr >
        <td>&nbsp;Category</td>
        <td>&nbsp;<select name="category">
<option>Bank</option>
<option>ATM</option>
<option>School</option>
<option>Company</option>
<option>Hospital</option>
<option>Hotel</option>

</select>

</td>
    </tr>
  -->
    <tr height="20px;"></tr>
<tr><td valign="top"><br></td><td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Search" name="button1"></td></tr>
</tbody>
</table>
</form>
                        
                        
                    </div>   
                </div>
		<div id="column3">
			<h3>Top City</h3> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
	
	
		<!-- end #content -->
		
	
                
	<!-- end #page --> 
 <br/>   
        </div>
                
        <div id="page2">
		<%@ page import="java.sql.*" %>
<%
String category=request.getParameter("category");
String city=request.getParameter("city");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");    

String query="select * from city1_details where category=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,category);
ResultSet rs=ps.executeQuery();

String query1="select * from city1_details where city=?";
PreparedStatement ps1=con.prepareStatement(query1);
ps1.setString(1,city);
ResultSet rs1=ps1.executeQuery();

//out.print("<table style='background-color:33ccff';table-layout:fixed' border='1' cellpadding='1' width='100%' cellspacing='1'>");
out.print("<table class='box-style'>");

out.print("<tr>"
        + "<th width='180px'>Name</th>"
        + "<th width='90px'>Category</th>"
        + "<th width='220px'>WebSite/Email</th>"
        + "<th>Address</th>"
        + "<th width='100px'>City</th>"
        + "<th width='80px'>Contact</th>");

    while(rs.next())
    {
        out.print("<tr>"
                + "<td>"+rs.getString(2)+"</td>"
                + "<td> "+rs.getString(3)+"</td>"
                + "<td> "+rs.getString(4)+"</td>"
                + "<td> "+rs.getString(5)+"</td>"
                + "<td> "+rs.getString(6)+" </td>"
                + "<td>"+rs.getString(7)+" </td>"
                + "</tr>");
    }
    while(rs1.next())
    {
        out.print("<tr>"
                + "<td>"+rs1.getString(2)+"</td>"
                + "<td> "+rs1.getString(3)+"</td>"
                + "<td> "+rs1.getString(4)+"</td>"
                + "<td> "+rs1.getString(5)+"</td>"
                + "<td> "+rs1.getString(6)+" </td>"
                + "<td>"+rs1.getString(7)+" </td>"
                + "</tr>");
    }
    out.print("</table>");
    }
catch(Exception e)
{
    e.printStackTrace();
}
%>
		</div>        
</div>

                

	  <jsp:include page="footer.html"></jsp:include> 

<!-- end #footer --></body></html>


















