<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.* " %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    
    <meta charset="utf-8">
    <title>Travel Midwest</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">

   <!-- The styles -->
    <link rel='shortcut icon' href='charisma-master/img/favicon_tm.ico' type='image/x-icon'/ >
    <link id="bs-css" href="charisma-master/css/bootstrap-darkly.min.css" rel="stylesheet">
	<script type="text/javascript" src="charisma-master/css/jquery-1.2.6.min.js"></script>
    <link href="charisma-master/css/charisma-app.css" rel="stylesheet">
    <link href='charisma-master/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='charisma-master/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='charisma-master/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='charisma-master/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='charisma-master/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='charisma-master/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='charisma-master/css/jquery.noty.css' rel='stylesheet'>
    <link href='charisma-master/css/noty_theme_default.css' rel='stylesheet'>
    <link href='charisma-master/css/styles.css' rel='stylesheet'>
    <link href='charisma-master/css/elfinder.min.css' rel='stylesheet'>
    <link href='charisma-master/css/elfinder.theme.css' rel='stylesheet'>
    <link href='charisma-master/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='charisma-master/css/uploadify.css' rel='stylesheet'>
    <link href='charisma-master/css/animate.min.css' rel='stylesheet'>
<script src="charisma-master/css/jquery-1.2.6.min.js"></script>
    <!-- jQuery -->
   
   <script type="text/javascript">

  $(document).ready(function() {
//alert("into");
   var docHeight = $(window).height();
   var footerHeight = $('#footer').height();
   var footerTop = $('#footer').position().top + footerHeight;

   if (footerTop < docHeight) {
    $('#footer').css('margin-top', 10+ (docHeight - footerTop) + 'px');
   }
  
  });
  $(document).ready(function() {
   $('#expy').change(function() {
 	 // alert("into");

		var expy=$('#expy').val();
		
		
//alert(expy);
		
		
		  $.post("./traffic_servlet.jsp" ,{'expy': expy},  
				 
            function (data)  
            {  
//alert(data);
				 if(data.length >0) {
			$("#div_status").html(data);
			$("#loading").hide();
			//document.getElementById("div_config").style.height="1850px";
				 }

            });  

		
		
		
	    //alert(camp);
				///$("#table1").show('slow');
	
   });

  	
  });	
  


 </script>
    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
      <style>
    .relative1{
      right: 250px;
      position: absolute;
      }
      .side{ float: left;}
      .new{float :right;}</style>
   
</head>

<body onload="initialize()">



    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation" style="height:60px;">

        <div class="navbar-inner" >
           
            <a class="navbar-brand" href="Home.jsp"> <img alt="Travel Midwest Logo" src="charisma-master/img/travelmidwest_logo.jpg" class="hidden-xs"/>
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
 <li class="active"><a href="#">Report&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  <ul>
    <li><a href="Traffic_Report.jsp">Travel Time Report</a></li>
   <li><a href="Congestion_Report.jsp">Congestion Report</a></li>
   <li><a href="Incident_Report.jsp">Incident Report</a></li>
   
  </ul>
 </li>
  <li><a href="Layer.jsp">View Map Layers</a></li>
 <li><a href="#">Projects&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  <ul>
    <li><a target="_blank" href="http://www.idot.illinois.gov/projects/i-74-and-i-155-improvement-project">IL I74/I-155 Project</a></li>
   <li><a target="_blank" href="http://www.circleinterchange.org/">Jane Addams Interchance</a></li>
   <li><a target="_blank" href="http://www.illinoistollway.com/construction-and-planning/projects-by-roadway/jane-addams-memorial-tollway-i-90">IL Jane Addams(I-90) Reconstruction</a></li>
  </ul>
 </li>
 <li><a href="data_analysis.jsp">Data Analysis</a></li>
  <li><a href="ReportIncident.jsp">&nbsp; Report an incident &nbsp;</a></li>
</ul>
</div>
    </div>
    <!-- topbar ends -->
    <!-- content starts -->
    <div class="ch-container">
     <!-- breadcrumb starts -->
    
      <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -30px;" class="box col-md-12">
   
       
           
           
           <ul style=" background-color:#069C6F;" class="breadcrumb" >
<li>
<a href="Home.jsp">Home</a>
</li>
<li>
<a href="Traffic_Illinois.jsp">Traffic Report-Chicago</a>
</li>
</ul>
</div>
    <!-- breadcrumb ends -->
 

 <div class="ch-container">
 <div class="row" >
    <div class="box col-md-8" >
        <div class="box-inner" style="border: 0px; width: 1300px;">
<div align="center">
<label style="color: white; font-weight: 900;" >Select your desired expressway:   
   </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
   
<select name="expy"  id="expy" data-rel="chosen" style="border:1px solid #000000;width:390px;border-radius:4px;">

<option>I-43</option>
<option>I-355</option>
<option>Dan Ryan Expy</option>
<option>Lake Shore Drive</option>
<option>I-80</option>
<option>I-88</option>
<option>I-90</option>
<option>I-94</option>
<option>I-290</option>
<option>I-294</option>
<option>I-355</option>
<option>US-12</option>
<option>Kennedy Expy</option>
</select>

</div>
</div>
</div>
</div>
<div id="div_status" style="margin-top: -20px;"></div>
<div id="loading" style="width: 100%">
<%		try {
			//out.println("Traffic meets");
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "root";
			String expressway = null;
			String congestionlevel=null;
			String from=null;
			String to=null;
			double speed;
			int traveltime;
			
			String myQuery = "SELECT * FROM \"travelTime\" where expressway='I-43'";
			Connection myConnection=null;
			PreparedStatement myPreparedStatement=null;
			ResultSet myResultSet = null;
			Class.forName(driver);
			myConnection = DriverManager.getConnection(url,username,password);
			myPreparedStatement = myConnection.prepareStatement(myQuery);
			//System.out.println("**********");
			myResultSet = myPreparedStatement.executeQuery();
			//System.out.println("working");%>
				<div id="traffic_init" class="row" >
				<div class="box col-md-12">
				<div class="box-inner">
				<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
				<h2>Travel Time Report</h2>
				</div>
				<div class="box-content" style="background-color:white">
				<table class="table table-bordered table-striped table-condensed" style="background-color:white">
				<thead style="background-color:#234269;color:white">
				<tr>
				<th>Expressway/Highway</th>
				<th>From</th>
				<th>To</th>
				<th>Speed &nbsp; &nbsp;(mph)</th>
				<th>TravelTime &nbsp; &nbsp;(mins)</th>
				<th>Congestion</th>
				</tr>
				</thead>
				<tbody >
				
				<%
				if(!myResultSet.next())
				{%>
					<tr style="border:0px; ">
					<td> No suitable results found
					</td>
					</tr>
					
					<%
				}
				//List arr1=new ArrayList();
			while(myResultSet.next()){
			expressway = myResultSet.getString("expressway");
			congestionlevel = myResultSet.getString("congestionLevel");
			from = myResultSet.getString("from");
			to = myResultSet.getString("to");
			speed=myResultSet.getDouble("speed");
			traveltime=myResultSet.getInt("traveltime");
			traveltime=traveltime/60;
			//String splitTo[]=to.split(" ");
			//System.out.println(splitTo[0]);
			
			//if(arr[0].toLowerCase().contains(splitTo[0].toLowerCase())){
			//out.print(congestionlevel);
			//arr1.add(splitTo[0]);
			//System.out.println(splitTo[0]);
			%>

				<tr  style="background-color:white">
				<td><%=expressway %></td>
				<td class="center"><%=from %></td>
				<td class="center"><%=to %></td>
				<td class="center"><%=speed %></td>
				<td class="center"><%=traveltime %></td>
				<td>
				<% if(congestionlevel.equalsIgnoreCase("UNKNOWN_CONGESTION_LEVEL")){ %>
				<span class="label-default label">Unknown</span>
				<%}
				else if(congestionlevel.equalsIgnoreCase("HIGH_CONGESTION")){ %>
				<span class="label-default label label-danger">High Congestion</span>
				<%}
				else if(congestionlevel.equalsIgnoreCase("NON_CONGESTION")){ %>
				<span class="label-success label label-default">Non-congestion</span>
				<%}
				else if(congestionlevel.equalsIgnoreCase("LIGHT_CONGESTION")){ %>
				<span class="label-success label label-default" style="background-color: #E3AC07">Light Congestion</span>
				<%}
				else if(congestionlevel.equalsIgnoreCase("UNKNOWN_CONGESTION_LEVEL")){ %>
				<span class="label-warning label label-default">Medium Congestion</span>
				<%} 
				else {%>
				<span class="label-default label label-danger">High Congestion</span>
				<%} %>
				</td>
				</tr>
				
			<%
			}
				
				
			%>
			</tbody>
			</table>
			<p class="center row-md-5">

&nbsp;<a href="Home.jsp" class="btn btn-primary" ><i class="glyphicon glyphicon-chevron-left glyphicon-white"></i> Back </a>


</p>
			</div>
			</div>
			</div>
			</div> 
			<%}
			catch(ClassNotFoundException e){e.printStackTrace();}
			catch (SQLException ex)
			{
			System.out.print("SQLException: "+ex.getMessage());
			System.out.print("SQLState: " + ex.getSQLState());
			System.out.print("VendorError: " + ex.getErrorCode());
			}
	
	%>

</div>

</div>    

 </div> 
      
 <footer id="footer" style="background-color: #001f5c; width: 1366px; position:relative;
	bottom:0;
	left:0;" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
		| <a href='glossary.jsp'>Glossary</a> | <a href="contactus.jsp">Contact Us</a>
	
		</table>
	<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http:travelmidwest.com" target="_blank" style="text-decoration: underline;">Travel Midwest
</a> </font></p>	
		</footer>   
    
    <!-- content ends --> 



<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>
