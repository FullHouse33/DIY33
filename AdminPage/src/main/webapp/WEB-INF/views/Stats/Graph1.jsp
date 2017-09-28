<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Graph1</title>
      <meta name="description" content="chart created using amCharts live editor" />
      
      <!-- amCharts javascript sources -->
      <script src="https://www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>
      <script src="https://www.amcharts.com/lib/3/serial.js" type="text/javascript"></script>
      <script src="https://www.amcharts.com/lib/3/themes/light.js" type="text/javascript"></script>

      <!-- amCharts javascript code -->
      <script type="text/javascript">
         AmCharts.makeChart("chartdiv",
            {
               "type": "serial",
               "categoryField": "date",
               "dataDateFormat": "YYYY",
               "theme": "chalk",
               "categoryAxis": {
                  "minPeriod": "YYYY",
                  "parseDates": true
               },
               "chartCursor": {
                  "enabled": true,
                  "animationDuration": 0,
                  "categoryBalloonDateFormat": "YYYY"
               },
               "chartScrollbar": {
                  "enabled": true
               },
               "trendLines": [],
               "graphs": [
                  {
                     "bullet": "round",
                     "id": "AmGraph-1",
                     "title": "Ikea",
                     "valueField": "Ikea"
                  },
                  {
                     "bullet": "square",
                     "id": "AmGraph-2",
                     "title": "Casamia",
                     "valueField": "Casamia"
                  },
                  {
                	 
                	  "id": "AmGraph-3",
                     "title": "Hanssem",
                     "valueField": "Hanssem"
                  },
                  
               ],
               "guides": [],
               "valueAxes": [
                  {
                     "id": "ValueAxis-1",
                     "title": "Axis title"
                  }
               ],
               "allLabels": [],
               "balloon": {},
               "legend": {
                  "enabled": true,
                  "useGraphSettings": true
               },
               "titles": [
                  {
                     "id": "Title-1",
                     "size": 15,
                     "text": "Chart Title"
                  }
               ],
               "dataProvider": [
                  {
                     "date": "2012",
                     "Ikea": "${test1.get(2)}",
                     "Casamia": "${test1.get(0)}",
                     "Hanssem": "${test1.get(1)}"
                  },
                  {
                     "date": "2013",
                     "Ikea": "${test2.get(2)}",
                     "Casamia": "${test2.get(0)}",
                     "Hanssem":" ${test2.get(1)}"
                  },
                  {
                     "date": "2014",
                     "Ikea": "${test3.get(2)}",
                     "Casamia": "${test3.get(0)}",
                     "Hanssem": "${test3.get(1)}"
                  },
                  {
                     "date": "2015",
                     "Ikea": "${test4.get(2)}",
                     "Casamia": "${test4.get(0)}",
                     "Hanssem": "${test4.get(1)}"
                  },
                  {
                     "date": "2016",
                     "Ikea": "${test5.get(2)}",
                     "Casamia": "${test5.get(0)}",
                     "Hanssem": "${test5.get(1)}"
                  }
               ]
            }
         );
      </script>
   </head>
   <body>
      <div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
   </body>
</html>