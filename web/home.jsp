<%-- 
    Document   : home
    Created on : Mar 3, 2014, 2:37:33 AM
    Author     : BHUSHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Home</title>
<!--
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />    -->


<link href="style.css" rel="stylesheet" type="text/css" media="screen" />



<style type="text/css">

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

      <h2>City Search offers..</h2>
      <ul>
    <li><a href="viewclassified.jsp">Classified </a></li>
  
    <li><a href="viewclassified.jsp">Free Advertisement </a></li>
    <li><a href="details.jsp?city=delhi">Local Information</a></li>
      </ul>	
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
	
	
	<div id="page">
		<div id="content">
                    <div style="font-family: sans-serif;
                                color: #0974C4;
                                font-size:15px; 
                         
                         ">
                                    <h4>    Developed By&nbsp;:-        </h4>
                                    <p>   
                                        <br/>&nbsp;&nbsp;1)&nbsp;&nbsp; SUKANYA SUBHASH DESHMUKH    &nbsp;&nbsp;&nbsp;&nbsp;TYCM      
                                       <br/> &nbsp;&nbsp;2)&nbsp;&nbsp; KISHOR SAYAJI GANGURDE      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TYCM 
                                       <br/> &nbsp;&nbsp;3)&nbsp;&nbsp; SWAPNAL SHIVAJI SONAWANE    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TYCM    
                                        <br/>&nbsp;&nbsp;4)&nbsp;&nbsp; PRIYANKA SUDHAKAR NIKAM    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TYCM 
                                    
				
                                         
                                     </p> 
                    </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			
                    
                    
                    
                    
                    
		</div>
	</div>
                <br/>   <br/>   <br/>
                <!-- end #page  --> 
        </div>
</div>
                
       <jsp:include page="footer.html"></jsp:include>          
<!-- end #footer -->
</body>
</html>
