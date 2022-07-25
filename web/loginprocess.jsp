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

<%@ include file="header1.html"  %>

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
		<h3 class="title" ><a href="#">City Classified and Search Project</a></h3>
		<div class="entry">
			
                   
	
	</div>
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.html"></jsp:include></p>
		</div>
		<div id="column2">



<%@ page import="java.sql.*" %>
<%
String useremail=request.getParameter("useremail");
String userpass=request.getParameter("userpass");
boolean status=false;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");    

String query="select * from city1_user where email=? and password=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,useremail);
ps.setString(2,userpass);

ResultSet rs=ps.executeQuery();
status=rs.next();


if(status)
{
//int id=rs.getInt(1);
//session.setAttribute("userid",Integer.valueOf(id));
    ////////////New one//////////////////////////////////////////////////////////
String email=rs.getString(4);
session.setAttribute("useremail",String.valueOf(email));

String name=rs.getString(2);
session.setAttribute("user",String.valueOf(name));
///////////////////////////////////////////////////////////////////////////////////
session.setAttribute("islogin","true");
%>
<h3>
<jsp:include page="loginsuccess.jsp"></jsp:include></h3>
<h5>Welcome to City Search. Now you may post classified.</h5>
<%
Cookie ck=new Cookie("uname",useremail);
response.addCookie(ck);


}
else{
out.print("Sorry username or  password error!");
%>
<jsp:include page="login.html"></jsp:include>
<%
}
}catch(Exception e){e.printStackTrace();}
%>
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
	
<div id="page">
		<div id="content">
			
			
				<div id="content">
	
					
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH</marquee>
				
			</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2><marquee>Free advertisement..</marquee></h2>
					
                                        
				</li>
			</ul>
		</div>
	</div>
        </div>
</div>
 

<!-- end #footer -->
<jsp:include page="footer.html"></jsp:include>
</body>
</html>
























