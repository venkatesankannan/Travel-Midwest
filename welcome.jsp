<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
<%	String expressway = null;

int i=0;
        Double[] elat = new Double[20];
        Double[] elng =new Double[20];
        double PIx = 3.141592653589793;
        double RADIUS = 6378.16;
        double dist=0;
        int d=0;
        Double lat=41.871516;
        Double lng=-87.651179;
%>
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
   <script type="text/javascript">
   
   $(document).ready(function() {
	   //alert("into");
	   $(window).keydown(function(event){
	     if(event.keyCode == 13) {
	       event.preventDefault();
	       return false;
	     }
	   });
	   
	  $("#btnsubmit").click(function(){
		  //alert("into");
		  var add=$("#autocomplete").val();
		  //alert("dd");
		  if($("#autocomplete").val()=='')
		   {
			  //alert(add);
			  $("#errmsg").show();
		    //alert("not");
		   }
		  
		  else{
		  $("#form_id").submit();
		  } 
	}); 
	   
	  $('#exp').click(function() {
		  //alert("nto");
		    if($(this).val()==null){
		    	//alert("exp");
		        $("#errexp").show();    
		    }
		    else
		    	{
		    	$("#errexp").hide();
		    	}
		});
	  $("#autocomplete").click(function(){
		 //alert("hide");
		 $("#errmsg").hide();
		 $("#errmsg1").hide();
		 $("#errexp").hide();
	  });	  
	   
	   
   $("#favs").change(function(){
	  //alert("123");
	  var addr;
	  var expy;
	  var rep;
	  if(this.checked){
		 addr=$("#autocomplete").val();
		if(addr==""){
			//alert("err");
			$("#errmsg1").show();
			$('#favs').attr('checked', false);
		}
		expy=$("#exp").val();
	  	rep=$('input[name=optionsRadios]:checked','#form_id').val();
	  	//alert(rep);
	  	$.post("./dbfav.jsp" ,{'expy': expy, 'addr': addr, 'rep': rep}, function (data)  
            {  
				 alert(data);
				 if(data.length >0) {
			$("#div_fav").html(data);
			
			//document.getElementById("div_config").style.height="1850px";
				 }

	  	
		});
	  	}
	  else{
		  expy="";
		  add="";
		  rep="";
		  
	  }
		
	  });
   
   });
   
  </script>
  
  <script type="Text/JavaScript">
  
  
  


  </script>
  
        <script type="text/javascript">
        var geocoder;
        var map = null;
        var marker = null;
        var infowindow = new google.maps.InfoWindow({ 
            size: new google.maps.Size(150,50)
            });

        
       
    // This example displays an address form, using the autocomplete feature
    // of the Google Places API to help users fill in the information.

    var placeSearch, autocomplete;
    var map = null;
    var marker = null;
    var infowindow = new google.maps.InfoWindow({ 
        size: new google.maps.Size(150,50)
        });
    function createMarker(latlng, name, html) {

        var contentString = html;

        var marker = new google.maps.Marker({
            position: latlng,
            map: map,
            zIndex: Math.round(latlng.lat()*-100000)<<5
            });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.setContent(contentString); 
            infowindow.open(map,marker);
            });

        google.maps.event.trigger(marker, 'click');    
        return marker;

    }
    function initialize() {

        var myLatlng = new google.maps.LatLng(41.871516,-87.651179);
        geocoder = new google.maps.Geocoder();
      
        var myOptions = {
            zoom: 14,
            center: myLatlng,
            mapTypeControl: true,
            mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
            navigationControl: true,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }

        map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

        var image = '/images/googlepins/pin2.png';  
        marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          icon: image,
          title:"Property Location"
        });

       
        formlat = document.getElementById("latbox").value = myLatlng.lat();
        formlng = document.getElementById("lngbox").value = myLatlng.lng();

        google.maps.event.addListener(map, 'click', function() {
            infowindow.close();
            });

        google.maps.event.addListener(map, 'click', function(event) {
        	
             if (marker) {
                marker.setMap(null);
                marker = null;
             }

            var image = '/images/googlepins/pin2.png';
            var myLatLng = event.latLng ;
         
            marker = new google.maps.Marker({   
                position: myLatLng,
                map: map,
                icon: image,
                title:"Property Location"
            });

            formlat = document.getElementById("latbox").value = event.latLng.lat();
            formlng = document.getElementById("lngbox").value = event.latLng.lng();
           
            exp(formlat,formlng);
            codeLatLng(); 
        });

    }
    function exp(formlat,formlng)
    {
    	//alert(formlat);
    	//alert(formlng);
    	 var highway=[];
 	    
         highway=['Eisenhower Expy:41.906049:-87.922901',
         'I-290:41.911129:-87.934396',
         'I-94:41.785688:-87.630881',
         'I-80:41.578108:-87.661403',
         'I-90:41.926159:-87.685092',
         'I-74:40.654571:-89.555789',
         'Cicero Ave:41.713824:-87.740501',
         'Roosevelt Rd:41.884247:-88.26995'];
         var combo = document.getElementById("exp");
         var option = document.createElement("option");
         //alert("box1");
    
         var j;
         for(j=combo.options.length-1;j>=0;j--)
         {
         	//alert("xxx");
         	combo.remove(j);
             
         }
        for(var i=0;i<highway.length;i++)
     	   {
     	   //alert("into");
     	   
     	   var temp=[];
     	   temp=highway[i].split(":");
     	   var PI=3.141592653589793;
     	  // alert(formlat);
     	   //alert(formlng);
     	   //alert(temp[0]+"/"+temp[1]+"/'"+temp[2]);
     	   var R = 6371; // km  
     	   var dLat = (formlat-temp[1])*Math.PI/180;  
     	   var dLon = (formlng-temp[2])*Math.PI/180;   
     	   var a = Math.sin(dLat/2) * Math.sin(dLat/2) +  
     	           Math.cos(temp[1]*Math.PI/180) * Math.cos(formlat*Math.PI/180) *   
     	           Math.sin(dLon/2) * Math.sin(dLon/2);   
     	   var c = 2 * Math.asin(Math.sqrt(a));   
     	   var d = R * c;
     	   if(d<30){
     		   var combo = document.getElementById("exp");
     	        var option = document.createElement("option");
     	        //alert("box");
     	   
     	    option.text = temp[0];
     	    option.value = temp[0];
     	    var input = document.createElement("input");
     	    input.setAttribute("type", "hidden");
     	    input.setAttribute("name", "exp1");
     	    input.setAttribute("id","txt1");
     	    input.setAttribute("value", temp[0]);
     	    document.getElementById("mydiv").appendChild(input);

     	    //alert(document.getElementById("txt1").value)
     	    try {
     	    	//alert(temp[0]);
     	        combo.appendChild(option); //Standard 
     	    }catch(error) {
     	        combo.appendChild(option); // IE only
     	    }
     	   }
     	   }
 //
    }
        function codeLatLng() {
        	var lat = document.getElementById('latbox').value;
        
        	var lng = document.getElementById('lngbox').value;
        	  
        	
        	  var latlng = new google.maps.LatLng(lat, lng);
        
        	  geocoder.geocode({'latLng': latlng}, function(results, status) {
        
        	    if (status == google.maps.GeocoderStatus.OK) {
        	   
        	      if (results[1]) {
        	        map.setZoom(11);
        	        marker = new google.maps.Marker({
        	            position: latlng,
        	            map: map
        	        });
        	       
        	        infowindow.setContent(results[1].formatted_address);
        	       
        	        document.getElementsByName('add')[0].value =results[1].formatted_address ;
        	        infowindow.open(map, marker);
        	      } else {
        	        alert('No results found');
        	      }
        	    } else {
        	      alert('Geocoder failed due to: ' + status);
        	    }
        	  });
    	}

    function initialize_geo() {


    	 var address = (document.getElementById('autocomplete'));
         var autocomplete = new google.maps.places.Autocomplete(address);
         autocomplete.setTypes(['geocode']);
         google.maps.event.addListener(autocomplete, 'place_changed', function() {
             var place = autocomplete.getPlace();
             if (!place.geometry) {
                 return;
             }

         var address = '';
         if (place.address_components) {
             address = [
                 (place.address_components[0] && place.address_components[0].short_name || ''),
                 (place.address_components[1] && place.address_components[1].short_name || ''),
                 (place.address_components[2] && place.address_components[2].short_name || '')
                 ].join(' ');
         }
         codeAddress();
       });
         
    }
    function codeAddress() {
    	//alert("into");
        geocoder = new google.maps.Geocoder();
        var address = document.getElementById("autocomplete").value;
        geocoder.geocode( { 'address': address}, function(results, status) {
          if (status == google.maps.GeocoderStatus.OK) {

          //alert("Latitude: "+results[0].geometry.location.lat());
          //alert("Longitude: "+results[0].geometry.location.lng());
          document.getElementById('latbox').value=results[0].geometry.location.lat();
          document.getElementById('lngbox').value=results[0].geometry.location.lng();
          var formlat=results[0].geometry.location.lat();
          var formlng=results[0].geometry.location.lng();
          exp(formlat,formlng);
          } 

          else {
            alert("Geocode was not successful for the following reason: " + status);
          }
        });
      }
function submit()
{
	document.getElementById("form_id").submit();
	}
    // [END region_fillform]

    // [START region_geolocation]
    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
   
    // [END region_geolocation]

        </script>
      

        </script>
<style>
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        width: 350px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
      #latlng {
        width: 225px;
      }
      
      .relative1{
      right: 250px;
      position: absolute;
      }
      .side{ float: left;}
      .new{float :right;}</style>
    </style>

   
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
                
               &nbsp; <button class="btn btn-default btn-sm" style="margin-top:15px;"> Chicago</button>
               
            	</li>
            </ul>
        <div class="relative1">
<div class="side"><img src="rss.png" height="42" width="42"></div>
<div id="rssincl-box-container-983573" class="new">
<script type="text/javascript">
(function() {
  var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
  s.src = 'http://output60.rssinclude.com/output?type=asyncjs&id=983573&hash=ec6de0b140becda6abd8af2ba119d119';
  document.getElementsByTagName('head')[0].appendChild(s);
})();
</script>
</div></div>  
<div style="margin-right: 20px;" class="btn-group pull-right">
<ul>
<button class="btn btn-default btn-sm" style="margin-top:15px;"> Welcome User</button></li>
</ul>
</div>
 
    

       </div>
        <!-- navbar starts -->

<div id="nav2">
<ul id="menu-bar">
 <li class="active"><a href="#">Home</a></li>
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

    <!-- content starts -->
    <div class="ch-container">
      <div class="row" >
	    <div class="box col-md-4" style="border-color: red;" >
        <div class="box-inner" style="background-color:white;height:540px;  margin: -10px">
            <div class="box-content row">
            <br>
 `          <div class="box-content" >
              <form name="myForm" id="form_id" action="Traffic_Illinois.jsp" >
				
				<div class="alert alert-info"style="background-color:#bce8f1;color:#234269; width: 420px;">
				Click anywhere on the map or enter your destination
				</div>
				<div class="control-group">
				<div class="form-group has-success col-md-4">
				<label class="control-label" for="inputSuccess1" style="color:#234269">Address</label>
				<input type="text" class="form-control" name="add" id="autocomplete" placeholder="Enter your address"
				             onFocus=initialize_geo(); type="text" style="border:1px solid #000000;width:390px;">
				
				<div id="errmsg" style="width: 450px; margin-bottom: 10px; display:none; "><font color='red'>
				Please enter your destination address
				</font>
				</div>
				
				
				<div id="errmsg1" style="width: 450px; margin-bottom: 10px; display:none;"><font color='red'>
				Please enter an address to add to your favorites
				</font>
				</div>
				
				
				 <input size="20" type="hidden" id="latbox" name="lat" >
				 <input size="20" type="hidden" id="lngbox" name="lng" >			  
				</div><br/><br><br><br>
				<div class="form-group has-success col-md-4" style="float: left; margin-top: 10px; width: 395px;">
				<label class="control-label" for="inputSuccess1" style="color:#234269; float: left;">Highway/Expressway</label>
				<div>
				
				<select data-rel="chosen" id="exp" name="sel" style="border:1px solid #000000;width:390px;border-radius:4px;">
				
				</select>
				</div>
				<div id="errexp" style="width: 450px; margin-bottom: 10px; display:none;"><font color='red'>
				Please enter a valid address in Chicago
				</font>
				</div>
				
				</div>
				<div id="mydiv"></div>
				 <br/>
				 <br/><br/>
				<div class="radio " >
				<p style=" margin-top: 30px; color:#234269;font-weight: 900;text-align:center;"><b>Quick Links</b></p>
				<div class="radio" style="margin-left: 15px;">
				<label>
				<input type="radio" name="optionsRadios" id="optionsRadios1" value="travelTime" >
				Traffic Report
				</label>
				</div>
				<div class="radio" style="margin-left: 15px;">
				<label>
				<input type="radio" name="optionsRadios" id="optionsRadios2" value="congestionData" checked>
				Congestion Report
				</label>
				</div>
				<div class="radio" style="margin-left: 15px;">
				<label>
				<input type="radio" name="optionsRadios" id="optionsRadios3" value="incidentData">
				Incident Report</label>
				<label style=" color:#234269; font-weight: 900; float: right;">
				<input type="checkbox" name="favs" id="favs"> 
				Add to favorites</label>
				</div>
				<div id="div_fav">
				</div>
				</div>
				
				<p class="center col-md-5" >
				<button id="btnsubmit" class="btn btn-primary" type="button">Submit</button>
				</p></div></form>
                     
                           </div>
                          </div>
        </div>
    </div>
    
        <div class="box col-md-8" >
        <div class="box-inner" style="padding-right: 10px; margin: -10px;">
           
            <div id="map-canvas" class="box-content row" style="background-color:white;height:540px;margin-left:0.5px; width:895px; ">
            </div>
        </div>
    </div>
</div>

 </div>
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