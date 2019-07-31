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
<%!String uname;
	String id;
	int cid;%>
<%

try
{
	if(session.getAttribute("cname").toString()!=null)
	{
		uname=session.getAttribute("cname").toString();
		id=session.getAttribute("cid").toString();
		cid=Integer.parseInt(id);
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
	        <a class="navbar-brand" href="index.jsp"><img src="../images/logo.png" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		        <li class="dropdown">
		            <a href="logout.jsp">Logout <%=uname %></a>
		        </li>    
		        <li><a href="view_job.jsp">View Job Detail</a></li>
		        <li></li>
		        <li><a href="view_app_candidate.jsp">View Applied Candidate</a></li>
		        <li></li>
		         <li><a href="company_home.jsp">Add Job Detail</a></li>
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
	        
                    <form action="../job_detail" method="post" id="login-form">
                        <div class="section-title">
                            <h3>Add Job Detail</h3>
                            
                        </div>
                    <div class="row">
            			<div class="form-group col-md-12">
        					
	        					<div class="col-md-9">
	        						<input type="hidden" name="cid" class="form-control input-sm" value=<%=cid %>>
	        					</div>
        				</div>
        			</div>
                    <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">Skill</label>
	        					<div class="col-md-9">
	        						<input type="text" name="skill" class="form-control input-sm">
	        					</div>
        				</div>
        			</div>
                       
                     <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">No Of Vacancy</label>
	        					<div class="col-md-9">
	        						<input type="text" name="vacancy" class="form-control input-sm">
	        					</div>
        				</div>
        			</div>
        			 <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">Location</label>
	        					<div class="col-md-9">
	        						<input type="text" name="location" class="form-control input-sm">
	        					</div>
        				</div>
        			</div>
        			 <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">Experience</label>
	        					<div class="col-md-9">
	        						<input type="text" name="exp" class="form-control input-sm">
	        					</div>
        				</div>
        			</div>
        			 <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">Salary</label>
	        					<div class="col-md-9">
	        						<input type="text" name="salary" class="form-control input-sm">
	        					</div>
        				</div>
        			</div>
        			 <div class="row">
            			<div class="form-group col-md-12">
        					<label class="col-md-3 control-lable" for="email">Job Description</label>
	        					<div class="col-md-9">
	        						<textarea rows="5" cols="5" name="desc" class="form-control input-sm"></textarea>
	        					</div>
        				</div>
        			</div>
					<div class="login-btn">
					   <input type="submit" value="Submit Job" name="submit">
					</div>
					<div class="login-bottom">
					 <p></p>
					 <div class="social-icons">
						<div class="button">

							
							<div class="clearfix"> </div>
						</div>
						
					 </div>
		           </div>
                     </form>
                     
                </div>
         </div>
   </div>
  <div class="clearfix"> </div>
 </div>
</body>
</html>	