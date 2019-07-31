<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnection"%>
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
<link href="../css/table_style.css" rel='stylesheet' type='text/css' />
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
<br><br>
<center>
			<hr>
	     		<h1>Candiate List</h1>
	     	<hr>  			
	<table border=2 cellspacing="20" cellpadding="10">
		<tr>
			<th>Candidate Name</th>
			<th>Candidate Email</th>
			<th>Candidate Mobile No</th>
			<th>Skill</th>
			<th>Apptitude Test Result</th>
			<th>Download Resume</th>			
			
		</tr>
		<%
		try
		{
			DBConnection db=new DBConnection();
			Connection conn=db.GetConnection();
			
			String sql="select * from apply_job";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				int app_id=rs.getInt("app_id");
				DBConnection db1=new DBConnection();
				Connection conn1=db1.GetConnection();
				String sql1="select * from user_master where id=?";
				PreparedStatement pst1=conn1.prepareStatement(sql1);
				pst1.setInt(1, app_id);
				ResultSet rs1=pst1.executeQuery();
				while(rs1.next())
				{
		%>
				<tr>
					<td><%=rs1.getString("fname") %></td>
					<td><%=rs1.getString("email") %></td>
					<td><%=rs1.getString("mobile") %></td>
		<%
				}
				conn1.close();
				int job_id=rs.getInt("job_id");
				DBConnection db2=new DBConnection();
				Connection conn2=db2.GetConnection();
				String sql2="select c_skill from job_master where id=?";
				PreparedStatement pst2=conn2.prepareStatement(sql2);
				pst2.setInt(1, job_id);
				ResultSet rs2=pst2.executeQuery();
				while(rs2.next())
				{
		%>
					<td><%=rs2.getString("c_skill")%></td>
		<%
				} 
				conn2.close();
				DBConnection db3=new DBConnection();
				Connection conn3=db3.GetConnection();
				String sql3="select result from result where user_id=?";
				PreparedStatement pst3=conn3.prepareStatement(sql3);
				pst3.setInt(1, app_id);
				ResultSet rs3=pst3.executeQuery();
				while(rs3.next())
				{
		%>
					<td><%=rs3.getString("result")%></td>
		<%
				}
				conn3.close();
		%>
				<td>Download Resume</td>
				</tr>
		<%
				
			}
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
	</table>
	</center>
</body>
</html>	