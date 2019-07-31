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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/table_style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
</head>
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
	</nav><!-- <div class="banner">
	<div class="container">
		<div id="search_wrapper">
		
		 <div id="city_1" class="clearfix">
			 <ul class="orange">
			 <li></li>
			 </ul>
			 <ul class="orange">
			 <li></li>
			 </ul>
			 <ul class="blue">
			 <li></li>
			 </ul>
			 <ul class="blue">
			 <li></li>
			 </ul>
	     </div>
       </div>
   </div> 
</div> -->	
<div class="banner_1">
	<div class="container">
		
		
   </div> 
</div>	
<div class="container">
  <div class="grid_1">
  <div class="form-container">
        
        <br><br>
<center>
			<hr>
	     		<h1>Companies Working With Us</h1>
	     	<hr>  			
	<table border="2">
		<tr>
			
			<th>Company Name</th>
			<th>Country</th>
			<th>State</th>
			<th>City</th>
			
		</tr>
		<%
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from company_master";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
		%>
				<tr>
					<td><%=rs.getString("c_name") %></td>
					<td><%=rs.getString("c_country") %></td>
					<td><%=rs.getString("c_state") %></td>
					<td><%=rs.getString("c_city") %></td>
				</tr>
		<%
				
			}
		%>
	</table>
	</center>
        
		</div>
	 <h3>Featured Employers</h3>
	   <ul id="flexiselDemo3">
	      <li><img src="images/c1.gif"  class="img-responsive" /></li>
		  <li><img src="images/c2.gif"  class="img-responsive" /></li>
		  <li><img src="images/c3.gif"  class="img-responsive" /></li>
		  <li><img src="images/c4.gif"  class="img-responsive" /></li>
		  <li><img src="images/c5.gif"  class="img-responsive" /></li>
		  <li><img src="images/c6.gif"  class="img-responsive" /></li>	
	    </ul>
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems: 6,
				animationSpeed: 1000,
				autoPlay:false,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	   </script>
	   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 </div>
	   	  
	 </div>
	   <div class="col-md-8">
	      <div class="col_1">
   	        <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a1.jpg" class="img-responsive" alt=""/></a>
			</div> -->
			<!-- <div class="col-sm-8 row_1">
				<h4><a href="single.jsp">It is a long established fact</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div> -->
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a2.jpg" class="img-responsive" alt=""/></a>
			</div> -->
			<!-- <div class="col-sm-8 row_1">
				<h4><a href="single.jsp">Lorem Ipsum is simply dummy</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div>
			</div> -->
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	        <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a3.jpg" class="img-responsive" alt=""/></a>
			</div> -->
			<!-- <div class="col-sm-8 row_1">
				<h4><a href="single.jsp">There are many variations</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>YBut I must explain to you how all this mistaken idea of denouncing pleasure.</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div>
			</div> -->
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a4.jpg" class="img-responsive" alt=""/></a>
			</div> -->
		<!-- 	<div class="col-sm-8 row_1">
				<h4><a href="single.jsp">Contrary to popular belief</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti.</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div>
			</div> -->
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a5.jpg" class="img-responsive" alt=""/></a>
			</div> -->
			<!-- <div class="col-sm-8 row_1">
				<h4><a href="single.jsp">At vero eos et accusamus</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>On the other hand, we denounce with righteous indignation and dislike men.</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div>
			</div> -->
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_2">
   	         <!-- <div class="col-sm-4 row_2">
				<a href="single.jsp"><img src="images/a6.jpg" class="img-responsive" alt=""/></a>
			</div> -->
		<!-- 	<div class="col-sm-8 row_1">
				<h4><a href="single.jsp">On the other hand</a></h4>
				<h6>SIt is a long <span class="dot">·</span> Jul. 31, 2015</h6>
				<p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
			   </div>
			  </div> -->
			<div class="clearfix"> </div>
		   </div>
	   </div>
	   <div class="clearfix"> </div>
	 </div>
</div>

</div>
</body>
</html>	