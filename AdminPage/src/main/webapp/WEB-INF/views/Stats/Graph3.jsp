<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Graph3</title>
		<meta name="description" content="chart created using amCharts live editor" />

		<!-- amCharts custom font -->
		<link href='https://fonts.googleapis.com/css?family=Covered+By+Your+Grace' rel='stylesheet' type='text/css'>
		
		<!-- amCharts javascript sources -->
		<script src="https://www.amcharts.com/lib/3/amcharts.js" type="text/javascript"></script>
		<script src="https://www.amcharts.com/lib/3/serial.js" type="text/javascript"></script>
		<script src="https://www.amcharts.com/lib/3/themes/chalk.js" type="text/javascript"></script>
		
		<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"categoryField": "category",
					"rotate": true,
					"angle": 30,
					"depth3D": 30,
					"startDuration": 1,
					"handDrawThickness": 0,
					"theme": "chalk",
					"categoryAxis": {
						"gridPosition": "start"
					},
					"trendLines": [],
					"graphs": [
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-1",
							"title": "IKEA",
							"type": "column",
							"valueField": "IKEA"
						},
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-2",
							"title": "Casamia",
							"type": "column",
							"valueField": "Casamia"
						},
						{
							"fillAlphas": 1,
							"id": "AmGraph-3",
							"precision": 1,
							"title": "Hanssem",
							"type": "column",
							"valueField": "Hanssem"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"stackType": "100%",
							"title": ""
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
							"category": "Table",
							"IKEA": '${ikea.get(0)}',
							"Casamia": '${casamia.get(0)}',
							"Hanssem": '${Hanssem.get(0)}'
						},
						{
							"category": "Chair",
							"IKEA": '${ikea.get(1)}',
							"Casamia": '${casamia.get(1)}',
							"Hanssem": '${Hanssem.get(1)}'
						},
						{
							"category": "Closet",
							"IKEA": '${ikea.get(2)}',
							"Casamia": '${casamia.get(2)}',
							"Hanssem": '${Hanssem.get(2)}'
						},
						{
							"category": "Bed",
							"IKEA": '${ikea.get(3)}',
							"Casamia": '${casamia.get(3)}',
							"Hanssem": '${Hanssem.get(3)}'
						},
						{
							"category": "Sofa",
							"IKEA": '${ikea.get(4)}',
							"Casamia": '${casamia.get(4)}',
							"Hanssem": '${Hanssem.get(4)}'
						},
						{
							"category": "Others",
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
		<div id="chartdiv" style="width: 100%; height: 400px; background-color: #282828;" ></div>
	</body>
</html>