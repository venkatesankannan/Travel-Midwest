
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
<script type="text/javascript" language="javascript">
    var chart1;
    var chart2;
    
    function loadChart()
      {        
        
           chart1 = new cfx.Chart();

           var items = [{ "GDP": 14991300, "Country": "United States" }, { "GDP": 7203784, "Country": "China" }, { "GDP": 5870357, "Country": "Japan" }, { "GDP": 3604061, "Country": "Germany" }, { "GDP": 2775518, "Country": "France" }, { "GDP": 2476651, "Country": "Brazil" }, { "GDP": 2429184, "Country": "United Kingdom" }, { "GDP": 2195937, "Country": "Italy" }];
           var fields = chart1.getDataSourceSettings().getFields();
           var field1 = new cfx.FieldMap();
           field1.setName("Country");
           field1.setUsage(cfx.FieldUsage.Label);
           fields.add(field1);
           var field2 = new cfx.FieldMap();
           field2.setName("GDP");
           field2.setUsage(cfx.FieldUsage.Value);
           fields.add(field2);
           chart1.setDataSource(items);
           var treeMap = new cfx.treemap.TreeMap();
           chart1.setGalleryAttributes(treeMap);

           var title = new cfx.TitleDockable();
           title.setText("Top 8 GDP per Country");
           chart1.getTitles().add(title);

           title = new cfx.TitleDockable();
           title.setText("According to the UN (2011)");
           title.setDock(cfx.DockArea.Bottom);
           chart1.getTitles().add(title);
           chart1.create('div_obj'); 
      }
</script>
</head>
<body onload="loadChart()">
<div id="div_obj" style='width:750px;height:360px;'></div>

</body>
</html>