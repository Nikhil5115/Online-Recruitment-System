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
       <%@ page language="java" %>
<%@ page import ="java.sql.*" %>
<%

	Class.forName("com.mysql.jdbc.Driver");
	String sTable = "exam";
	String sSql = "SELECT * FROM " + sTable + "";
	/* String sDBQ = "exam.mdb"; */
	
	String database = "jdbc:mysql://localhost:3306/online_recruitment";
	Connection cn = null;
	Statement st = null;
	ResultSet rs = null;
	try {
	cn = DriverManager.getConnection(database ,"root","");
	st = cn.createStatement();
	rs = st.executeQuery(sSql);
	ResultSetMetaData rsmd = rs.getMetaData();
	String s1,s2,s3,s4;
	int i=1;
	while(rs.next())
	{
	
		out.println("<form name='exam' action='report.jsp' method='post'><b>"+i+" . " + rs.getString("question") + "</b><br><br>");
		s1 = rs.getString("opt1");
		s2 = rs.getString("opt2");
		s3 = rs.getString("opt3");
		s4 = rs.getString("opt4");
		out.println("<input type=radio name=opt"+i+" value="+s1+" CHECKED>"+ s1 +" <br><br>");
		out.println("<input type=radio name=opt"+i+" value="+s2+">" + s2 +"<br><br>");
		out.println("<input type=radio name=opt"+i+" value="+s3+">" + s3 +"<br><br>");
		out.println("<input type=radio name=opt"+i+" value="+s4+">" + s4 +"<br><br>");
		i++;
	}
	out.println("<input name ='submit' value='Submit' type='submit'/>");
	/*int n = rsmd.getColumnCount();
	out.println( "<table border=1 cellspacing=3><tr>" );
	for( int i=1; i<=n; i++ ) // Achtung: erste Spalte mit 1 statt 0
	out.println( "<th>" + rsmd.getColumnName( i ) + "</th>" );
	while( rs.next() )
	{
	out.println( "</tr><tr>" );
	for( int i=1; i<=n; i++ ) // Achtung: erste Spalte mit 1 statt 0
	out.println( "<td nowrap>" + rs.getString( i ) + "</td>" );
	}
	out.println( "</tr></table>" );*/
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	finally 
	{
		try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
		try { if( null != st ) st.close(); } catch( Exception ex ) {}
		try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
	}
	
%>
        
       
        
		</div>
	</div>
</div>
		

<div class="footer_bottom"></div>
</body>

</html>	