
<html >
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
		<%@include file="header.jsp" %> 
	
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
	<%@include file="coockie.jsp" %>
		<h3 class="title"><a href="#">City Classified and Search Project</a></h3>
		<div class="entry">
			
	
	</div>
	
	<div id="three-columns">
		<div id="column1">
			
                    
                    
		</div>
		<div id="column2">
<%
String slogin=(String)session.getAttribute("islogin");
if(slogin==null){
request.setAttribute("notlogin_msg","Sorry, Login first for classified");
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
%>
 
<h4>Post classified!</h4>

<form action="classifiedprocess.jsp">
<table>
<tr>
<td>Type</td>
<td>
    <select name="type">
        <option>Buy</option>
        <option>Sell</option>
    </select>
</td>
</tr>
<tr><td>Name</td><td><input type="text" name="name"/></td></tr>
<tr><td>Description</td><td><textarea name="description" rows="10" cols="30"></textarea></td></tr>
<tr><td><input type="submit" value="post feed" align="middle"/></td></tr>
</table>
</form>
<br/><br/><br/><br/>
	</div>
		<div id="column3">
			
                    
                    
		</div>
	</div>
	
	<div id="page">
		<div id="content">
	
					<marquee>Post Your Classified Here</marquee>		</div>
		<!-- end #content -->
		<div id="sidebar">
			
		</div>
	</div>
        </div>
</div>
                
	<!-- end #page --> 
        
 
  <jsp:include page="footer.html"></jsp:include>  
<!-- end #footer --></body></html>

