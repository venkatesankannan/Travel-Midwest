<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 
<meta charset="utf-8">
<title>Disclaimer</title>
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
 
<link rel="shortcut icon" href="img/favicon_tm.ico">
<style>
.center {
    margin-left: auto;
    margin-right: auto;
    width: 70%;
    font-size: 200%;
}

 .relative1{
      right: 250px;
      position: absolute;
      }
      .side{ float: left;}
      .new{float :right;}
</style>
</head>
<body>
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation" style="height:60px;">

        <div class="navbar-inner" >
           
            <a class="navbar-brand" href="Home.jsp"> <img alt="Travel Midwest Logo" src="img/travelmidwest_logo.jpg" class="hidden-xs"/>
                </a>
          
            <ul class="collapse navbar-collapse nav navbar-nav top-menu">
            
                <li>
                  <label style="margin-left:20px;margin-top:15px;font-family:Arial;color:white;">City</label>
                </li><li>
                 &nbsp; <button class="btn btn-default btn-sm" style="margin-top:15px;"> Chicago</button></li>
            </ul>
            
    
</div>

<!-- navbar starts -->
<div id="nav2">
<ul id="menu-bar">
	<li><a href="Home.jsp">Home</a></li>
 	<li><a href="#">Report&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
	  	<ul>
	   		<li><a href="Traffic_Report.jsp">Travel Time Report</a></li>
	   		<li><a href="Congestion_Report.jsp">Congestion Report</a></li>
	   		<li><a href="Incident_Report.jsp">Incident Report</a></li>
	   		
	  	</ul>
 	</li>
 	<li><a href="#">Projects&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  		<ul>
		    <li><a target="_blank" href="http://www.idot.illinois.gov/projects/i-74-and-i-155-improvement-project">IL I74/I-155 Project</a></li>
   <li><a target="_blank" href="http://www.circleinterchange.org/">Jane Addams Interchance</a></li>
   <li><a target="_blank" href="http://www.illinoistollway.com/construction-and-planning/projects-by-roadway/jane-addams-memorial-tollway-i-90">IL Jane Addams(I-90) Reconstruction</a></li>
  </ul>
 	</li>
 	 <li><a href="ReportIncident.jsp">&nbsp; Report an incident &nbsp;</a></li>
</ul>
</div>
</div>
<!-- topbar ends -->
<div class="ch-container">
 <!-- breadcrumb starts -->
    <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -20px;" class="box col-md-12">
    <ul style=" background-color:#069C6F;" class="breadcrumb" >
		<li>
			<a href="Home.jsp">Home</a>
		</li>
		<li>
		<a href="disclaimer.jsp">Disclaimer</a>
		</li>
	</ul>
	
	
	
    </div>
    </div>
       
    <!-- breadcrumb ends -->
<div class="box-content">
<div class="center">
<h1>Travel Midwest Site Disclaimer
</h1>
</div>
<div class="row " style=" margin-left: 10px; margin-right: 10px;">
<p align="left">The information contained on these pages is dependent on weather and construction factors, as well as the stability of various electronic systems, and thus may not always be accurate or available. The members of the Lake Michigan </p>
<p align="left">Interstate Gateway Alliance are in no way responsible for any decisions or actions taken as a result of providing this website to the public. Use this information at your own risk.</p>

</div>

</div>





<footer style="background-color: #001f5c; position:absolute;
   bottom:0;
   width:100%;
   height:100px;  
" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
		| <a href="contactus.jsp">Contact Us</a>
		</table>
	<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http://travelmidwest.com" target="_blank" style="text-decoration: underline;">Travel Midwest
	</a> </font></p>	
</footer> 

 


		
</div>
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