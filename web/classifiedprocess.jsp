

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
	
        
                                    
        
	<div id="banner"><img id="coverimg" src="images/img03.jpg" /></div>
	<div id="welcome">
	<%@ include file="coockie.jsp" %>
		<h3 class="title"><a href="#">City Classified and Search Project</a></h3>
		<div class="entry">
			
	
	</div>
	<br/><br/><br/>
	<div id="three-columns">
		
            
		<div id="column2">

<%@ page import="java.sql.*" %>

<%
String type=request.getParameter("type");

String name=request.getParameter("name");
String description=request.getParameter("description");
String email=(String)session.getAttribute("useremail");
//int userid=0;
//userid=(Integer)session.getAttribute("userid");



try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");    

String query="insert into city_classified values(default,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,type);
ps.setString(2,name);
ps.setString(3,description);
ps.setString(4,email);

int status=ps.executeUpdate();
if(status>0)
{
out.println("classified successfully posted....");
}
else{
out.println("Sorry some problem occured.");
}
}catch(Exception e){e.printStackTrace();}
%>	</div>
		
	</div>
	<br/><br/><br/>
	<div id="page">
		<div id="content">
				
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
		</div>
		<!-- end #content -->
		<div id="sidebar">
		
		</div>
	</div>
	<!-- end #page --> 
        </div>
</div>
                

 <jsp:include page="footer.html"></jsp:include> 
<!-- end #footer --></body></html>













