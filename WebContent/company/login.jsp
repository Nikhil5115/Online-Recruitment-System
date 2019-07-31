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
<link href="../css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="../css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
</head>
<script type="text/javascript">

(function($,W,D)
		{
		    var JQUERY4U = {};

		    JQUERY4U.UTIL =
		    {
		        setupFormValidation: function()
		        {
		            //form validation rules
		            $("#login-form").validate({
		                rules: {
		                    uname: "required",
		                    pass: "required",

		                },
		                messages: {
		                    uname: "Please enter Username",
		                    pass: "Please enter password",
		                    
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
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        
	        <a class="navbar-brand" href="../index.jsp"><img src="../images/logo.png" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		        
		        <li class="dropdown">
		        	
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">           
			            </div>
		            </ul>
		        </li>
		        
		        <li><a href="../name.jsp">Company List</a></li>
		        <li><a href="../about.jsp">About Us</a></li>
		        <li><a href="../contact.jsp">Contact Us</a></li>
				<li><a href="company/login.jsp">Company Zone</a></li>
				<li><a href="../login.jsp">Login</a></li>
		        
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
	        
                    <form action="../c_login" method="post" id="login-form">
                        <div class="section-title">
                            <h3>LogIn to your Account</h3>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-user"></i></span>
                                <input type="text" required class="form-control" placeholder="Username" name="uname">
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="fa fa-key"></i></span>
                                <input type="password" required class="form-control " placeholder="Password" name="pass">
                            </div>
                        </div>
                        <div class="forgot">
						 <div class="login-check">
				 			
				         </div>
				 		  
					     <div class="clearfix"> </div>
			        </div>
					<div class="login-btn">
					   <input type="submit" value="Log in" name="submit">
					</div>
					<div class="login-bottom">
					 <p></p>
					 <div class="social-icons">
						<div class="button">

							<div class="clearfix"> </div></a>
							
							<div class="clearfix"> </div></a>
							
							<div class="clearfix"> </div></a>
							<div class="clearfix"> </div>
						</div>
						<h4>Don,t have an Account? <a href="../Company_reg.jsp"> Register Now!</a></h4>
					 </div>
		           </div>
                     </form>
                     
                </div>
         </div>
   </div>
  <div class="clearfix"> </div>
 </div>
</div>
</div>

<div class="clearfix"> </div>
	
  </div>
</div>
</body>
</html>	