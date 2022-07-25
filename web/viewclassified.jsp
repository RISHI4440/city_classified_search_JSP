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
	
<%@ include file="header.jsp"  %>


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
<%@ include file="coockie.jsp"  %>
		<h3 class="title"><a href="#">View Classifieds</a></h3>
		<div class="entry">
			
                    
                    
	
	
                </div>
	
	<div id="three-columns">
		<div id="column1">
			
                    
                    
		</div>
		<div id="column2">

	</div>
		<div id="column3">
			
                    
                    
		</div>
	</div>
	
	
		<!-- end #content -->
		
	
	<!-- end #page --> 
 <br/>
        </div>
              <div id="page2">
		
<%@ page import="java.sql.*" %>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");    
PreparedStatement ps=con.prepareStatement("select * from CITY_CLASSIFIED");
Statement smt=con.createStatement();
//String query="select * from CITY_CLASSIFIED";

//out.println("<table style='background-color:33ccff'; border='1' cellpadding='1' width='100%' cellspacing='1'>");

out.print("<table class='box-style'>");
out.print("<tr><th width='60px'>No</th><th width='60px'>Buy/Sell</th><th width='160px'>Name</th><th>Description</th><th width='180px'>Contact Email ID</th></tr>");
//ResultSet rs=smt.executeQuery();

ResultSet rs=ps.executeQuery();
while(rs.next())
{

out.print("<tr>"
        + "<td>"+rs.getInt(1)+"</td>"
        + "<td>"+rs.getString(2)+"</td>"
        + "<td>"+rs.getString(3)+"</td>"
        + "<td>"+rs.getString(4)+"</td>"
        + "<td>"+rs.getString(5)+"</td>"
        + "</tr>");

}
out.print("</table>");
con.close();
}catch(Exception e)
{
    e.printStackTrace();
}
%>
		</div>  
                
                
</div>
  <jsp:include page="footer.html"></jsp:include>  
<!-- end #footer --></body>
</html>



















