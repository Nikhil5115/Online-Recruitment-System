<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Job Seeker</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<link href="css/validation_css.css" rel='stylesheet' type='text/css' />
<link href="css/table_style.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/datetimepicker_css.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script type= "text/javascript" src = "js/countries.js"></script>

<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<style type="text/css">
.error
{
	color: red;
}
</style>
<script type="text/javascript">

(function($,W,D)
		{
		    var JQUERY4U = {};

		    JQUERY4U.UTIL =
		    {
		        setupFormValidation: function()
		        {
		            //form validation rules
		            $("#register-form").validate({
		                rules: {
			                exp:"required",
			                edu:"required",
			                skill:"required"
			            },
		                messages: {
		                    exp: "Please Select Your Experience",
		                    edu: "Please Select Your Education",
		                    skill:"Please Select Your Skill"
		                    
		                },
		                submitHandler: function(form) {
		                    form.submit();
		                }
		            });
		        }
		    }

		    //when the dom has loaded setup form validation rules
		    $(D).ready(function($) {
		        JQUERY4U.UTIL.setupFormValidation();
		    });

		})(jQuery, window, document);
</script>
</head>
<body>
<%!String uname,skill;
	int id;
%>
<%

try
{
	if(session.getAttribute("uname").toString()!=null)
	{
		uname=session.getAttribute("uname").toString();
		id=Integer.parseInt(session.getAttribute("id").toString());
		skill=session.getAttribute("skill").toString();
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
	
		
%>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		        
		        <li class="dropdown">
		        	
	              <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            
				            </div>
				            <div class="col-sm-4">
					            
				            </div>
				            <div class="col-sm-4">
					            
				            </div>
			            </div>
		            </ul>
		        </li>
		        <li><a href="uploadResume.jsp">Upload Resume</a></li>
		        <li></li>
		        
		        <li><a href="exam.jsp">Apptitude Test</a></li>
		        <li></li>
		        
		        <li><a href="profile.jsp">Profile</a></li>
		        <li></li>
		        
		        <li><a href="logout.jsp">Logout <%=uname %></a></li>
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
		    <p>&nbsp;</p>
           </div>
		</div>
   </div> 
</div>	

<div class="container">
    <div class="single">
	   <div class="form-container">
        <div id="result">
	            <h3>${requestScope["message"]}</h3>
	        </div>
        <br><br>
		<center>
			<hr>
	     		<h1>Upload Your Resume</h1>
	     	<hr>
	     	
	  <form action="Resume?id=<%=id %>" method="post" id="register-form" enctype="multipart/form-data">
            
            
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="address">Upload Resume</label>
	        	<div class="col-md-9">
	        		<input type="file"  name="file" class="form-control input-sm">
	        	</div>
        	</div>
        </div>      
         
        <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" name="submit" value="Upload Resume" class="btn btn-primary btn-sm">
            </div>
        </div>
        
		</form>
	    		
		</center>
        
		</div>
	</div>
</div>
		

<div class="footer_bottom"></div>
</body>

</html>	