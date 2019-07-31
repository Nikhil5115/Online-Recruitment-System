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
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type= "text/javascript" src = "js/countries.js"></script>
<script src="js/jquery.validate.min.js"></script>

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
		            $("#register-form").validate({
		                rules: {
		                	cname: "required",
		                  
		                    email: {
		                        required: true,
		                        email: true
		                    },
		                    pass: {
		                        required: true,
		                        minlength: 5
		                    },
		                    cpass:{required:true,
			                    
			                    },
		                    mobile: {
			                    required:true,
			                    minlength:10
		                    },
		                   
		                    country:{required:true,

			                    },
		                    state:{required:true,

		                    },
		                    city:{required:true,

		                    },
		                },
		                messages: {
		                    cname: "Please enter your Company name",
		                    
		                    pass: {
		                        required: "Please provide a password",
		                        minlength: "Your password must be at least 5 characters long"
		                    },
		                    email: "Please enter a valid email address",
		                    pass: {
		                        required: "Please provide a confirm password",
		                        
		                    },
		                    mobile :{
			                    required:"Please Enter Your Mobile No",
			                    minlength:"Please Enter 10 Digit Mobile No"
		                    },
		                    
			                country:{
									required:"Please Select Country"
				                    },
				            state:{
									required:"Please Select State"
					            },
					        city:{
									required:"Please Select City"
				                    },
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
				            
				            
				            
			            </div>
		            </ul>
		        </li>
		        
		        <li><a href="name.jsp">Company List</a></li>
		        <li><a href="about.jsp">About Us</a></li>
		        <li><a href="contact.jsp">Contact Us</a></li>
				<li><a href="company/login.jsp">Company Zone</a></li>
				<li><a href="login.jsp">Login</a></li>
		        
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
        <h2>Company Register Form</h2>
         <%!String error;%>
         <%
         
         try
         {
         		if(request.getAttribute("error").toString()!=null)
         		{
         			out.print(request.getAttribute("error").toString());
         		}
         		
         }
         catch(Exception e)
         {
        	 e.printStackTrace();
        	 
         }
         %>
        <center>
       
        <form action="com_register" method="post" id="register-form">
       
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="companyName">Company Name</label>
	        	<div class="col-md-9">
	        		<input type="text" name="cname" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        
        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="email">Email</label>
	        	<div class="col-md-9">
	        		<input type="text" name="email" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">Password</label>
	        	<div class="col-md-9">
	        		<input type="password" name="pass" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="cpassword">Confirm Password</label>
	        	<div class="col-md-9">
	        		<input type="password" name="cpass" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="contact">Contact No</label>
	        	<div class="col-md-9">
	        		<input type="text" name="mobile" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
       
        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="country">Country</label>
        		<div class="col-md-9">
        			<select id="country" name ="country" class="form-control input-sm"></select>
        		</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="state">State</label>
        		<div class="col-md-9">
        			<select name ="state" id ="state" class="form-control input-sm"></select>
        			<script language="javascript">
						populateCountries("country", "state");
 					</script>
 				</div>
 			</div>
 		</div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="contact">City</label>
	        	<div class="col-md-9">
	        		<input type="text" name="city" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="address">Address</label>
	        	<div class="col-md-9">
	        		<textarea name="adress" class="form-control input-sm"></textarea>
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" value="Register" name="submit" class="btn btn-primary btn-sm " onclick="function($,W,D)">
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