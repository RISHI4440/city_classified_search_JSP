<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Magnetic 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120825

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Log In</title>
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

	</div>
	
	<div id="banner"><img id="coverimg" src="images/img03.jpg" /></div>
	<div id="welcome">
	<%@ include file="coockie.jsp" %>
		<h3 class="title" ><a href="#">City Classified and Search Project</a></h3>
		<div class="entry">
			
                    
	
	</div>
	
	<div id="three-columns">
		<div id="column1">
			
                    
                    
		</div>
		<div id="column2">

      <%
String slogin=(String)session.getAttribute("islogin");
if(islogin!=null){
Cookie ck[]=request.getCookies();
out.print("<center>you are already  logged as:"+ck[0].getValue());
out.print("</center>");
}else{%>
<%@ include file="login.html"  %>
<%} %>	
	</div>
		<div id="column3">
			
                    
                    
		</div>
	</div>
	
	<div id="page">
		<div id="content">
			
			
				<div id="content">
	
					
					<marquee>WORLDS IN YOUR HAND:CITY SEARCH GET LOGIN NOW</marquee>
				
			</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			
                    
                    
                    
		</div>
	</div>
	<!-- end #page --> 
 
 </div>
</div>
 <jsp:include page="footer.html"></jsp:include>  
<!-- end #footer -->
</body>
</html>










