<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 


  
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

<script type="text/javascript" src="./js/jchartfx.data.js"></script> 
</head>
<script type="text/javascript">
alert("");
//onLoadDoc();
var chart1;

var chartDetail;
$(document).ready(function() {
	onLoadDoc();
    
	
function onLoadDoc() {
//alert("onLoadDoc");
    chart1 = new cfx.Chart();chart1.getAnimations().getLoad().setEnabled(true);
   
    doStartupChart();
        var divHolder = document.getElementById('MainChartDiv1');
        chart1.create(divHolder);
        $("#MainChartDiv1").click(function (evt) {
    	// alert("mainchartdiv");
        doClick(evt);
    });
    
}
function doStartupChart() {

	chart1 = new cfx.Chart();
	var a='Travel Time Report';
    doTitle1(chart1, a);
	var data = chart1.getData();
	var axis1 = chart1.getAxisY();
    var axis2 = chart1.getAxisX();       
    var axis3 = new cfx.AxisY();
    
    axis3.setVisible(true);
    axis3.setForceZero(false);
    axis3.setPosition(cfx.AxisPosition.Far);
    axis3.getTitle().setText('currency');
    axis3.getLabelsFormat().setFormat(cfx.AxisFormat.Currency);
    axis3.getGrids().getMajor().setVisible(true);


    axis1.getTitle().setText('Travel Time');
    axis2.getTitle().setText('Destination');
	chart1.setBorder(null);
	chart1.getLegendBox().setDock(cfx.DockArea.Bottom);
    chart1.getLegendBox().setVisible(true);
   chart1.getLegendBox().setContentLayout(cfx.ContentLayout.Center);
    chart1.getData().setSeries(2);

    chart1.getAxisY().setMin(0);

    chart1.getAxisY().setMax(300);
    chart1.getAnimations().getLoad().setEnabled(true);

    var series1 = chart1.getSeries().getItem(0);

    var series2 = chart1.getSeries().getItem(1);
    //var series3 = chart1.getAxisY2().getItem(2);
    series1.setGallery(cfx.Gallery.Lines);

    series2.setGallery(cfx.Gallery.Bar); 
    doTitle();
    doData();
}
    
function doTitle1(chart,text) {
	var td;
    td = new cfx.TitleDockable();
    td.setText(text);
    td.setDock(cfx.DockArea.Top);
    chart.getTitles().add(td);
}
function doTitle() {
//	alert("title");
    var titles = chart1.getTitles();
    var title = new cfx.TitleDockable();
        
        
        title.setText("");
        //titles.add(title);
       
        title.setRichText(true);
        chart1.getTitles().add(title);
   }
function doData() {
	<%String expressway = null;
	String from=null;
	String to=null;
	int i=0;
	String congestionLevel=null;
	     int traveltime=0;
	     try {
				//out.println("Traffic meets");
				String driver = "org.postgresql.Driver";
				String url = "jdbc:postgresql://localhost:5432/postgres";
				String username = "postgres";
				String password = "root";
				String myQuery = "SELECT * FROM \"travelTime\" where expressway='Kennedy Expy'";
				Connection myConnection=null;
				PreparedStatement myPreparedStatement=null;
				ResultSet myResultSet = null;
				Class.forName(driver);
				myConnection = DriverManager.getConnection(url,username,password);
				myPreparedStatement = myConnection.prepareStatement(myQuery);
				//System.out.println("**********");
				myResultSet = myPreparedStatement.executeQuery();
				//System.out.println("working");
					
				while(myResultSet.next()){
					expressway = myResultSet.getString("expressway");
					congestionLevel=myResultSet.getString("congestionLevel");
					from = myResultSet.getString("from");
					to = myResultSet.getString("to");
					traveltime=myResultSet.getInt("traveltime");
					traveltime=traveltime/60;
				
			%>

		    window.data = new Array(); 
		       var obj = new Object();
		       //var obj1 = new Object();
		    
		    //  alert("data").
		             obj['Cummulative'] = 34; 
		                      obj['Recency'] = 32;
		               obj['Customers'] = 10;
		               
		       
		           
		           
		        
		          data.push(obj);
		          //data1.push(obj1);
		          
		        
		 
				
			//alert(items.item[0]);
			//alert(items.indexOf("product1"));
		    chart1.setDataSource(data);

    <%	
	
				}}
				catch(ClassNotFoundException e){e.printStackTrace();}
				catch (SQLException ex)
				{
				System.out.print("SQLException: "+ex.getMessage());
				System.out.print("SQLState: " + ex.getSQLState());
				System.out.print("VendorError: " + ex.getErrorCode());
				}
		
	%>
 //   chart2.setDataSource(data);
}

function doClick(evt) {
	//alert("doclick");
	//alert(evt);
    var iPoint = 0;
    var iSeries = 0;
    
   // alert("evt.hitType--------"+evt.hitType);
   // alert("cfx.HitType.Point--------"+cfx.HitType.Point);
    
    if (evt.hitType == cfx.HitType.Point) {
    	
    	//alert("evt.point-------------->"+evt.point);
        iPoint = evt.point;
        
     //  alert("main view--------------->"+iPoint);
        
        
         var point_data=data1[iPoint].Week_num;
         
         var point_name=data[iPoint].Week;
       
 // alert(point_name);
        
        
        iSeries = evt.series;
        
      //  alert("iSeries--------->"+iSeries);
        
        $("#MainChartDiv1" ).hide();
        $("#divBack" ).show();
        
      //  alert("hello");
    //    location="drill_trend_v1.jsp?week_num="+point_data+"&product_type="+iSeries;
       
       var color_code=$(".jchartfx .Attribute"+iSeries).css("fill");
       
      // colorToHex(color_code);
       
       if (color_code.substr(0,1) === '#') {
	     //   color_code=color_code;
	     
	    }
       else
    	   {
    	 
    	   var digits = /(.*?)rgb\((\d+), (\d+), (\d+)\)/.exec(color_code);
    

   	    var red = parseInt(digits[2]);
   	    var green = parseInt(digits[3]);
   	    var blue = parseInt(digits[4]);
   	
   	    var rgb = blue | (green << 8) | (red << 16);
   	 
   	   color_code= digits[1] + '#' + rgb.toString(16);
   	    
    	   }
       
      
       
       color_code=color_code.substring(1);
     //  alert(color_code);
       
       
       
         //alert($(".jchartfx .Attribute0").css("stroke"));
       
     //  location="drill_trend.jsp?week_num="+point_data+"&product_type="+iSeries+"&&week_name="+point_name+"&&color_code="+color_code;
       
     //  $("#DetailChartDiv1" ).load("drill_trend.jsp?week_num="+point_data+"&&product_type="+iSeries+"&&week_name="+point_name+"&&color_code="+color_code);
        
       
    }
}
});
</script>
<style>

.jchartfx .Title 
{
        font-size: 18px;
}
.jchartfx {
        font-family: Verdana, Arial, sans-serif;
        font-weight: normal;
       
}
.jchartfx .Attribute0 {
        fill: #0972A5;
        stroke: #07567C;
        stroke-width: 1;
        cursor:pointer;
}

.jchartfx .Attribute0Line {
        stroke: #07567C;
        stroke-width: 3;
}

.jchartfx .Attribute0Alt {
        fill: #0B8ECE;
}

.jchartfx .Attribute1 {
        fill: #FFC73D;
        stroke: #B3B3B3;
        stroke-width: 1;
         cursor:pointer;
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
        fill: #000000;
        stroke: #555555;
        stroke-width: 1;
}

.jchartfx .PlotArea {
        fill: transparent;
        stroke: #444444;
        stroke-width: 1;
}
.jchartfx .AxisY_Text {
        fill: #FFFFFF;
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
        fill: #FFFFFF;
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
        fill: #FFFFFF;
}

.jchartfx .PointLabelBorder {
        fill: #C0C0C0;
        stroke: #FFFFFF;
}

.jchartfx .Title {
        fill: #FFFFFF;
}

.jchartfx .LegendBox {
        fill: transparent;
        stroke: #555555;
        stroke-width: 1;
}

.jchartfx .LegendItem {
        fill: #FFFFFF;
}






</style>
<body>
   <div id="MainChartDiv1" style="width:700px;height:500px;display:inline-block;">
                                                
             </div>
             
</body>
</html>
 