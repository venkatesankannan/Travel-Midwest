 <%@ page import="java.sql.* " %>
      <%@ page import="java.util.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
 
	<%
		String highway=request.getParameter("highway"); 
		System.out.print("start-->"+highway); 
		
	//String expressway = request.getParameter("expy");
    //System.out.println(expressway);
            ArrayList<String> to = new ArrayList<String>();
            ArrayList<String> congestionLevel = new ArrayList<String>();
            ArrayList<Integer> traveltime = new ArrayList<Integer>();
        	//String[] to=new String[50];
        	int i=0;
        	//String[] congestionLevel=new String[50];
        	     //int[] traveltime=new int[50];
        	     try {
        				//out.println("Traffic meets");
        				String driver = "org.postgresql.Driver";
        				String url = "jdbc:postgresql://localhost:5432/postgres";
        				String username = "postgres";
        				String password = "root";
        				String myQuery = "SELECT * FROM \"travelTime\" where expressway='"+highway+"'";
        				//out.println("Traffic meets");
        				Connection myConnection=null;
        				PreparedStatement myPreparedStatement=null;
        				ResultSet myResultSet = null;
        				Class.forName(driver);
        				myConnection = DriverManager.getConnection(url,username,password);
        				myPreparedStatement = myConnection.prepareStatement(myQuery);
        				//System.out.println("**********");
        				myResultSet = myPreparedStatement.executeQuery();
        				//System.out.println("working");
        				i=0;	
        				while(myResultSet.next()){
        					//expressway = myResultSet.getString("expressway");
        					congestionLevel.add(myResultSet.getString("congestionLevel"));
        					//from = myResultSet.getString("from");
        					to.add(myResultSet.getString("to"));
        					traveltime.add(myResultSet.getInt("traveltime")/60);
        					//traveltime[i]=traveltime[i]/60;
        					System.out.println(traveltime);
        					i++;
        				        			
        				}

%> <%}
 				catch(ClassNotFoundException e){e.printStackTrace();}
				catch (SQLException ex)
				{
				System.out.print("SQLException: "+ex.getMessage());
				System.out.print("SQLState: " + ex.getSQLState());
				System.out.print("VendorError: " + ex.getErrorCode());
				}
		
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<script type="text/javascript" src="charisma-master/css/jquery-1.2.6.min.js"></script>
   <link rel="stylesheet" type="text/css" href="./styles/jchartfx.css" />
	
   <script type="text/javascript" src="./js/jchartfx.system.js"></script>
<script type="text/javascript" src="./js/jchartfx.coreBasic.js"></script> 
 <script type="text/javascript" src="./js/jchartfx.advanced.js"></script>
 
<script type="text/javascript" src="./js/jchartfx.animation.js"></script> 
<script type="text/javascript" src="./js/jchartfx.annotation.js"></script> 

<script type="text/javascript" src="./js/jchartfx.data.js"></script> 
<link rel='shortcut icon' href='charisma-master/img/favicon_tm.ico' type='image/x-icon'/ >
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
    <link href='charisma-master/css/styles.css' rel='stylesheet'>
    <link href='charisma-master/css/elfinder.min.css' rel='stylesheet'>
    <link href='charisma-master/css/elfinder.theme.css' rel='stylesheet'>
    <link href='charisma-master/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='charisma-master/css/uploadify.css' rel='stylesheet'>
    <link href='charisma-master/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->

</head>
<style type="text/css">

.jchartfx .AxisX_Minor {
      stroke: #DBDBD9;
}

.jchartfx .AxisX_Interlaced {
      fill: #ECEBE8;
}

.jchartfx .AxisX_Line {
      stroke: #DBDBD9;
      stroke-width: 2;
}

.jchartfx .PointLabel {
      fill: #666666;
}
.jchartfx .Attribute0 {
	fill: #60ba3f;
	stroke: #4281A4;
	stroke-width: 1;
}

</style>
<body style="background-color:white">
<!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation" style="height:60px;">

        <div class="navbar-inner" >
           
            <a class="navbar-brand" href="Home.jsp"> <img alt="Travel Midwest Logo" src="charisma-master/img/travelmidwest_logo.jpg" class="hidden-xs"/>
                </a>
          
            <ul class="collapse navbar-collapse nav navbar-nav top-menu">
            
                <li>
                  <label style="margin-left:20px;margin-top:15px;font-family:Arial;color:white;">City</label>
                </li><li>
                
               &nbsp; <button class="btn btn-default btn-sm" style="margin-top:15px;"> Chicago</button>
               
            	</li>
            </ul>
        

    

       </div>
        <!-- navbar starts -->

<div id="nav2">
<ul id="menu-bar">
 <li class="active"><a href="#">Home</a></li>
 <li><a href="#">View Report&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
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
  <li class="active"><a href="data_analysis.jsp">Data Analysis</a></li>
  <li><a href="ReportIncident.jsp">&nbsp; Report an incident &nbsp;</a></li>
</ul>
</div>
    </div>
    <!-- topbar ends -->
    <br/>
<center>
<br/>
<div id="ChartDiv" style="width:600px;height:500px;align:center">

<script type="text/javascript" language="javascript">
    var chart1;
    $(document).ready(function(){
           
        
           chart1 = new cfx.Chart();
            //chart1.getData().setSeries(2);
            chart1.getAxisY().setMin(0);
            chart1.getAxisY().setMax(50);
            var titles = chart1.getTitles();
            var title = new cfx.TitleDockable();
            title.setText("Typical Travel Times");
            titles.add(title);   
            chart1.getAnimations().getLoad().setEnabled(true);
            chart1.getView3D().setEnabled(true);
            var axis1 = chart1.getAxisX();
            
            var axis3 = chart1.getAxisY();
          //  alert("into load");
            axis1.getTitle().setText('Destination for <%=highway%>');
            axis3.getTitle().setText('Travel Time');
           
            
           // var series1 = chart1.getSeries().getItem(0);
           // var series2 = chart1.getSeries().getItem(1);
            //series1.setGallery(cfx.Gallery.Lines);
          chart1.setGallery(cfx.Gallery.Bar);
          //alert("into load");
            var divHolder = document.getElementById('ChartDiv');
            chart1.create(divHolder);
            //var items = new Array();
            window.data = new Array(); 
            <%for(i=0;i<to.size();i++)
			{
				
					
				System.out.println(to.get(i)+"*"+traveltime.get(i)+""+congestionLevel.get(i));
				if(traveltime.get(i)!=0){
				%>
				
				 var item = new Object();
                item["Destination"] = "<%=to.get(i)%>";
                item["Congestion Level"] = <%=traveltime.get(i)%>;               
			          data.push(item);
                //chart1.setDataSource(items);
            <%}}%>
           
            chart1.setDataSource(data);
          
      });
</script></div>
<p class="center row-md-5">

&nbsp;<a href="data_analysis.jsp" class="btn btn-primary" ><i class="glyphicon glyphicon-chevron-left glyphicon-white"></i> Back </a>


</p>
</center>
<input type="hidden" id="high" value=<%=highway %>>
  <footer style="background-color: #001f5c; width: 1366px;" class="row">
		<table align="center" cellspacing="0" cellpadding="0">
			<tr><td align="center" style="color:black">
			<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
	    	| <a href="contactus.jsp">Contact Us</a>
		</table>
		<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http:travelmidwest.com" target="_blank" style="text-decoration: underline;">Travel Midwest
		</a> </font></p>	
	</footer>    

    <!-- content ends --> 


<!-- external javascript -->

<script src="charisma-master/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='charisma-master/bower_components/moment/min/moment.min.js'></script>
<script src='charisma-master/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='charisma-master/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="charisma-master/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="charisma-master/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="charisma-master/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="charisma-master/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="charisma-master/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
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


