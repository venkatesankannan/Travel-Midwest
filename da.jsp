

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* " %>
      <%@ page import="java.util.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
 
   <%//String expressway = request.getParameter("expy");
    //System.out.println(expressway);
            ArrayList<String> to = new ArrayList<String>();
            ArrayList<String> congestionLevel = new ArrayList<String>();
            ArrayList<Integer> value = new ArrayList<Integer>();
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
        				String myQuery = "SELECT * FROM \"congestionData\" where expressway='Eisenhower Expy'";
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
        					to.add(myResultSet.getString("to"));
        					
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
    <%for(i=0;i<to.size();i++)
			{
				
    	if(congestionLevel.equals("LIGHT_CONGESTION"))
		{
			value.add(lc);
			//lc=lc+5;
			System.out.println(value.get(i));
			
		}
    	
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
	   // setupChartDetail();
	    var divHolder = document.getElementById('MainChartDiv');
	    chart1.create(divHolder);

	    $("#MainChartDiv").click(function (evt) {
	    	// alert("mainchartdiv");
	        doClick(evt);
	    });
	  
	 
	}

	function doStartupChart() {

    chart1 = new cfx.Chart();chart1.getAnimations().getLoad().setEnabled(true);
    
    var items = [{ "Revenue": "Low", "CLTV": "Low-CLTV", "Value": 20},
                 { "Revenue": "Low", "CLTV": "Med-CLTV", "Value": 45  }, 
                 { "Revenue": "Low", "CLTV": "High-CLTV", "Value": 56 }, 
                 { "Revenue": "Medium", "CLTV": "Low-CLTV", "Value": 76 }, 
                ];   
    var fields = chart1.getDataSourceSettings().getFields();
	var field1 = new cfx.FieldMap();
	field1.setName("Revenue");
	fields.add(field1);
	var field2 = new cfx.FieldMap();
	field2.setName("CLTV");
	fields.add(field2);
	var fieldVal = new cfx.FieldMap();
	fieldVal.setName("Value");
	fieldVal.setUsage(cfx.FieldUsage.Value);
	fields.add(fieldVal);
    chart1.setDataSource(items);
    var treeMap = new cfx.treemap.TreeMap();
    chart1.setGalleryAttributes(treeMap);
    var td;
    td = new cfx.TitleDockable();
    td.setText("thjkl");
    chart1.getTitles().add(td);

	chart1.create(document.getElementById('MainChartDiv'))
}
	function doClick(evt) {
		//alert("doclick");
		alert(evt);
	    var iPoint = 0;
	    var iSeries = 0;
	    
	   alert("evt.hitType--------"+evt.hitType);
	   alert("cfx.HitType.Point--------"+cfx.HitType.Point);
	    
	    if (evt.hitType == cfx.HitType.Point) {
	    	
	    alert("evt.point-------------->"+evt.point);
	    
	    iPoint = evt.point;
	        
	       alert("main view--------------->"+iPoint);
	        var rev;
	        var cltv;
	        if(iPoint==0)
	        	{
	        	cltv="Low";
	        	rev="Low";
	        	}
	        if(iPoint==1)
        	{
        	cltv="Medium";
        	rev="Low";
        	}
	        if(iPoint==2)
        	{
        	cltv="High";
        	rev="Low";
        	}
	      
	        if(iPoint==3)
        	{
        	cltv="Low";
        	rev="Medium";
        	}
	        if(iPoint==4)
        	{
        	cltv="Medium";
        	rev="Medium";
        	}
	        if(iPoint==5)
        	{
        	cltv="High";
        	rev="Medium";
        	}
	        if(iPoint==6)
        	{
        	cltv="Low";
        	rev="High";
        	}
	        if(iPoint==7)
        	{
        	cltv="Medium";
        	rev="High";
        	}
	        if(iPoint==8)
        	{
        	cltv="High";
        	rev="High";
        	}
	       //  var point_data=data1[iPoint].Week_num;
	         
	
	       
	       alert(rev);
	       alert(cltv);
	         //alert($(".jchartfx .Attribute0").css("stroke"));
	       //location="cltv_drill.jsp?week="+point_data+"&product_type="+iSeries
	     //location="drill_trend.jsp?week_num="+point_data+"&product_type="+iSeries+"&&week_name="+point_name+"&&color_code="+color_code;
	       
	      $("#DetailChartDiv1" ).load("cltv_drill.jsp?cltv="+cltv+"&&rev="+rev);
	
	      //alert("into");  
	     
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
        fill: #FF0000;
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
        fill: #FFBF00;
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
        fill: #2A0A0A;
        stroke: #2A0A0A;
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
        fill: #81DAF5;
        stroke: #81DAF5;
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
        fill: #2ECCFA;
        stroke: #2ECCFA;
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
        fill: #585858;
        stroke: #585858;
        stroke-width: 1;
}

.jchartfx .Attribute6Line {
        stroke: #096FA0;
        stroke-width: 3;
}

.jchartfx .Attribute6Alt {
        fill: #0DB7FF;
}
.jchartfx .Attribute7 {
        fill: #2A120A;
        stroke: #2A120A;
        stroke-width: 1;
}

.jchartfx .Attribute7Line {
        stroke: #096FA0;
        stroke-width: 3;
}

.jchartfx .Attribute7Alt {
        fill: #0DB7FF;
}
.jchartfx .Attribute8 {
        fill: #610B5E;
        stroke: #610B5E;
        stroke-width: 1;
}

.jchartfx .Attribute8Line {
        stroke: #096FA0;
        stroke-width: 3;
}

.jchartfx .Attribute8Alt {
        fill: #0DB7FF;
}
.jchartfx .Attribute9 {
        fill: #40FF00;
        stroke: #40FF00;
        stroke-width: 1;
}

.jchartfx .Attribute9Line {
        stroke: #096FA0;
        stroke-width: 3;
}

.jchartfx .Attribute9Alt {
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

  <div id="MainChartDiv" style="width:700px;height:500px;display:inline-block;">


  
                   </div>
                   <div id="DetailChartDiv1" style="width:550px;height:400px;display:inline-block">
             </div>
         
</body>
</html>


