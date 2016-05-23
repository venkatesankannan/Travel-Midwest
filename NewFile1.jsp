<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* " %>
      <%@ page import="java.util.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
 
   <%String expressway = request.getParameter("expy");
    System.out.println(expressway);
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
        				String myQuery = "SELECT * FROM \"congestionData\" where expressway='I-88'";
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
				
    	if(congestionLevel.get(i).equals("LIGHT_CONGESTION"))
		{System.out.println("into");
			//value.add(lc);
			//lc=lc+5;
			//System.out.println(value.get(i));
			
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
	
   <script type="text/javascript" src="./js/jchartfx.system.js"></script>
<script type="text/javascript" src="./js/jchartfx.coreBasic.js"></script> 
 <script type="text/javascript" src="./js/jchartfx.advanced.js"></script>
 
<script type="text/javascript" src="./js/jchartfx.animation.js"></script> 
<script type="text/javascript" src="./js/jchartfx.annotation.js"></script> 

<script type="text/javascript" src="./js/jchartfx.data.js"></script> 


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
	fill: #2AB4EB;
	stroke: #4281A4;
	stroke-width: 1;
}
.jchartfx .AxisY0_Section0 {
    fill: #F8BAB7;
    stroke-width: 0;
}

.jchartfx .AxisY0_Section1 {
    fill: #F9F8B6;
    stroke-width: 0;
}

.jchartfx .AxisY0_Section2 {
    fill: #B1EEAD;
    stroke-width: 0;
}
</style>
<body>
<div id="ChartDiv" style="width:1000px;height:400px;">
<script type="text/javascript" language="javascript">
    var chart1;
    $(document).ready(function(){
           
        //alert("into load");
           chart1 = new cfx.Chart();
            //chart1.getData().setSeries(2);
            chart1.getAxisY().setMin(0);
            chart1.getAxisY().setMax(50);
          
            var titles = chart1.getTitles();
            var title = new cfx.TitleDockable();
            title.setText("Typical Travel Times");
            titles.add(title);   
            chart1.getAnimations().getLoad().setEnabled(true);
          
            var axis1 = chart1.getAxisX();
          

            var axis3 = chart1.getAxisY();
            var section;
            section = new cfx.AxisSection();
            chart1.getAxisY().getSections().add(section);
            section.setBackColor("#F8BAB7");
            section.setFrom(38);
            section.setTo(50);
            section.getGrids().getMajor().setVisible(false);
            section.getGrids().getMinor().setVisible(false);
            section.getGrids().getMinor().setTickMark(cfx.TickMark.None);
            section.getGrids().getMajor().setTickMark(cfx.TickMark.None);
            section.setTextColor("#FA1F02");
            section.setText("High Congestion");
            section = new cfx.AxisSection();
            chart1.getAxisY().getSections().add(section);
            section.setBackColor("#F9F8B6");
            section.setFrom(20);
            section.setTo(38);
            section.getGrids().getMajor().setVisible(false);
            section.getGrids().getMinor().setVisible(false);
            section.getGrids().getMinor().setTickMark(cfx.TickMark.None);
            section.getGrids().getMajor().setTickMark(cfx.TickMark.None);
            section.setTextColor("#FF0000");
            section.setText("Medium Congestion");
            section = new cfx.AxisSection();
            chart1.getAxisY().getSections().add(section);
            section.setBackColor("#B1EEAD");
            section.setFrom(0);
            section.setTo(20);
            section.getGrids().getMajor().setVisible(false);
            section.getGrids().getMinor().setVisible(false);
            section.getGrids().getMinor().setTickMark(cfx.TickMark.None);
            section.getGrids().getMajor().setTickMark(cfx.TickMark.None);
            section.setTextColor("#1E520A");
            section.setText("Light Congestion");
            alert("into load");
            axis1.getTitle().setText('Destination');
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
				
					
				System.out.println(to.get(i)+"*"+congestionLevel.get(i));
				//if(traveltime.get(i)!=0){
				%>
				
				 var item = new Object();
                item["Destination"] = "<%=to.get(i)%>";
               <% if(congestionLevel.get(i).equals("LIGHT_CONGESTION")){%>
                item["Congestion Level"] = 38;
               <%}else if(congestionLevel.get(i).equals("MEDIUM_CONGESTION")){%>
            	   item["Congestion Level"] = 46;<%%>
            	   <%}else if(congestionLevel.get(i).equals("NON_CONGESTION")){%>
            	   item["Congestion Level"] = 20;<%%>
            	   <%}else if(congestionLevel.get(i).equals("UNKNOWN_CONGESTION_LEVEL")){%>
            	   item["Congestion Level"] = 1;<%}%>
			          data.push(item);
                //chart1.setDataSource(items);
            <%}%>
           
            chart1.setDataSource(data);
            //alert("into load");
      });
</script></div>


</body>
</html>

