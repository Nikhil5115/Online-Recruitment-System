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
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="css/ui.jqgrid.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/grid.locale-en.js"></script>
<script type="text/javascript" src="js/jquery.jqGrid.min.js"></script>
<script type="text/javascript">
function loadUserForm(){
	jQuery("#grid").editGridRow( "new" );
}

var toolbarFlag = false;
function searchUser(){
	if(!toolbarFlag){
		jQuery("#grid").jqGrid('filterToolbar');
		toolbarFlag = true;
	}else{
		var sgrid = $("#grid")[0];
		sgrid.clearToolbar();
		sgrid.toggleToolbar();
	}
}
</script>

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
				<li><a href="login_1.jsp">Company Zone</a></li>
				<li><a href="login.jsp">Login</a></li>
		        
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner">
	<div class="container">
		<div id="search_wrapper">
		 <div id="search_form" class="clearfix">
		
		    


	<center><button id="inActiveBtn" onclick="searchUser()">Search Your Job Here</button></center>
	<center><table id="grid"></table></center>
	<div id="pager"></div>
	<div id="mysearch"></div>
	<script type="text/javascript">
	$("#grid").jqGrid({ //set your grid id
		url : "users", //insert data from the data object we created above
		datatype : "json",
		mtype : "GET",
		loadonce: true,
		multiselect: true,
		width : 800, //specify width; optional
		colNames : [ 'Skill','Location','Experience','Salary'], //define column names
		colModel : [  {
			name : 'skill',
			index : 'skill',
			editable : true,
			width : 20
		} , /* {
			 name : 'vacancy',
			index : 'vacancy',
			editable : true,
			width : 40 
		}, */ {
			name : 'location',
			index : 'location',
			editable : true,
			width : 20
		}, {
			name : 'exp',
			index : 'exp',
			editable : true,
			width : 20
		}, 
		{
			name : 'salary',
			index : 'salary',
			editable : true,
			width : 20
		},
		/* {
			name : 'job_desc',
			index : 'job_desc',
			editable:true,
			width : 250
		} */], //define column models
		pager : '#pager', //set your pager div id
		rowNum: 20,
        rowList: [20, 30, 50],
		sortname : 'c_id', //the column according to which data is to be sorted; optional
		viewrecords : true, 
		sortorder : "asc", //sort order; optional
		caption : "COMPANY" //title of grid
	});
</script>
         </div>
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
</div>	
<div class="container">
  <div class="grid_1">
  
  	
	 <h3>Featured Companies</h3>
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
   	        
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_2">
   	         
			<div class="clearfix"> </div>
		   </div>
	   </div>
	   <div class="clearfix"> </div>
	 </div>
</div>

</div>
</body>
</html>	