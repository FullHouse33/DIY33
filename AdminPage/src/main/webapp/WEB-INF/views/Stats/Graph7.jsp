<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Graph7</title>
		<meta name="description" content="chart created using amCharts live editor" />
		
		<!-- amCharts javascript sources -->
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
		
		<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"categoryField": "category",
					"angle": 30,
					"depth3D": 30,
					"startDuration": 1,
					"categoryAxis": {
						"gridPosition": "start"
					},
					"trendLines": [],
					"graphs": [
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-1",
							"title": "graph 1",
							"type": "column",
							"valueField": "column-1"
						},
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-2",
							"title": "graph 2",
							"type": "column",
							"valueField": "column-2"
						},
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-3",
							"title": "graph 3",
							"type": "column",
							"valueField": "column-3"
						},
						{
							"id": "AmGraph-4",
							"title": "graph 4",
							"valueField": "category"
						}
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"stackType": "3d",
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
							"category": "1",
							"column-1": ' ${ja3.get(0)}',
							"column-2":  ' ${ja3.get(1)}',
							"column-3": ' ${ja3.get(2)}'
						},
						{
							"category": "2",
							"column-1": ' ${fe3.get(0)}',
							"column-2":  ' ${fe3.get(1)}',
							"column-3": ' ${fe3.get(2)}'
						},
						{
							"category": "3",
							"column-1": ' ${ma3.get(0)}',
							"column-2":  ' ${ma3.get(1)}',
							"column-3": ' ${ma3.get(2)}'
						},
						{
							"category": "4",
							"column-1": ' ${ap3.get(0)}',
							"column-2":  ' ${ap3.get(1)}',
							"column-3": ' ${ap3.get(2)}'
						},
						{
							"category": "5",
							"column-1": ' ${may3.get(0)}',
							"column-2":  ' ${may3.get(1)}',
							"column-3": ' ${may3.get(2)}'
						},
						{
							"category": "6",
							"column-1": ' ${jun3.get(0)}',
							"column-2":  ' ${jun3.get(1)}',
							"column-3": ' ${jun3.get(2)}'
						},
						{
							"category": "7",
							"column-1": ' ${july3.get(0)}',
							"column-2":  ' ${july3.get(1)}',
							"column-3": ' ${july3.get(2)}'
						},
						{
							"category": "8",
							"column-1": ' ${au3.get(0)}',
							"column-2":  ' ${au3.get(1)}',
							"column-3": ' ${au3.get(2)}'
						},
						{
							"category": "9",
							"column-1": ' ${se3.get(0)}',
							"column-2":  ' ${se3.get(1)}',
							"column-3": ' ${se3.get(2)}'
						},
						{
							"category": "10",
							"column-1": ' ${op3.get(0)}',
							"column-2":  ' ${op3.get(1)}',
							"column-3": ' ${op3.get(2)}'
						},
						{
							"category": "11",
							"column-1": ' ${no3.get(0)}',
							"column-2":  ' ${no3.get(1)}',
							"column-3": ' ${no3.get(2)}'
						},
						{
							"category": "12",
							"column-1": ' ${de3.get(0)}',
							"column-2":  ' ${de3.get(1)}',
							"column-3": ' ${de3.get(2)}'
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