<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* " %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
    <%
    String expy=request.getParameter("expy");
    System.out.println(expy);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

    <!-- jQuery -->
    <script src="charisma-master/bower_components/jquery/jquery.min.js"></script>

</head>
<body>
<%
try {
	//out.println("Incident meets");
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost:5432/postgres";
	String username = "postgres";
	String password = "root";
	String expressway = null;
	//String congestionlevel=null;
	//String from=null;
	String description=null;
	//double speed;
	//int traveltime;
	String myQuery = "SELECT * FROM \"incidentData\" where expressway='"+expy+"'";
	Connection myConnection=null;
	PreparedStatement myPreparedStatement=null;
	ResultSet myResultSet = null;
	Class.forName(driver);
	myConnection = DriverManager.getConnection(url,username,password);
	myPreparedStatement = myConnection.prepareStatement(myQuery);
	//System.out.println("********");
	myResultSet = myPreparedStatement.executeQuery();
	//System.out.println("working");%>
		<div class="row" >
		<div class="box col-md-12">
		<div class="box-inner">
		<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
		<h2>Incident/Accident Report-Only for Highways</h2>
		</div>
		<div class="box-content" style="background-color:white">
		<table class="table table-bordered table-striped table-condensed" style="background-color:white">
		<thead style="background-color:#234269;color:white">
		<tr>
		<th>Expressway/Highway</th>
		<th>Description</th>
		</tr>
		</thead>
		<tbody >
	<%	
	if(!myResultSet.next())
	{%>
		<tr  style="background-color:white">
		<td class="center">No Incidents Recorded!</td>
		</tr><%
	}
	//List arr1=new ArrayList();
	while(myResultSet.next()){
	expressway = myResultSet.getString("expressway");
	description = myResultSet.getString("description");
	
	%>

		<tr  style="background-color:white">
		<td class="center"><%=expressway %></td>
		<td class="center"><%=description %></td>
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
