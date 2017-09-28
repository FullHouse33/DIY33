<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Graph6</title>
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
							"column-1": ' ${ja2.get(0)}',
							"column-2":  ' ${ja2.get(1)}',
							"column-3": ' ${ja2.get(2)}'
						},
						{
							"category": "2",
							"column-1": ' ${fe2.get(0)}',
							"column-2":  ' ${fe2.get(1)}',
							"column-3": ' ${fe2.get(2)}'
						},
						{
							"category": "3",
							"column-1": ' ${ma2.get(0)}',
							"column-2":  ' ${ma2.get(1)}',
							"column-3": ' ${ma2.get(2)}'
						},
						{
							"category": "4",
							"column-1": ' ${ap2.get(0)}',
							"column-2":  ' ${ap2.get(1)}',
							"column-3": ' ${ap2.get(2)}'
						},
						{
							"category": "5",
							"column-1": ' ${may2.get(0)}',
							"column-2":  ' ${may2.get(1)}',
							"column-3": ' ${may2.get(2)}'
						},
						{
							"category": "6",
							"column-1": ' ${jun2.get(0)}',
							"column-2":  ' ${jun2.get(1)}',
							"column-3": ' ${jun2.get(2)}'
						},
						{
							"category": "7",
							"column-1": ' ${july2.get(0)}',
							"column-2":  ' ${july2.get(1)}',
							"column-3": ' ${july2.get(2)}'
						},
						{
							"category": "8",
							"column-1": ' ${au2.get(0)}',
							"column-2":  ' ${au2.get(1)}',
							"column-3": ' ${au2.get(2)}'
						},
						{
							"category": "9",
							"column-1": ' ${se2.get(0)}',
							"column-2":  ' ${se2.get(1)}',
							"column-3": ' ${se2.get(2)}'
						},
						{
							"category": "10",
							"column-1": ' ${op2.get(0)}',
							"column-2":  ' ${op2.get(1)}',
							"column-3": ' ${op2.get(2)}'
						},
						{
							"category": "11",
							"column-1": ' ${no2.get(0)}',
							"column-2":  ' ${no2.get(1)}',
							"column-3": ' ${no2.get(2)}'
						},
						{
							"category": "12",
							"column-1": ' ${de2.get(0)}',
							"column-2":  ' ${de2.get(1)}',
							"column-3": ' ${de2.get(2)}'
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