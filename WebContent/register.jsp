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
		                    fname: "required",
		                    lname: "required",
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
		                    dob:{required:true,
		                    },
		                    country:{required:true,

			                    },
		                    state:{required:true,

		                    },
		                    city:{required:true,

		                    },
		                },
		                messages: {
		                    fname: "Please enter your firstname",
		                    lname: "Please enter your lastname",
		                    pass: {
		                        required: "Please provide a password",
		                        minlength: "Your password must be at least 5 characters long"
		                    },
		                    email: "Please enter a valid email address",
		                    pass: {
		                        required: "Please provide a confirm password",
		                        
		                    },
		                    mobile:{
			                    required:"Please Enter Your Mobile No",
			                    minlength:"Please Enter 10 Digit Mobile No"
		                    },
		                    dob:{
								required:"Please Select Your Birth Date"
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
	</nav><div class="banner_1">
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
        <h2>Register Form</h2>
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
       
        <form action="reg" method="post" id="register-form">
            
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="firstName">First Name</label>
	        	<div class="col-md-9">
	        		<input type="text" name="fname" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
       
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="lastName">Last Name</label>
	        	<div class="col-md-9">
	        		<input type="text" name="lname" class="form-control input-sm">
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
        		<label class="col-md-3 control-lable" for="password">Confirm Password</label>
	        	<div class="col-md-9">
	        		<input type="password" name="cpass" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
       <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="mobile">Mobile</label>
	        	<div class="col-md-9">
	        		<input type="text" name="mobile" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="sex">Gender</label>
                <div class="col-md-9" class="form-control input-sm">
                    <div class="radios">
				        <label for="radio-01" class="label_radio">
				            <input type="radio" checked="" name="gen" value="male"> Male
				        </label>
				        <label for="radio-02" class="label_radio">
				            <input type="radio" name="gen" value="female"> Female
				        </label>
	                </div>
                </div>
            </div>
        </div>

        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="dob">Date Of Birth</label>
	        	<div class="col-md-9">
	        		<input type="text" name="dob" id="demo1" class="form-control input-sm">
	        		Select Here:<img src="images2/cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/>
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
        		</div>
        		<script language="javascript">
					populateCountries("country", "state");
 				</script>
 			</div>
 		</div>
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">City</label>
	        	<div class="col-md-9">
	        		<input type="text" name="city" class="form-control input-sm">
	        	</div>
        	</div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="address">Address</label>
	        	<div class="col-md-9">
	        		<textarea  name="address" class="form-control input-sm"></textarea>
	        	</div>
        	</div>
        </div>
        	<div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">Experience</label>
        	<div class="col-md-9">
        	<select name="exp" class="form-control input-sm">
        	<option>Select Experience In Years</option>
        	<option value="0">0</option>
        	<option value="1">1</option>
        	<option value="2">2</option>
        	<option value="3">3</option>
        	<option value="4">4</option>
        	<option value="5">5</option>
        	<option value="6">6</option>
        	<option value="7">7</option>
        	<option value="8">8</option>
        	<option value="9">9</option>
        	<option value="10">10</option>
        	<option value="11">11</option>
        	<option value="12">12</option>
        	<option value="13">13</option>
        	<option value="14">14</option>
        	<option value="15">15</option>
        	</select>
        	</div>
        </div>
       </div>
        	
        	
        	<div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">Education</label>
        	<div class="col-md-9">
        	<select name="edu" class="form-control input-sm">
        	<option>Select Education</option>
        	<option value="10th">10th</option>
        	<option value="12th">12th</option>
        	<option>---Diploma---</option>
        	<option value="DCE">DCE</option>
        	<option value="DIT">DIT</option>
        	
        	<option>---Graduation---</option>
        	<option value="BE">BE</option>
        	<option value="BCA">BCA</option>
        	<option value="BTECH">BTech</option>
        	
        	<option>---Post Graduation---</option>
        	<option value="ME">ME</option>
        	<option value="MCA">MCA</option>
        	<option value="MTECH">Mtech</option>
        	</select>
        	</div>
        </div>
       </div>
        	
        
        	<div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">Skill</label>
        	<div class="col-md-9">
        	<select name="skill" class="form-control input-sm">
        	<option value="">Select Skill</option>
        	<option value="Data Entry">Data Entry</option>
        	<option value="Java">Java</option>
        	<option value="PHP">PHP</option>
        	<option value=".Net">.Net</option>
        	<option value="Android">Android</option>
        	<option value="iPhone">iPhone</option>
        	<option value="SEO">SEO</option>
        	<option value="WD">Web Designing</option>
        	<option value="ROR">Ruby On Rails</option>
          	</select>
          	</div>
          </div>
         </div>
        
        
           <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" name="submit" value="Register" class="btn btn-primary btn-sm">
            </div>
        </div>
		</form>
		</div>
		</div>
		</div>
		

<div class="footer_bottom"></div>
</body>

</html>	