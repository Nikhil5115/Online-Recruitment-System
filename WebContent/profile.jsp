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
        
        <br><br>
		<center>
			<hr>
	     		<h1>Your Profile</h1>
	     	<hr>
	     	<%
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from user_master where id=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				
			
		%>
	     	<form action="updateProfile" method="post" id="register-form" enctype="multipart/form-data">
            
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="firstName">First Name</label>
	        	<div class="col-md-9">
	        		<input type="text" name="fname" class="form-control input-sm" value="<%=rs.getString("fname") %>">
	        	</div>
        	</div>
        </div>
       
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="lastName">Last Name</label>
	        	<div class="col-md-9">
	        		<input type="text" name="lname" class="form-control input-sm" value="<%=rs.getString("lname") %>">
	        	</div>
        	</div>
        </div>
        
        
       <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="email">Email</label>
	        	<div class="col-md-9">
	        		<input type="text" name="email" class="form-control input-sm" value="<%=rs.getString("email") %>">
	        	</div>
        	</div>
        </div>
        
       <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">Mobile</label>
	        	<div class="col-md-9">
	        		<input type="text" name="mobile" class="form-control input-sm" value="<%=rs.getString("mobile") %>">
	        	</div>
        	</div>
        </div>
        

        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="dob">Date Of Birth</label>
	        	<div class="col-md-9">
	        		<input type="text" name="dob" id="demo1" class="form-control input-sm" value="<%=rs.getString("mobile") %>">
	        		Select Here:<img src="images2/cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/>
	        	</div>
        	</div>
        </div> 
        
        
     
     	
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="password">City</label>
	        	<div class="col-md-9">
	        		<input type="text" name="city" class="form-control input-sm" value="<%=rs.getString("city") %>">
	        	</div>
        	</div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="address">Address</label>
	        	<div class="col-md-9">
	        		<textarea  name="address" class="form-control input-sm"><%=rs.getString("address") %></textarea>
	        	</div>
        	</div>
        </div>
        	<div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="exp">Experience</label>
        	<div class="col-md-9">
        	<select name="exp" class="form-control input-sm">
        	<option value="">Select Experience In Years</option>
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
        		<label class="col-md-3 control-lable" for="edu">Education</label>
        	<div class="col-md-9">
        	<select name="edu" class="form-control input-sm">
        	
        	<option value="">Select Education</option>
        	<option value="10th">10th</option>
        	<option value="12th">12th</option>
        	
        	<option>---Diploma---</option>
        	<option value="DCE">DCE</option>
        	<option value="DIT">DIT</option>
        	
        	<option>---Graduation---</option>
        	<option value="BE">BE</option>
        	<option value="BCA">BCA</option>
        	<option value="BBA">BBA</option>
        	
        	<option>---Post Graduation---</option>
        	<option value="ME">ME</option>
        	<option value="MCA">MCA</option>
        	<option value="MBA">MBA</option>
        	
        	</select>
        	</div>
        </div>
       </div>
      
        	
        
        	<div class="row">
            <div class="form-group col-md-12">
        		<label class="col-md-3 control-lable" for="skill">Skill</label>
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
                <input type="submit" name="submit" value="Update Profile" class="btn btn-primary btn-sm">
            </div>
        </div>
        
		</form>
	     <%} %>	  			
		</center>
        
		</div>
	</div>
</div>
		

<div class="footer_bottom"></div>
</body>

</html>	