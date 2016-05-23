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
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

    <!-- jQuery -->
   
   <script type="text/javascript">

  $(document).ready(function() {
//alert("into");
$('#id_button_1').click(function(){
	alert("ghjk");
    $(this).parents('tr').first().remove();
    //$('close').hide();
});
   var docHeight = $(window).height();
   var footerHeight = $('#footer').height();
   var footerTop = $('#footer').position().top + footerHeight;

   if (footerTop < docHeight) {
    $('#footer').css('margin-top', 10+ (docHeight - footerTop) + 'px');
   }
  
   
  

  });

	    //alert(camp);
				///$("#table1").show('slow');


 </script>
 
 <script>
        function enableButton2() {
            document.getElementById("button2").disabled = true;
        }
        function enableButton3() {
            document.getElementById("button1").disabled = true;
        }
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
      <script>
            function changetext() {
                 var elem = document.getElementById("myButton1");
                 var elem2 = document.getElementById("myButton2");
                if (elem.value=="Close")
                    { 
                        elem.value = "Closed!";
                    }
                else
                	{
                	elem.value = "Close";
                	}
            }
            
            function changetext1() {
                var elem2 = document.getElementById("myButton2");
               if (elem2.value=="Accept")
                   { 
                       elem2.value = "Accepted!";
                   }
               else
               {
               	elem2.value = "Accept";
               	}
           }
            </script>
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
            
     
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <img src="rss.png" height="42" width="42"><li>
<li><div id="rssincl-box-container-991831" class="new">
<script type="text/javascript">
(function() {
	  var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
	  s.src = 'http://output81.rssinclude.com/output?type=asyncjs&id=991831&hash=c576c8f90f3b608feb923a6f52ff885a';
	  document.getElementsByTagName('head')[0].appendChild(s);
	})();
</script>
</div><li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="location.href='Login.jsp'" class="btn btn-info btn-sm" style="margin-top:15px;" > Logout</button></li>
</ul>

</div></div>


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
  <li><a href="ReportIncident.jsp">&nbsp; Report an incident &nbsp;</a></li>
 </ul>
</div>
    </div>
    <!-- topbar ends -->
    <!-- content starts -->
    <div class="ch-container">
     <!-- breadcrumb starts -->
    
      <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -30px;" class="box col-md-12">
   
       
           
           
           <ul style=" background-color:#375a7f;" class="breadcrumb" >
<p style="text-align : center; font-weight: bold; font-size: 20px"> Add & Reject Report </p>
</ul>
</div>
    <!-- breadcrumb ends -->
 

 <div class="ch-container">
 <div class="row" >
    <div class="box col-md-8" >
        <div class="box-inner" style="border: 0px; width: 1300px;">
			
		</div>
	</div>
</div>
<div id="div_status" style="margin-top: -20px;"></div>
<div id="loading" style="width: 100%;">
<%   
try {
			//out.println("Incident meets");
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "root";
			String address = null;
			String hr=null;
			String min=null;
			String time=null;
			String con=null;
			//String congestionlevel=null;
			//String from=null;
			String description=null;
			//double speed;
			//int traveltime;
			String myQuery = "SELECT * FROM \"Report\" ";
			Connection myConnection=null;
			PreparedStatement myPreparedStatement=null;
			ResultSet myResultSet = null;
			Class.forName(driver);
			myConnection = DriverManager.getConnection(url,username,password);
			myPreparedStatement = myConnection.prepareStatement(myQuery);
			System.out.println("********");
			myResultSet = myPreparedStatement.executeQuery();
			System.out.println("working");%>
				<div id="incident_init" class="row" >
    			<div class="box col-md-12">
				<div class="box-inner">
				<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
				<h2>Incident/Accident Report</h2>
				</div>
				<div class="box-content" style="background-color:white">
				<table class="table table-bordered table-striped table-condensed" style="background-color:white">
				<thead style="background-color:#234269;color:white">
				<tr>
				<th>Address</th>
				<th>Time</th>
				<th>Description</th>
				<th>Actions</th>
				</tr>
				</thead>
				<tbody >
			<%	
			if(!myResultSet.next())
			{%>
				<tr>
				<td> No suitable results found
				</td>
				</tr>
				
				<%
			}
			while(myResultSet.next()){
			address = myResultSet.getString("add");
			description = myResultSet.getString("description");
			hr = myResultSet.getString("hour");
			min = myResultSet.getString("minute");
			time = myResultSet.getString("time");
			con=hr+":"+min+""+time;
			System.out.println(con);
			//String splitTo[]=to.split(" ");
			//System.out.println(splitTo[0]);
			//if(arr[0].toLowerCase().contains(splitTo[0].toLowerCase())){
			//out.print(congestionlevel);
			if(!address.equals("")){
			%>

				<tr id="close"  style="background-color:white">
				<td class="center"><%=address %></td>
				<td class="center"><%=con %></td>
				<td class="center"><%=description %></td>
				<td>
				<input type="button" class="btn btn-success"  value="Accept" id="myButton2" onClick="changetext1()"  >
				
				<input type="button" class="btn btn-danger"  value="Close" id="myButton1" onClick="changetext()"  >
				
				</td>
				</tr>
			<%
			}}
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
			} %>
 </div> 
 </div>
 </div>     
 <footer id="footer" style="background-color: #001f5c; width: 1375px; position:relative;
	bottom:0;
	left:0;" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
		| <a href="contactus.jsp">Contact Us</a>
	</td></tr>
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
