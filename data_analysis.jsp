

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* " %>
      <%@ page import="java.util.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
 
   <%
            ArrayList<String> expressway = new ArrayList<String>();
            ArrayList<Integer> level = new ArrayList<Integer>();
        	//String[] to=new String[50];
        
        	int i=0;
        	int lc=30;
			int nc=40;
			int mc=50;
			int uc=0;
        	//String[] congestionLevel=new String[50];
        	     //int[] traveltime=new int[50];
        	     try {
        				//out.println("Traffic meets");
        				String driver = "org.postgresql.Driver";
        				String url = "jdbc:postgresql://localhost:5432/postgres";
        				String username = "postgres";
        				String password = "root";
        				String myQuery = "SELECT expressway, max(traveltime) as time FROM \"travelTime\" GROUP BY expressway";
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
        					expressway.add(myResultSet.getString("expressway"));
        					level.add(myResultSet.getInt("time"));
        					System.out.println(level);
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
    <%for(i=0;i<expressway.size();i++)
			{
				
   
			System.out.println(expressway.get(i)+"");
			System.out.println(level.get(i)+"");
	
				%>
				<%} %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="charisma-master/css/jquery-1.2.6.min.js"></script>
   <link rel="stylesheet" type="text/css" href="./styles/jchartfx.css" />
	<link rel="stylesheet" type="text/css" href="./styles/drill.css" />
   <script type="text/javascript" src="./js/jchartfx.system.js"></script>
<script type="text/javascript" src="./js/jchartfx.coreBasic.js"></script> 
 <script type="text/javascript" src="./js/jchartfx.advanced.js"></script>
 
<script type="text/javascript" src="./js/jchartfx.animation.js"></script> 
<script type="text/javascript" src="./js/jchartfx.annotation.js"></script> 
    <script type="text/javascript" src="./js/jchartfx.treemap.js"></script>
<script type="text/javascript" src="./js/jchartfx.heatmap.js"></script>
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
    <script src="charisma-master/bower_components/jquery/jquery.min.js"></script>
 
</head>
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

 </script>
<script type="text/javascript">
var chart1;
var chartDetail;
var chartDetail1;
var countryName = "";
var currentColor;
var isCallBack = true;

window.onload = function () {
    onLoadDoc();
};

function onLoadDoc() {
    chart1 = new cfx.Chart();
    doStartupChart();
    setupChartDetail();
    setupChartDetail1();
    var divHolder = document.getElementById('MainChartDiv');
    chart1.create(divHolder);
    $("#MainChartDiv").click(function (evt) {
        doClick(evt);
    });
   
    divBack.onclick = showMainChart;
    var detailHolder = document.getElementById("DetailChartDiv");
    var detailHolder1 = document.getElementById("DetailChartDiv1");
    detailHolder.style.display = "none";
    detailHolder1.style.display = "none";
}

function doStartupChart() {
    chart1.setGallery(cfx.Gallery.Pie);
    var data = chart1.getData();
    data.setSeries(1);
    data.setPoints(10);
    chart1.getView3D().setEnabled(true);
    chart1.getLegendBox().setVisible(true);
    setImagesAndColors(true, -1);
    chart1.getAllSeries().getPointLabels().setFormat("%v");
    chart1.getAllSeries().getPointLabels().setVisible(true);
    chart1.getAllSeries().getPointLabels().setAlignment(cfx.StringAlignment.NEAR);
   
    doTitle();

    doData();

}

function doTitle() {
    var titles = chart1.getTitles();
    var title = new cfx.TitleDockable();
     var title2 = new cfx.TitleDockable();
    
    if (titles.getCount() === 0) {
        
        title.setText("Congestion chart");
        titles.add(title);
       
    } else {
        titles.clear();
        
        title.setText("Congestion chart");
        titles.add(title);
        
    }
}

function doTitleCountry(highway) {
    var titles = chartDetail.getTitles();
    var title = new cfx.TitleDockable();
    var title2 = new cfx.TitleDockable();
    if (titles.getCount() === 0) {
        title.setText("Typical Travel Times in " + highway);
        titles.add(title);
      
    } else {
        titles.clear();
        title.setText("Typical Travel Times in " + highway);
        titles.add(title);
      }
    var titles_1 = chartDetail1.getTitles();
    var title_1 = new cfx.TitleDockable();
    var title2_1 = new cfx.TitleDockable();
    if (titles_1.getCount() === 0) {
        title_1.setText("Typical congestion in " + highway);
        titles_1.add(title_1);
      
    } else {
        titles_1.clear();
        title_1.setText("Typical congestion in " + highway);
        titles_1.add(title_1);
       
    }
}

function doData() {

	 chart1.getDataSourceSettings().getFields().clear();
	    var items = [{
	        "Highway": "I-894/US-45",
	            "Value": 632
	    }, {
	        "Highway": "Kennedy Expy",
	            "Value": 1020
	    }, {
	    	"Highway": "I-74",
	            "Value": 187
	    }, {
	    	"Highway": "US-41",
	            "Value": 132
	    }, {
	    	"Highway": "Lake Shore Drive",
	            "Value":480
	    }
	    , {
	    	"Highway": "I-57",
	            "Value": 1860
	    },
	     {
	    	"Highway": "I-39/I-90",
	            "Value": 1146
	    }
	    , {
	    	"Highway": "I-794",
	            "Value": 224
	    }
	    , {
	    	"Highway": "I-80",
	            "Value": 677
	    }
	    , {
	    	"Highway": "I-90",
	            "Value": 1939
	    }];
	    chart1.setDataSource(items);
}
function doDataCountry(highway) {
	document.location.href ="goto.jsp?highway="+highway; 
    var fields = chartDetail.getDataSourceSettings().getFields();
    fields.clear();
    var field1 = new cfx.FieldMap();
    field1.setName("Value");
    field1.setUsage(cfx.FieldUsage.Value);
    fields.add(field1);
    var field2 = new cfx.FieldMap();
    field2.setName("Date");
    field2.setUsage(cfx.FieldUsage.XValue);
    fields.add(field2);
    if (countryName == "Costa Rica") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 59.8
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 61.2
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 62.6
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 64.0
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 65.4
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 66.8
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 68.1
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 69.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 70.7
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 72.0
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 73.3
        } ];
    } else if (countryName == "El Salvador") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 246.1
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 250.3
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 254.6
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 259.1
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 263.9
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 268.8
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 273.9
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 279.2
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 284.6
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 290.1
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 295.6
        } ];
    } else if (countryName == "Guatemala") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 82.7
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 85.0
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 86.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 87.8
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 90.2
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 92.5
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 94.7
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 96.8
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 98.8
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 100.6
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 102.2
        } ];
    } else if (countryName == "Honduras") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 42.8
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 44.1
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 45.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 46.7
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 48.1
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 49.6
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 51.0
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 52.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 53.8
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 55.2
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 56.7
        } ];
    } else if (countryName == "Nicaragua") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 30.6
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 32.2
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 33.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 34.4
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 35.5
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 36.5
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 37.4
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 38.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 39.2
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 40.1
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 41.0
        } ];
    }
    chartDetail.setDataSource(itemsCountry);
}
function doDataCountry1(countryName) {
    var fields = chartDetail1.getDataSourceSettings().getFields();
    fields.clear();
    var field1 = new cfx.FieldMap();
    field1.setName("Value");
    field1.setUsage(cfx.FieldUsage.Value);
    fields.add(field1);
    var field2 = new cfx.FieldMap();
    field2.setName("Date");
    field2.setUsage(cfx.FieldUsage.XValue);
    fields.add(field2);
    if (countryName == "Costa Rica") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 59.8
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 61.2
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 62.6
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 64.0
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 65.4
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 66.8
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 68.1
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 69.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 70.7
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 72.0
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 73.3
        } ];
    } else if (countryName == "El Salvador") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 246.1
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 250.3
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 254.6
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 259.1
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 263.9
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 268.8
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 273.9
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 279.2
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 284.6
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 290.1
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 295.6
        } ];
    } else if (countryName == "Guatemala") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 82.7
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 85.0
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 86.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 87.8
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 90.2
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 92.5
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 94.7
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 96.8
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 98.8
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 100.6
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 102.2
        } ];
    } else if (countryName == "Honduras") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 42.8
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 44.1
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 45.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 46.7
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 48.1
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 49.6
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 51.0
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 52.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 53.8
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 55.2
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 56.7
        } ];
    } else if (countryName == "Nicaragua") {
        itemsCountry = [{
            "Date": "1990-01-01T00:00:00.000Z",
                "Value": 30.6
        }, {
            "Date": "1991-01-01T00:00:00.000Z",
                "Value": 32.2
        }, {
            "Date": "1992-01-01T00:00:00.000Z",
                "Value": 33.4
        }, {
            "Date": "1993-01-01T00:00:00.000Z",
                "Value": 34.4
        }, {
            "Date": "1994-01-01T00:00:00.000Z",
                "Value": 35.5
        }, {
            "Date": "1995-01-01T00:00:00.000Z",
                "Value": 36.5
        }, {
            "Date": "1996-01-01T00:00:00.000Z",
                "Value": 37.4
        }, {
            "Date": "1997-01-01T00:00:00.000Z",
                "Value": 38.4
        }, {
            "Date": "1998-01-01T00:00:00.000Z",
                "Value": 39.2
        }, {
            "Date": "1999-01-01T00:00:00.000Z",
                "Value": 40.1
        }, {
            "Date": "2000-01-01T00:00:00.000Z",
                "Value": 41.0
        } ];
    }
    chartDetail1.setDataSource(itemsCountry);
}

function setupChartDetail() {
    chartDetail = new cfx.Chart();
    var data = chartDetail.getData();
    data.setSeries(1);
    data.setPoints(11);
    chartDetail.setGallery(cfx.Gallery.Bar);
    chartDetail.getAxisY().getDataFormat().setFormat(cfx.AxisFormat.NUMBER);
    chartDetail.getAxisY().getDataFormat().setDecimals(2);
    chartDetail.getAxisY().getLabelsFormat().setDecimals(2);
    chartDetail.getAllSeries().getPointLabels().setFormat("%v");
    chartDetail.getAxisY().getGrids().setInterlaced(true);
	
    
    chartDetail.getAxisX().setStaggered(true);
	
    chartDetail.getAllSeries().setBarShape(cfx.BarShape.Cylinder);
    chartDetail.getLegendBox().setVisible(false);
    chartDetail.getAllSeries().getPointLabels().setVisible(false);
		
    
	
	
    var divHolder = document.getElementById('DetailChartDiv');
    chartDetail.create(divHolder);
  }

function setupChartDetail1() {
    chartDetail1 = new cfx.Chart();
    var data = chartDetail.getData();
    data.setSeries(1);
    data.setPoints(11);
    chartDetail1.setGallery(cfx.Gallery.Bar);
    chartDetail1.getAxisY().getDataFormat().setFormat(cfx.AxisFormat.NUMBER);
    chartDetail1.getAxisY().getDataFormat().setDecimals(2);
    chartDetail1.getAxisY().getLabelsFormat().setDecimals(2);
    chartDetail1.getAllSeries().getPointLabels().setFormat("%v");
    chartDetail1.getAxisY().getGrids().setInterlaced(true);
	
    
    chartDetail1.getAxisX().setStaggered(true);
	
    chartDetail1.getAllSeries().setBarShape(cfx.BarShape.Cylinder);
    chartDetail1.getLegendBox().setVisible(false);
    chartDetail1.getAllSeries().getPointLabels().setVisible(false);
		
   
    var divHolder1 = document.getElementById('DetailChartDiv1');
    chartDetail1.create(divHolder1);
}

function doClick(evt) {
    var iPoint = 0;
    var iSeries = 0;
    if (evt.hitType == cfx.HitType.Point) {
        iPoint = evt.point;
        iSeries = evt.series;
        if (iPoint === 0) {
            highway = "I-894/US-45";
        } else if (iPoint == 1) {
        	highway = "Kennedy Expy";
        } else if (iPoint == 2) {
        	highway = "I-74";
        } else if (iPoint == 3) {
        	highway = "US-41";
        } else if (iPoint == 4) {
        	highway = "Lake Shore Drive";
        }
        else if (iPoint == 5) {
        	highway = "I-57";
        }
        else if (iPoint == 6) {
        	highway ="I-39/I-90";
        }
        else if (iPoint == 7) {
        	highway = "I-794";
        }
        else if (iPoint == 8) {
        	highway = "I-80";
        }
        else if (iPoint == 9) {
        	highway = "I-90";
        }

        doDataCountry(highway);
        doTitleCountry(highway);
        setImagesAndColors(false, iPoint);
        showDetailChart();
        showDetailChart1();
    }
}

function showDetailChart() {
    var divMain = document.getElementById('MainChartDiv');
    divMain.style.display = "none";
    var divDetail = document.getElementById('DetailChartDiv');
    divDetail.style.display = "inline-block";
   
}
function showDetailChart1() {
    var divMain = document.getElementById('MainChartDiv');
    divMain.style.display = "none";
    var divDetail1 = document.getElementById('DetailChartDiv1');
    divDetail1.style.display = "inline-block";
   
}
function showMainChart() {
    var divDetail = document.getElementById('DetailChartDiv');
    divDetail.style.display = "none";
    var divDetail1 = document.getElementById('DetailChartDiv1');
    divDetail1.style.display = "none";
    document.getElementById('divBack').style.display = "none";
    var divMain = document.getElementById('MainChartDiv');
    divMain.style.display = "inline-block";
}

function showBackImage() {
    var divLoading = document.getElementById('divBack');
    divLoading.style.display = "inline-block";
    divLoading.style.height = "";
    divLoading.style.weight = "";
}

function hideBackImage() {
    var divHide = document.getElementById('divBack');
    divHide.style.display = "none";
}

function setImagesAndColors(isCallBack, iPoint) {
    if (isCallBack) {
        hideBackImage();
    } else {
        showBackImage();
        var tag = "Attribute" + iPoint;
        chartDetail.getSeries().getItem(0).setTag(tag);
    }
}
</script>
<style>
#divBack
{
        position: absolute;
        width: 111px;
        height: 60px;
        left: 5px;
        top: 13px;
        text-align: center;
}

.jchartfx .Title 
{
        font-size: 12pt;
}
.jchartfx {
	font-family: Verdana, Arial, sans-serif;
	font-weight: normal;
	font-size: 12px;
}
.jchartfx .Attribute0 {
	fill: #0972A5;
	stroke: #07567C;
	stroke-width: 1;
}

.jchartfx .Attribute0Line {
	stroke: #07567C;
	stroke-width: 3;
}

.jchartfx .Attribute0Alt {
	fill: #0B8ECE;
}

.jchartfx .Attribute1 {
	fill: #EEEEEE;
	stroke: #B3B3B3;
	stroke-width: 1;
}

.jchartfx .Attribute1Line {
	stroke: #B3B3B3;
	stroke-width: 3;
}

.jchartfx .Attribute1Alt {
	fill: #B3B3B3;
}

.jchartfx .Attribute2 {
	fill: #FFC73D;
	stroke: #C0962E;
	stroke-width: 1;
}

.jchartfx .Attribute2Line {
	stroke: #C0962E;
	stroke-width: 3;
}

.jchartfx .Attribute2Alt {
	fill: #C0962E;
}

.jchartfx .Attribute3 {
	fill: #CCCCCC;
	stroke: #999999;
	stroke-width: 1;
}

.jchartfx .Attribute3Line {
	stroke: #999999;
	stroke-width: 3;
}

.jchartfx .Attribute3Alt {
	fill: #999999;
}

.jchartfx .Attribute4 {
	fill: #555555;
	stroke: #404040;
	stroke-width: 1;
}

.jchartfx .Attribute4Line {
	stroke: #404040;
	stroke-width: 3;
}

.jchartfx .Attribute4Alt {
	fill: #6A6A6A;
}

.jchartfx .Attribute5 {
	fill: #2E7DB2;
	stroke: #235E86;
	stroke-width: 1;
}

.jchartfx .Attribute5Line {
	stroke: #235E86;
	stroke-width: 3;
}

.jchartfx .Attribute5Alt {
	fill: #399CDE;
}

.jchartfx .Attribute6 {
	fill: #0B93D5;
	stroke: #096FA0;
	stroke-width: 1;
}

.jchartfx .Attribute6Line {
	stroke: #096FA0;
	stroke-width: 3;
}

.jchartfx .Attribute6Alt {
	fill: #0DB7FF;
}

.jchartfx .Border {
	fill: #B2B2B2;
	stroke: #555555;
	stroke-width: 1;
}

.jchartfx .PlotArea {
	fill: transparent;
	stroke: #444444;
	stroke-width: 1;
}
.jchartfx .AxisY_Text {
	fill: #000000;
}

.jchartfx .AxisY_Major {
	stroke: #444444;
}

.jchartfx .AxisY_Minor {
	stroke: #444444;
}

.jchartfx .AxisY_Interlaced {
	fill: #000000;
}

.jchartfx .AxisY_Line {
	stroke: #444444;
	stroke-width: 2;
}

.jchartfx .AxisX_Text {
	fill: #000000;
}

.jchartfx .AxisX_Major {
	stroke: #444444;
}

.jchartfx .AxisX_Minor {
	stroke: #444444;
}

.jchartfx .AxisX_Interlaced {
	fill: #000000;
}

.jchartfx .AxisX_Line {
	stroke: #444444;
	stroke-width: 2;
}

.jchartfx .PointLabel {
	fill: #000000;
}

.jchartfx .PointLabelBorder {
	fill: #C0C0C0;
	stroke: #000000;
}

.jchartfx .Title {
	fill: #000000;
}

.jchartfx .LegendBox {
	fill: transparent;
	stroke: #555555;
	stroke-width: 1;
}

.jchartfx .LegendItem {
	fill: #000000;
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
 <li><a href="Home.jsp">Home</a></li>
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
         <!-- breadcrumb starts -->
    
      <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -20px;" class="box col-md-12">
   
       
           
           
           <ul style=" background-color:#069C6F;" class="breadcrumb" >
<li>
<a href="Home.jsp">Home</a>
</li>
<li>
<a href="#">Data Analysis</a>
</li>
</ul>
</div>
    <!-- breadcrumb ends -->

    <!-- content starts -->
 <div class="ch-container">
      <div class="row" >
	    <div class="box col-md-12" style="border-color: red;" >
        <div class="box-inner" style="background-color:white;height:540px;  margin: -10px">
            <div class="box-content row">
           
 `          <div class="box-content" >
<div>

<center>
		<table width="550" border="0" cellspacing="0" cellpadding="0">
			<tr><td><div class="alert alert-info" >Click on the chart to view a detailed report</div></td></tr>
			<tr>
				
				<td>
					<div style="width: 550px;position: relative">
						<div id="divBack">
							<img alt="Back" src="sampleImages/backbutton.png" />
						</div>
						<div id="MainChartDiv" style="width:550px;height:400px;display:inline-block;background-color:white;"></div>
						<div id="DetailChartDiv" style="width:550px;height:400px;display:inline-block; "></div>
						<br/>
						<div id="DetailChartDiv1" style="width:550px;height:400px;display:inline-block;float:right "></div>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td height="10"></td>
				<td></td>
			</tr>
			
		</table></center>
	</div>
         </div>
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


