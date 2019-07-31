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
        
        <%! String job;%>
        <%
        try
        {
        	if(request.getAttribute("msg")!=null)
        	{
        		job=request.getAttribute("msg").toString();
        %>
        	 <%=job %>
        <%
        	}
        
        %>
       
        <%
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        %>
        <br><br>
<center>
			<hr>
	     		<h1>Jobs Matching Your Profile</h1>
	     	<hr>  			
	<table border="2">
		<tr>
			<!-- <th>Job ID</th> -->
			<!-- <th>Company Id</th> -->
			<th>Company Name</th>
			<th>Skill</th>
			<th>No Of Vacancy</th>
			<th>Location</th>
			<th>Experience</th>
			<th>Salary</th>
			<th>Job Description</th>
			
			<th>Apply</th>
		</tr>
		<%
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from job_master where c_skill=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, skill);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
		%>
				<tr>
					<%-- <td><%=rs.getInt("id") %></td> --%>
					<%-- <td><%=rs.getInt("c_id") %></td> --%>
					<td><% 
					DBConnection db1=new DBConnection();
					Connection conn1=db1.GetConnection();
					
					String sql1="select c_name from company_master where c_id=?";
					
					PreparedStatement pst1=conn1.prepareStatement(sql1);
					pst1.setInt(1,rs.getInt("c_id"));
					
					ResultSet rs1=pst1.executeQuery();
					while(rs1.next())
					{
						String cname=rs1.getString("c_name");
					%>
					
					<%=cname %>
					<%} %></td>
					<td><%=rs.getString("c_skill") %></td>
					<td><%=rs.getString("c_vacancy") %></td>
					<td><%=rs.getString("c_location") %></td>
					<td><%=rs.getString("c_exp") %></td>
					<td><%=rs.getString("c_sal") %></td>
					<td><%=rs.getString("c_desc") %></td>
					
					<td>
						<form name="frm" action="applyjob" method="post">
							<input type="hidden" name="job_id" value="<%=rs.getInt("id")%>">
							<input type="hidden" name="c_id" value="<%=rs.getInt("c_id")%>">
							<input type="hidden" name="app_id" value="<%=id%>">
							<%
								if(job!=null)
								{
							%>
							<input type="submit" name="submit" value="Apply" disabled="disabled">
							<% 
								}
								else
								{
							%>
							<input type="submit" name="submit" value="Apply">
							<%	
								}
							%>
							
						</form> 
					</td>
				</tr>
		<%
				
			}
		%>
	</table>
	</center>
        
		</div>
	</div>
</div>
		

<div class="footer_bottom"></div>
</body>

</html>	