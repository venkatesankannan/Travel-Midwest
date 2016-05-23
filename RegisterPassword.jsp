<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 
<meta charset="utf-8">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 
 <link href='charisma-master/css/styles.css' rel='stylesheet'>
<link id="bs-css" href="charisma-master/css/bootstrap-darkly.min.css" rel="stylesheet">
<link href="charisma-master/css/charisma-app.css" rel="stylesheet">
<link href='charisma-master/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
<link href='charisma-master/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='charisma-master/bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='charisma-master/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
<link href='charisma-master/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
<link href='charisma-master/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
<link href='charisma-master/css/jquery.noty.css' rel='stylesheet'>
<link href='charisma-master/css/noty_theme_default.css' rel='stylesheet'>
<link href='charisma-master/css/elfinder.min.css' rel='stylesheet'>
<link href='charisma-master/css/elfinder.theme.css' rel='stylesheet'>
<link href='charisma-master/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='charisma-master/css/uploadify.css' rel='stylesheet'>
<link href='charisma-master/css/animate.min.css' rel='stylesheet'>
 
<script src="charisma-master/bower_components/jquery/jquery.min.js"></script>
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
 
<link rel="shortcut icon" href="charisma-master/img/favicon_tm.ico">
</head>
<body>
<div class="rss">
RSS
</div>
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation" style="height:60px;">

        <div class="navbar-inner" >
           
            <a class="navbar-brand" href="Home.jsp"> <img alt="Travel Midwest Logo" src="charisma-master/img/travelmidwest_logo.jpg" class="hidden-xs"/>
                </a>
          
           
 
</div>

<!-- navbar starts -->

</div>
<!-- topbar ends -->
<div class="ch-container">
<!-- breadcrumb starts -->
    <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -30px;" class="box col-md-12">
    <ul style=" background-color:#069C6F;" class="breadcrumb" >
		<li>
			<a href="Home.jsp">Home</a>
		</li>
		<li>
		<a href="Login.jsp">Register</a>
		</li>
	</ul>
    </div>
    </div>
       
    <!-- breadcrumb ends -->
<div class="col-md-12 center login-header">
<h2>Welcome! Register to Travel Midwest</h2>
</div>


<div class="row">
<div class="well col-md-5 center login-box">
<div class="alert alert-info" style="background-color: #FFAC9C">
<p style="color:#CC0B04" ><b> Password Mis-Match! </b></p>
</div>
<form class="form-horizontal" role="form"
				action="/TravelMidwest/RegisterServlet" method="post"
				id="register-form">
<fieldset>
<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-envelope red"></i></span>

<input type="text" class="form-control" placeholder="Enter your Email-id" id="email" name="email">
</div>

<br>

<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>

<input type="text" class="form-control" placeholder="Enter your desired username" id="username"
														name="userName">
</div>
<div class="clearfix"></div><br>
<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>

<input type="password" class="form-control" placeholder="Choose password" id="password"
														name="password">
</div>
<div class="clearfix"></div><br>
<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>

<input type="password" class="form-control" placeholder="Re-enter chosen password" name="confirmPassword" id="password_confirm" >
</div>
<div class="clearfix"></div><br>
<div class="input-prepend">
<label style="color:#ffffff;"class="remember" for="remember"><input type="checkbox" id="remember"> I agree to the condition that my location might be tracked when necessary</label>&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div class="clearfix"></div>
<p class="center col-md-5">
<button type="submit" class="btn btn-primary">Register</button>
</p>
</fieldset>
</form>
</div>
 
</div> </div>
<footer style="background-color: #001f5c;" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
	 | <a href="contactus.jsp">Contact Us</a>
		</table>
	<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http://travelmidwest.com/lmiga/home.jsp"  style="text-decoration: underline;">Travel Midwest
	</a> </font></p>	
</footer>		

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
 
<script src="js/jquery.cookie.js"></script>
 
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
 
<script src='js/jquery.dataTables.min.js'></script>
 
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
 
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
 
<script src="js/jquery.noty.js"></script>
 
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
 
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
 
<script src="js/jquery.raty.min.js"></script>
 
<script src="js/jquery.iphone.toggle.js"></script>
 
<script src="js/jquery.autogrow-textarea.js"></script>
 
<script src="js/jquery.uploadify-3.1.min.js"></script>
 
<script src="js/jquery.history.js"></script>
 
<script src="js/charisma.js"></script>
</body>
</html>
