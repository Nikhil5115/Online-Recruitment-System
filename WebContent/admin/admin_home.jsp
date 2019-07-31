<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Seeking an Job Portal Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<link href="../css/validation_css.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/datetimepicker_css.js"></script>
<script src="../js/jquery.validate.min.js"></script>

<script type= "text/javascript" src = "js/countries.js"></script>

<!-- Custom Theme files -->
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="../css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<style type="text/css">
.error
{
	color: red;
}
</style>
</head>
<body>
<%!String uname;%>
<%

try
{
	if(session.getAttribute("uname").toString()!=null)
	{
		uname=session.getAttribute("uname").toString();
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
	
		
%>


<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="admin_home.jsp"><img src="../images/logo.png" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		        <li class="dropdown">
		            <a href="logout.jsp">Logout <%=uname %></a>
		        </li>    
		        
		        <li><a href="view_applicant.jsp">View Applicant Detail</a></li>
		        <li></li>
		         <li><a href="view_company.jsp">View Company Detail</a></li>
		        <li></li>
		        <li><a href="view_feedback.jsp">View Feedback Detail</a></li>
		        <li></li>
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		    <h1></h1>
		    <p>
			
			</p>
           </div>
		</div>
   </div> 
</div>	

<div class="container">
    <div class="single">  
	   <div class="col-md-4">
	   	  
	   	 <div class="widget">
	        </div>
         </div>
   </div>
  <div class="clearfix"> </div>
 </div>
</body>
</html>	