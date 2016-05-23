<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
   
    <meta charset="utf-8">
    <title>Travel Midwest</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    

        
<link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.8/mapbox.css' rel='stylesheet' />
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
     <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />

    <!-- jQuery -->
    <script src="charisma-master/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    
     <script src="https://maps.googleapis.com/maps/api/js"></script>
       <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
  <cfoutput>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=#YOUR-GOOGLE-API-KEY#&sensor=false"></script>
</cfoutput>
       <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
    
	  
<script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
	<script type="text/javascript" src="us-states.js"></script>
     <script type="text/javascript">
    
     
     
   $(document).ready(function() {
	 
	   $("#show-traffic").show();
	    $("#show-weather").hide();
	    $("#show-accident").hide();
		$("#tra").show();
	    initialize_traffic();
	    $("#wea").hide();
	    $("#acc").hide();
	    $("#weather").click(function(event){
	    $("#show-weather").show();
	    $("#show-traffic").hide();
	    $("#show-accident").hide();
	    $("#tra").hide();
	    $("#acc").hide();
	    initialize();
	    
	   });
	   $("#traffic").click(function(event){
		    $("#show-traffic").show();
		    $("#show-weather").hide();
		    $("#show-accident").hide();
			$("#tra").show();
		    initialize_traffic();
		    $("#wea").hide();
		    $("#acc").hide();
		   });
	   $("#accident").click(function(event){
		  // alert("into");
		    $("#show-accident").show();
		    $("#show-traffic").hide();
		    $("#show-weather").hide();
		    $("#tra").hide();
		    $("#wea").hide();
		    $("#acc").show();
		    //initialize_accident();
		    
		   });
	   
	  
	 });
   
   
  </script>
 
    
<script type="text/javascript" >
function initialize_accident() {
alert("dfghjkl;");
}
</script>
   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script>
function initialize_traffic() {
  var myLatlng = new google.maps.LatLng(41.871516,-87.651179);
  var mapOptions = {
    zoom: 13,
    center: myLatlng
  }

  var map = new google.maps.Map(document.getElementById('map-canvas-traffic'), mapOptions);

  var trafficLayer = new google.maps.TrafficLayer();
  trafficLayer.setMap(map);
}

//google.maps.event.addDomListener(window, 'load', initialize);

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=weather"></script>
    <script>
function initialize() {
  var mapOptions = {
    zoom: 7,
    center: new google.maps.LatLng(41.871516,-87.651179),

  };

  var map = new google.maps.Map(document.getElementById('map-canvas-weather'),
      mapOptions);

  var weatherLayer = new google.maps.weather.WeatherLayer({
    temperatureUnits: google.maps.weather.TemperatureUnit.FAHRENHEIT
  });
  google.maps.event.addListener(weatherLayer, 'click', function(e) {


	  /*alert('The current temperature at ' + e.featureDetails.location + ' is '
	        + e.featureDetails.current.temperature + ' degrees.'+e.featureDetails.current.description+e.featureDetails.current.high+e.featureDetails.current.low+e.featureDetails.current.day);
	 */
  });
  weatherLayer.setMap(map);

  var cloudLayer = new google.maps.weather.CloudLayer();
  cloudLayer.setMap(map);
}

//google.maps.event.addDomListener(window, 'load', initialize);

    </script>
 <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #map {
			width: 800px;
			height: 500px;
		}

		.info {
			padding: 6px 8px;
			font: 14px/16px Arial, Helvetica, sans-serif;
			background: white;
			background: rgba(255,255,255,0.8);
			box-shadow: 0 0 15px rgba(0,0,0,0.2);
			border-radius: 5px;
		}
		.info h4 {
			margin: 0 0 5px;
			color: #777;
		}

		.legend {
			text-align: left;
			line-height: 18px;
			color: #555;
		}
		.legend i {
			width: 18px;
			height: 18px;
			float: left;
			margin-right: 8px;
			opacity: 0.7;
		}
      
    </style>
   
  </head>
<body style="background-color: #666666" onload="initialize()">
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
 <li><a href="Home.jsp">Home</a></li>
 <li><a href="#">Report&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  <ul>
   <li><a href="Traffic_Report.jsp">Travel Time Report</a></li>
   <li><a href="Congestion_Report.jsp">Congestion Report</a></li>
   <li><a href="Incident_Report.jsp">Incident Report</a></li>
  
  </ul>
 </li>
 <li class="active"><a href="Layer.jsp">View Map Layers</a></li>
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
         <!-- breadcrumb starts -->
    
      <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -20px;" class="box col-md-12">
   
       
           
           
           <ul style=" background-color:#069C6F;" class="breadcrumb" >
<li>
<a href="Home.jsp">Home</a>
</li>
<li>
<a href="#">View Map Layers</a>
</li>
</ul>
</div>
    <!-- breadcrumb ends -->

    <!-- content starts -->
    <div class="ch-container">
      <div class="row" >
     
<div class="col-sm-2 col-lg-2" >
<div class="sidebar-nav">
<div class="nav-canvas" >
<div class="nav-sm nav nav-stacked">
</div>
<ul class="nav nav-pills nav-stacked main-menu">


<li class="accordion" id="accident">
<a href="#"><span>Accident Prone Zones</span></a>
<ul class="nav nav-pills nav-stacked" id="acc">
<style>
.legend label,
.legend span {
  display:block;
  float:left;
  height:50px;
  width:20%;
  text-align:center;
  font-size:10px;
  color:#808080;
  }
</style>


</a></li>

</ul>
</li>

<li class="accordion" id="traffic">
<a href="#"><span> Traffic Report</span></a>
<ul class="nav nav-pills nav-stacked" id="tra">
<li><a href="#" style="background:none ; "><img src="./images/traffic.PNG" style="width:190px;height:90px;margin-left:-30px;"></a></li>

</ul>
</li>

<li class="accordion" id="weather">
<a href="#"><span>Weather Report</span></a>


</ul>

</div>
</div>
</div>
<div class="box col-md-10" style="display:none" id="show-traffic">
        <div class="box-inner" style="padding-right: 10px; margin: -10px;">
            <div id="map-canvas-traffic"  class="box-content row" style="background-color:white;height:540px;margin-left:5px;width:100% ">
            </div>
        </div>
    </div>
<div class="box col-md-10" style="display:none" id="show-accident">
        <div class="box-inner" style="padding-right: 10px; margin: -10px;">         
  <div id="map" class="box-content row" style="background-color:white;height:540px;margin-left:5px; width:100%;">
            </div>
        </div>
    </div>   
	<script type="text/javascript">

		var map = L.map('map').setView([41.8369,-87.6847], 10);

		L.tileLayer('https://{s}.tiles.mapbox.com/v4/{mapId}/{z}/{x}/{y}.png?access_token={token}', {
		    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
		    subdomains: ['a','b','c','d'],
		    mapId: 'venser16.m4c49di8',
		    token: 'pk.eyJ1IjoidmVuc2VyMTYiLCJhIjoiQTd2Y0tVcyJ9.k-O6x4XtdXHjp3T3lOqD7g'
		});


		// control that shows state info on hover
		var info = L.control();

		info.onAdd = function (map) {
			this._div = L.DomUtil.create('div', 'info');
			this.update();
			return this._div;
		};

		info.update = function (props) {
			this._div.innerHTML = '<h4>No. of Incidents per day</h4>' +  (props ?'<b>' + props.Name + '</b><br />'
			 + props.Incident_per_day + ' Incidents / day</sup>'
				: 'Hover over a County');
		};

		info.addTo(map);


		function getColor(d) {
			return d > 35 ? '#800026' :
			       d > 30 ? '#BD0026' :
			       d > 25 ? '#E31A1C' :
			       d > 20  ? '#FC4E2A' :
			       d > 15   ? '#FD8D3C' :
			       d > 10  ? '#FEB24C' :
			       d > 5   ? '#FED976' :
			                  '#FFEDA0';
		}

		function style(feature) {
			return {
				weight: 2,
				opacity: 1,
				color: 'white',
				dashArray: '3',
				fillOpacity: 0.7,
				fillColor: getColor(feature.properties.Incident_per_day)
			};
		}

		function highlightFeature(e) {
			var layer = e.target;

			layer.setStyle({
				weight: 5,
				color: '#666',
				dashArray: '',
				fillOpacity: 0.7
			});

			if (!L.Browser.ie && !L.Browser.opera) {
				layer.bringToFront();
			}

			info.update(layer.feature.properties);
		}

		var geojson;

		function resetHighlight(e) {
			geojson.resetStyle(e.target);
			info.update();
		}

		function zoomToFeature(e) {
			map.fitBounds(e.target.getBounds());
		}

		function onEachFeature(feature, layer) {
			layer.on({
				mouseover: highlightFeature,
				mouseout: resetHighlight,
				click: zoomToFeature
			});
		}

		geojson = L.geoJson(statesData, {
			style: style,
			onEachFeature: onEachFeature
		}).addTo(map);

		map.attributionControl.addAttribution('Population data &copy; <a href="http://census.gov/">US Census Bureau</a>');


		var legend = L.control({position: 'bottomright'});

		legend.onAdd = function (map) {

			var div = L.DomUtil.create('div', 'info legend'),
				grades = [0, 10, 15, 20, 25, 30, 35, 40],
				labels = [],
				from, to;

			for (var i = 0; i < grades.length; i++) {
				from = grades[i];
				to = grades[i + 1];

				labels.push(
					'<i style="background:' + getColor(from + 1) + '"></i> ' +
					from + (to ? '&ndash;' + to : '+'));
			}

			div.innerHTML = labels.join('<br>');
			return div;
		};

		legend.addTo(map);

	</script>

       
<div class="box col-md-10" style="display:none" id="show-weather">
        <div class="box-inner" style="padding-right: 10px; margin: -10px;">  
            <div id="map-canvas-weather"  class="box-content row" style="background-color:white;height:540px;margin-left:5px;width:100% ">
            </div>
        </div>
    </div>
    
	  </div>
 </div>
	<footer style="background-color: #001f5c; width: 1366px; " class="row">
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
<script src="charisma-master/js/jquery.cookie.js"></script>
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
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="charisma-master/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="charisma-master/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="charisma-master/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="charisma-master/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="charisma-master/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="charisma-master/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="charisma-master/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>
<!-- application script for Ac -->
<script src="charisma-master/js/charisma1.js"></script>


  </body>
</html>