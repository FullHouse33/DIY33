<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Graph2</title>
		<meta name="description" content="chart created using amCharts live editor" />
		
		<!-- amCharts javascript sources -->
		<script src="https://www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>
		<script src="https://www.amcharts.com/lib/3/radar.js" type="text/javascript"></script>
		
		<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "radar",
					"categoryField": "country",
					"startDuration": 2,
					"graphs": [
						{
							
							"bullet": "round",
							"id": "AmGraph-1",
							"valueField": "IKEA"
						},
						{
							"bullet": "round",
							"id": "AmGraph-2",
							"title": "graph 2",
							"valueField": "Casamia"
						},
						{
							"bullet": "round",
							"id": "AmGraph-3",
							"title": "graph 3",
							"valueField": "Hanssem"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"axisTitleOffset": 20,
							"gridType": "circles",
							"id": "ValueAxis-1",
							"minimum": 0,
							"axisAlpha": 0.15,
							"dashLength": 3
						}
					],
					"allLabels": [],
					"balloon": {},
					"titles": [],
					"dataProvider": [
						{
							"country": "Table",
							"IKEA": '${ikea.get(0)}',
							"Casamia": '${casamia.get(0)}',
							"Hanssem": '${Hanssem.get(0)}'
						},
						{
							"country": "Chair",
							"IKEA": '${ikea.get(1)}',
							"Casamia": '${casamia.get(1)}',
							"Hanssem": '${Hanssem.get(1)}'
						},
						{
							"country": "Closet",
							"IKEA": '${ikea.get(2)}',
							"Casamia": '${casamia.get(2)}',
							"Hanssem": '${Hanssem.get(2)}'
						},
						{
							"country": "Bed",
							"IKEA": '${ikea.get(3)}',
							"Casamia": '${casamia.get(3)}',
							"Hanssem": '${Hanssem.get(3)}'
						},
						{
							"country": "Sofa",
							"IKEA": '${ikea.get(4)}',
							"Casamia": '${casamia.get(4)}',
							"Hanssem": '${Hanssem.get(4)}'
						},
						{
							"country": "Others",
							"IKEA": '${ikea.get(5)}',
							"Casamia": '${casamia.get(5)}',
							"Hanssem": '${Hanssem.get(5)}'
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