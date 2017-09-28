<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <script src="resources/js/jquery-3.2.1.js"></script> -->
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" -->
<!-- 	content="width=device-width, initial-scale=1, maximum-scale=1"> -->
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0">
<!-- SITE META -->
<title>HomeStyle | Responsive Furniture Website Template</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">

<!-- FAVICONS -->
<link rel="shortcut icon" href="/admin/resources/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="/admin/resources/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="/admin/resources/images/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/admin/resources/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/admin/resources/images/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/admin/resources/images/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/admin/resources/images/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/admin/resources/images/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/admin/resources/images/apple-touch-icon-152x152.png">

<!-- BOOTSTRAP STYLES -->
<link rel="stylesheet" type="text/css"
	href="/admin/resources/css/bootstrap.css">
<!-- TEMPLATE STYLES -->
<link rel="stylesheet" type="text/css" href="/admin/resources/style.css">
<!-- RESPONSIVE STYLES -->
<link rel="stylesheet" type="text/css"
	href="/admin/resources/css/responsive.css">
<!-- CUSTOM STYLES -->
<link rel="stylesheet" type="text/css"
	href="/admin/resources/css/custom.css">
<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Lato|Quicksand'>
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style>
canvas {
	width: 1536px;
	height: 699px;
	position: absolute;
	top: 60px;
	bottom: 0px;
	left: 0px;
	right: 0px;
	margin: 0px;
}
/* 세로툴박스 CSS */
#cssmenuVertic {
	padding: 0;
	margin: 0;
	border: 0;
	width: auto;
	position: absolute;
	top: 280px;
	/* 	left: 550px; */
}

#cssmenuVertic ul, #cssmenuVertic ul li, #cssmenuVertic ul ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

#cssmenuVertic ul {
	position: relative;
	z-index: 597;
	float: left;
}

#cssmenuVertic ul li {
	float: left;
	min-height: 1px;
	line-height: 1em;
	vertical-align: middle;
}

#cssmenuVertic ul li.hover, #cssmenuVertic ul li:hover {
	/* 	position: relative; */
	z-index: 599;
	cursor: default;
}

#cssmenuVertic ul ul {
	visibility: hidden;
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 598;
	width: 100%;
}

#cssmenuVertic ul ul li {
	float: none;
}

#cssmenuVertic ul ul ul {
	top: 1px;
	left: 99%;
}

#cssmenuVertic ul li:hover>ul {
	visibility: visible;
}

#cssmenuVertic ul ul {
	top: 1px;
	left: 99%;
}

#cssmenuVertic ul li {
	float: none;
}

#cssmenuVertic ul ul {
	margin-top: 1px;
}

#cssmenuVertic ul ul li {
	font-weight: normal;
}
/* Custom CSS Styles */
#cssmenuVertic:after, #cssmenuVertic ul:after {
	content: '';
	display: block;
	clear: both;
}

#cssmenuVertic>ul>li>a {
	color: #333333;
}

#cssmenuVertic ul ul a {
	color: #333333;
}

#cssmenuVertic a {
	display: inline-block;
	font-family: "Lucida Grande", "Lucida Sans Unicode", Helvetica, Arial,
		Verdana, sans-serif;
	font-size: 12px;
	padding: 0 15px;
	text-align: center;
	text-decoration: none;
}

#cssmenuVertic a:hover {
	background: #f6f6f6;
	border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	position: relative;
	top: 0;
}

#cssmenuVertic ul {
	background: #e5e5e5;
	border-radius: 5px 5px 0 0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	list-style: none;
}

#cssmenuVertic>ul {
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAoCAIAAACw1AcgAAAAA3NCSVQICAjb4U/gAAAAHUlEQVQImWN4+vQpEwMDAxMDAwPT////4exBIgYA2loa5nAttNYAAAAASUVORK5CYII=)
		100% 100%;
	background: -moz-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e5e5e5),
		color-stop(100%, #dddddd));
	background: -webkit-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -o-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -ms-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: linear-gradient(#e5e5e5 0%, #dddddd 100%);
	box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	padding-top: 5px;
	width: 100%;
}

#cssmenuVertic>ul>li {
	float: none;
	padding: 5px;
	position: relative;
}

#cssmenuVertic>ul>li:hover>a {
	background: #f6f6f6;
	border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	position: relative;
	color: #89bbc4;
}

#cssmenuVertic>ul>li a {
	line-height: 35px;
	width: 100%;
}

#cssmenuVertic>ul>li a:hover {
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

#cssmenuVertic .has-sub:hover ul {
	display: block;
}

#cssmenuVertic .has-sub a {
	display: block;
	position: relative;
}

#cssmenuVertic .has-sub>a:after {
	content: '';
	display: block;
	width: 10px;
	height: 9px;
	position: absolute;
	right: 5px;
	top: 50%;
	margin-top: -5px;
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjRCQjdBNUNENDkzMTExRTI4NENBRkFDOUM5MUY0QzI2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjRCQjdBNUNFNDkzMTExRTI4NENBRkFDOUM5MUY0QzI2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NEJCN0E1Q0I0OTMxMTFFMjg0Q0FGQUM5QzkxRjRDMjYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NEJCN0E1Q0M0OTMxMTFFMjg0Q0FGQUM5QzkxRjRDMjYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4qSqkdAAAAtUlEQVR42nyOPQ6DMAyF3bSIKXeplGP0IL1EpU5dkZiQeoDegBt0ZO4BOjORABL5oX4RZCniDZbl99nPh6ZpjkR0pn19TlxclmW7lHOOANZSykue55uQtZbatiXBfdV1Hc3zvAnCY12FUqrm02Xf93/QOI40TdOLmadYZoUxhkIICUKC1hpthRJB3viy8ViMKCR470v23glcdB+GIT7PACEBSauZQN70eBrP4zIn3JC0+j8BBgCxDV02ZQEC4wAAAABJRU5ErkJggg==);
	-webkit-transform: rotate(270deg);
}

#cssmenuVertic .has-sub ul {
	background: #f6f6f6;
	border: 1px solid #dddddd;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	display: none;
	padding: 10px 0;
	position: absolute;
	left: 100%;
	/* 	top: 34px; */
	/* 	margin-left: -70px; */
	width: 140px;
	z-index: 1;
}

#cssmenuVertic .has-sub ul li:hover>a {
	background: #dddddd;
	color: #89bbc4;
	border-color: #e5e5e5 transparent transparent transparent;
}

#cssmenuVertic .has-sub ul a {
	line-height: 160%;
	padding: 8px 0;
}

#cssmenuVertic .has-sub .has-sub a:after {
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjgwRkJGQzk4NDkzMTExRTI4M0U0QzE5NjJFN0U3RjNFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjgwRkJGQzk5NDkzMTExRTI4M0U0QzE5NjJFN0U3RjNFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6ODBGQkZDOTY0OTMxMTFFMjgzRTRDMTk2MkU3RTdGM0UiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6ODBGQkZDOTc0OTMxMTFFMjgzRTRDMTk2MkU3RTdGM0UiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6DuTwoAAAAtUlEQVR42nyOsQ3CMBBFj4CVyktkAvZgEJZAoqKNoMoEjMAGzEDnhtKyGztxYzvmznIsIUX5kq2T/rv7fyeE2APAEbb1OeAXGGObVAgBCHxxzk9t265C3ntQSkGD82CMgZTSKkge6pwB7HmXUibn3N/TWif0nsQ0ZbEfxxHmea6XyLTW0jjQl8Gu675o3IqRNU0TxBgf6L0rWHTFuFweAaAESlrMCuJmpNJUni5jwoWSFv8nwAA0tXChxwneNwAAAABJRU5ErkJggg==);
	-webkit-transform: rotate(270deg);
}

#cssmenuVertic .has-sub .has-sub ul {
	background: #dddddd;
	left: 100%;
	top: 0;
	margin-left: 0;
}

#cssmenuVertic .has-sub .has-sub ul a {
	background: none;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	border-radius: 0;
	-moz-border-radius: 0;
	-webkit-border-radius: 0;
}

#cssmenuVertic .has-sub .has-sub ul a:after {
	background-image: none;
}

#cssmenuVertic .has-sub .has-sub ul a:hover {
	background: #bfbfbf;
}

/* 	세로툴박스 */
#cssmenu {
	padding: 0;
	margin: 0;
	border: 0;
	width: auto;
	position: absolute;
	left: 467.931px;
	top: 60px;
}

#cssmenu ul, #cssmenu ul li, #cssmenu ul ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

#cssmenu ul {
	position: relative;
	z-index: 597;
	float: left;
}

#cssmenu ul li {
	float: left;
	min-height: 1px;
	line-height: 1em;
	vertical-align: middle;
}

#cssmenu ul li.hover, #cssmenu ul li:hover {
	/* 	position: relative; */
	z-index: 599;
	cursor: default;
}

#cssmenu ul ul {
	visibility: hidden;
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 598;
	width: 100%;
}

#cssmenu ul ul li {
	float: none;
}

#cssmenu ul ul ul {
	top: 1px;
	left: 99%;
}

#cssmenu ul li:hover>ul {
	visibility: visible;
}

#cssmenu ul ul {
	top: 1px;
	left: 99%;
}

#cssmenu ul li {
	float: none;
}

#cssmenu ul ul {
	margin-top: 1px;
}

#cssmenu ul ul li {
	font-weight: normal;
}
/* Custom CSS Styles */
#cssmenu:after, #cssmenu ul:after {
	content: '';
	display: block;
	clear: both;
}

#cssmenu>ul>li>a {
	color: #333333;
}

#cssmenu ul ul a {
	color: #333333;
}

#cssmenu a {
	display: inline-block;
	font-family: "Lucida Grande", "Lucida Sans Unicode", Helvetica, Arial,
		Verdana, sans-serif;
	font-size: 12px;
	padding: 0 15px;
	text-align: center;
	text-decoration: none;
}

#cssmenu a:hover {
	background: #f6f6f6;
	border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	position: relative;
	top: 0;
}

#cssmenu ul {
	background: #e5e5e5;
	border-radius: 5px 5px 0 0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	list-style: none;
}

#cssmenu>ul {
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAoCAIAAACw1AcgAAAAA3NCSVQICAjb4U/gAAAAHUlEQVQImWN4+vQpEwMDAxMDAwPT////4exBIgYA2loa5nAttNYAAAAASUVORK5CYII=)
		100% 100%;
	background: -moz-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e5e5e5),
		color-stop(100%, #dddddd));
	background: -webkit-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -o-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: -ms-linear-gradient(top, #e5e5e5 0%, #dddddd 100%);
	background: linear-gradient(#e5e5e5 0%, #dddddd 100%);
	box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.3);
	padding-top: 5px;
	width: 100%;
}

#cssmenu>ul>li {
	float: left;
	padding: 0 5px;
	position: relative;
}

#cssmenu>ul>li:hover>a {
	background: #f6f6f6;
	border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	-webkit-border-radius: 4px 4px 0 0;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	position: relative;
	color: #89bbc4;
}

#cssmenu>ul>li a {
	line-height: 35px;
}

#cssmenu>ul>li a:hover {
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
}

#cssmenu .has-sub:hover ul {
	display: block;
}

#cssmenu .has-sub a {
	display: block;
	position: relative;
}

#cssmenu .has-sub>a:after {
	content: '';
	display: block;
	width: 10px;
	height: 9px;
	position: absolute;
	right: 5px;
	top: 50%;
	margin-top: -5px;
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjRCQjdBNUNENDkzMTExRTI4NENBRkFDOUM5MUY0QzI2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjRCQjdBNUNFNDkzMTExRTI4NENBRkFDOUM5MUY0QzI2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NEJCN0E1Q0I0OTMxMTFFMjg0Q0FGQUM5QzkxRjRDMjYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NEJCN0E1Q0M0OTMxMTFFMjg0Q0FGQUM5QzkxRjRDMjYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4qSqkdAAAAtUlEQVR42nyOPQ6DMAyF3bSIKXeplGP0IL1EpU5dkZiQeoDegBt0ZO4BOjORABL5oX4RZCniDZbl99nPh6ZpjkR0pn19TlxclmW7lHOOANZSykue55uQtZbatiXBfdV1Hc3zvAnCY12FUqrm02Xf93/QOI40TdOLmadYZoUxhkIICUKC1hpthRJB3viy8ViMKCR470v23glcdB+GIT7PACEBSauZQN70eBrP4zIn3JC0+j8BBgCxDV02ZQEC4wAAAABJRU5ErkJggg==);
	-webkit-transform: rotate(360deg);
}

#cssmenu .has-sub ul {
	background: #f6f6f6;
	border: 1px solid #dddddd;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	display: none;
	padding: 10px 0;
	position: absolute;
	left: 50%;
	top: 34px;
	margin-left: -70px;
	width: 140px;
	z-index: 1;
}

#cssmenu .has-sub ul li:hover>a {
	background: #dddddd;
	color: #89bbc4;
	border-color: #e5e5e5 transparent transparent transparent;
}

#cssmenu .has-sub ul a {
	line-height: 160%;
	padding: 8px 0;
}

#cssmenu .has-sub .has-sub a:after {
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjgwRkJGQzk4NDkzMTExRTI4M0U0QzE5NjJFN0U3RjNFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjgwRkJGQzk5NDkzMTExRTI4M0U0QzE5NjJFN0U3RjNFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6ODBGQkZDOTY0OTMxMTFFMjgzRTRDMTk2MkU3RTdGM0UiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6ODBGQkZDOTc0OTMxMTFFMjgzRTRDMTk2MkU3RTdGM0UiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6DuTwoAAAAtUlEQVR42nyOsQ3CMBBFj4CVyktkAvZgEJZAoqKNoMoEjMAGzEDnhtKyGztxYzvmznIsIUX5kq2T/rv7fyeE2APAEbb1OeAXGGObVAgBCHxxzk9t265C3ntQSkGD82CMgZTSKkge6pwB7HmXUibn3N/TWif0nsQ0ZbEfxxHmea6XyLTW0jjQl8Gu675o3IqRNU0TxBgf6L0rWHTFuFweAaAESlrMCuJmpNJUni5jwoWSFv8nwAA0tXChxwneNwAAAABJRU5ErkJggg==);
	-webkit-transform: rotate(270deg);
}

#cssmenu .has-sub .has-sub ul {
	background: #dddddd;
	left: 100%;
	top: 0;
	margin-left: 0;
}

#cssmenu .has-sub .has-sub ul a {
	background: none;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	border-radius: 0;
	-moz-border-radius: 0;
	-webkit-border-radius: 0;
}

#cssmenu .has-sub .has-sub ul a:after {
	background-image: none;
}

#cssmenu .has-sub .has-sub ul a:hover {
	background: #bfbfbf;
}

 .thumbnail{
      /* background-color:gray; */
      margin:10px;
      width:150px;
      height:150px;
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
    }
    .thumbnail.round{
      border-radius: 10%;
    }
    .thumbnail.circle{
      border-radius: 100%;
    }

</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>

<script>

</script>
</head>
<body style="overflow: visible;">
	<script src="/admin/resources/examples/js/three.js"></script>
	<script src="/admin/resources/examples/js/OrbitControls.js"></script>
	<script src="/admin/resources/examples/js/Detector.js"></script>
	<script src="/admin/resources/examples/js/dat.gui.min.js"></script>
	<script src="/admin/resources/examples/js/ui.js"></script>
	<script src="/admin/resources/examples/js/SceneLoader.js"></script>
	<script src="/admin/resources/examples/js/SceneExporter.js"></script>
	<script src="/admin/resources/examples/js/DDSLoader.js"></script>
	<script src="/admin/resources/examples/js/MTLLoader.js"></script>
	<script src="/admin/resources/examples/js/OBJLoader.js"></script>
	<script src="/admin/resources/examples/js/ThreeBSP.js"></script>
	<script>

			if ( !Detector.webgl ) Detector.addGetWebGLMessage();

			var container;
			var camera, scene, controls, renderer;
			var plane, cube, frame;
			var mouse, raycaster, isShiftDown = false;
            
			var rollOverMesh, rollOverMaterial;
			var rollOverMeshp, rollOverMeshp2,rollOverMaterialp, rollOverGeop; 
            var rollOverWall, rollOverWallGeo;
			var cubeGeo, cubeMaterial;
        
			//sj var
            //바닥
            var floor;
            var voxel, voxel2, voxel3, voxel4;
            //벽 텍스쳐
            var wallMaterials;
            // 0 Default, 1 rightSide, 2 backSide, 3 leftSide
            var wallState = 0;
            var x;
           
			var menuTool;
			var state = 0;
			var rollOverState = 0;
			/* var box1, box2; */
			var rotateState = 0;

			var objects = [];
            //redo . undo
            var currState = 0;
            var objMng = [];
            var redo = [];
            var sceneSave = [];
            var stateEdit  = 0;
            var cntUndo = 0;
            // 가구 관련 variable
            var furniture;
            var furnitureObj;
            var furnToBox;
            var rollOverFurniture;
            var rollOverGeof;
            var furniState = 0;
            var objLoader;
            var mtlLoader;
            var furnitureMat;
            //tmp
            var tmpSphere;
           
            //그리드 헬퍼
            var gridHelper;
            // 선택 
            var selectObjName;
            var selectObj;
            var wallTexture;
            // 마우스 이벤트관련
            var stateMouseEvent = 0;
            var tmpObj;
            // 문짝 생성 할때 보관할 거 -> arrFur;
            var tmlDoor = [];
            var arrData = [];
            // 이미지 캡쳐
            var strDownloadMime = "image/octet-stream";
        
			init();
			render();

			function init() {
            	
				container = document.createElement( 'div' );				
				document.body.appendChild( container );
            
				camera = new THREE.PerspectiveCamera( 45, window.innerWidth / window.innerHeight, 1, 5000 );
				camera.position.set( 0, 1250, 0 );
				camera.lookAt( new THREE.Vector3() );
				
				scene = new THREE.Scene();
				scene.background = new THREE.Color( 0xFFFFFF );

				// roll-over helpers

				var rollOverGeo = new THREE.BoxGeometry( 10, 10, 10 );
				rollOverMaterial = new THREE.MeshBasicMaterial( { color: 0xff0000, opacity: 0.5, transparent: true } );
				rollOverMesh = new THREE.Mesh( rollOverGeo, rollOverMaterial );
				

				// cubes

				cubeGeo = new THREE.BoxGeometry( 10, 10, 10 );
				cubeMaterial = new THREE.MeshBasicMaterial( { color: 0x171582, opacity: 0.5, transparent: true } );
				
                //roll-over helpers _ plane
				/*rollOverGeop = new THREE.BoxGeometry( 10, 200, 25 );
				rollOverMaterialp = new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } );*/
                
                
				//roll-over walls
				rollOverWallGeo = new THREE.BoxGeometry( 10, 10, 5 );
				rollOverWallMat = new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } );
				
				
				// 벽
				
                //planeGeo = new THREE.BoxGeometry( 700, 250, 10 );
				/*planeMaterial = new THREE.MeshBasicMaterial( {color: 0xEDEDED, side: THREE.DoubleSide} );*/
                /*var wallTexture = THREE.ImageUtils.loadTexture('../editor/textures/depositphotos_83939646-stock-illustration-wallpaper-texture.jpg');//, {}, function(){renderer.render(scene)});*/
                //wallTexture = THREE.ImageUtils.loadTexture('../editor/textures/KakaoTalk_20170919_114220149.bmp');
                
                // 벽s
				
                //planeGeo = new THREE.BoxGeometry( 700, 250, 10 );
				//planeMaterial = new THREE.MeshBasicMaterial( {color: 0xEDEDED, side: THREE.DoubleSide} );
                /*var wallTexture = THREE.ImageUtils.loadTexture('../editor/textures/depositphotos_83939646-stock-illustration-wallpaper-texture.jpg');//, {}, function(){renderer.render(scene)});*/
                wallTexture = THREE.ImageUtils.loadTexture('../editor/textures/wallPaper1.jpg');
                
                
                //console.log(wallMaterials);
                
                
				// 외각벽
				var frameGeo = new THREE.BoxGeometry(50,50,50);
				var frameMat =  new THREE.MeshBasicMaterial( {color: 0x000000, visible: false});
				for(var i=0; i<88; ++i){
					frame = new THREE.Mesh(frameGeo, frameMat);
					frame.name = 'frame';
					if(i<22)
					{						
						frame.position.set(-525+(50*i), 25, -525);						
					}
					else if(21<i && 44>i)
					{
                        
						frame.position.set(-525+(50*(i-22)), 25, 525);
					}
					else if(43<i && 66>i)
					{
						frame.position.set(-525, 25, -525+(50*(i-44)));
					}
					else if(65<i)
					{
						frame.position.set(525, 25, -525+(50*(i-66)));
					}
					scene.add(frame);
					objects.push(frame);
				}
                
                
				
				// grid
				gridHelper = new THREE.GridHelper( 1000, 100 );
				gridHelper.position.y = 1;
				scene.add( gridHelper );

				//
				raycaster = new THREE.Raycaster();
				mouse = new THREE.Vector2();

				var geometry = new THREE.BoxGeometry( 1000, 1000 );
				geometry.rotateX( - Math.PI / 2 );

                /*var planetextyre = THREE.ImageUtils.loadTexture('../editor/textures/1_Hardwood.jpg')*/
                //var planetextyre = THREE.ImageUtils.loadTexture('../editor/textures/MarbleGreen0001_12_S.jpg');
                
				plane = new THREE.Mesh( geometry, new THREE.MeshBasicMaterial({ color: 0xeeeeee }));    
                // new THREE.MeshBasicMaterial( {color: 0xeeeeee}));          
                
                plane.name = 'plane';
				scene.add( plane );				
				objects.push( plane );
				
                // arrData Initialize
                saveCurState(objects);
                 
                
				// Lights
				var ambientLight = new THREE.AmbientLight( 0x606060 );
				scene.add( ambientLight );

				var directionalLight = new THREE.DirectionalLight( 0xffffff );
				directionalLight.position.set( 1, 1, 1 ).normalize;
                scene.add( directionalLight );
                var directionalLight1 = new THREE.DirectionalLight( 0xffffff );
				directionalLight1.position.set( -1, -1, -1 ).normalize;
                scene.add( directionalLight1 );
                
			    renderer = new THREE.WebGLRenderer( { antialias: true 
                                                    ,preserveDrawingBuffer: true} );
                

                renderer.setPixelRatio( window.devicePixelRatio );
				renderer.setSize( (window.innerWidth*0.75), (window.innerHeight*0.75) );
                renderer.setSize(window.innerWidth, window.innerHeight-60);
                renderer.domElement.style.position = 'absolute';
                renderer.domElement.style.top = '0px';
                renderer.domElement.style.bottom = '0px';
                renderer.domElement.style.left = '0px';
                renderer.domElement.style.right = '0px';
                renderer.domElement.style.marginBottom = 'auto';
                renderer.domElement.style.marginLeft = 'auto';
                renderer.domElement.style.marginRight = 'auto';
                renderer.domElement.style.marginTop = '60px';
                
				 container.appendChild( renderer.domElement );
				console.log(renderer);
                
                

				// 드래그 컨트롤 
				controls = new THREE.OrbitControls( camera, renderer.domElement );
                
				controls.addEventListener( 'change', render ); // remove when using animation loop
				// enable animation loop when using damping or autorotation
				controls.enableDamping = true;
				controls.dampingFactor = 0.25;
				controls.enableZoom = true;
				
				document.addEventListener( 'mousemove', onDocumentMouseMove, false );
				document.addEventListener( 'mousedown', onDocumentMouseDown, false );
                document.addEventListener( 'mousewheel', onDocumentMouseWheel, false );
				document.addEventListener( 'keydown', onDocumentKeyDown, false );
				document.addEventListener( 'keyup', onDocumentKeyUp, false );
                document.addEventListener( 'dblclick', onDocumentDblClick, false ); 
				window.addEventListener( 'resize', onWindowResize, false );

			}

			function onWindowResize() {

				camera.aspect = window.innerWidth / window.innerHeight;
				camera.updateProjectionMatrix();

				renderer.setSize( window.innerWidth*0.75, window.innerHeight*0.75 );

			}
        
            function onDocumentDblClick( event ) {
                event.preventDefault();
				mouse.set( ( (event.clientX-0.100) / (window.innerWidth) * 2 - 1, - ( (event.clientY-60) / (window.innerHeight-60) ) * 2 + 1 ) );
                raycaster.setFromCamera( mouse, camera );
                
                var intersects = raycaster.intersectObjects( objects );

				if ( intersects.length > 0 ) {

					var intersect = intersects[ 0 ];
                    if(state == 0)
                    {
                       if(intersect.object.name === 'wall')
                        {
                            for(var i = 0; i<6; ++i){
                                intersect.object.material[i].transparent = true;
                                intersect.object.material[i].opacity = 0.5;
                            }
                        }
                    }
                
                }
            }
        
        
            function onDocumentMouseWheel( event ) {
                event.preventDefault();
                camera.zoom
				camera.updateProjectionMatrix();
                
            }
        

			function onDocumentMouseMove( event ) {

				event.preventDefault();
				mouse.set( ( (event.clientX-0.100) / window.innerWidth) * 2 - 1, - ( (event.clientY-60) / (window.innerHeight-60) ) * 2 + 1 );
                raycaster.setFromCamera( mouse, camera );

				var intersects = raycaster.intersectObjects( objects );

				if ( intersects.length > 0 ) {

					var intersect = intersects[ 0 ];
                    if(state == 0)
                    {

                    }
					else if(state == 1){
						
						scene.add( rollOverMesh );
						rollOverMesh.position.copy( intersect.point ).add( intersect.face.normal );
						// 칸맞춰서 들어가는 것!
						rollOverMesh.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
						rollOverState = 1;
					}
					else if(state == 3){
                            wallState = 0;
							/*var collision = false;
							var tmp = [];
							var box1 = new THREE.Box3().setFromObject( rollOverMeshp ); // 함수로 빼나라 - !
                            var box2;				
							for(var i = 0; i<objects.length; ++i){
								if(objects[i].name === 'wall' || objects[i].name === 'frame')
								{										
									box2 = new THREE.Box3().setFromObject( objects[i] );
									collision = box1.intersectsBox(box2);
									
									if(collision)
									{	
										rollOverMeshp.position.copy( intersect.point ).add( intersect.face.normal );
										rollOverMeshp.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
                                        rollOverMeshp.position.y = 110;
										rollOverMeshp.material.color = new THREE.Color(0xff0000);
										scene.add( rollOverMeshp );
										rollOverState = 0;
										break;
									}
								}2.5
                            }*/
								rollOverMeshp.position.copy( intersect.point ).add( intersect.face.normal );
								rollOverMeshp.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
								rollOverMeshp.material.color = new THREE.Color(0x009933);
								scene.add( rollOverMeshp );
								rollOverState = 2;
								
																							
					}
                    else if(state == 4) // 진짜벽
					{
                     
                        wallState = 1;
                        
                        var floorGeometry = new THREE.BoxGeometry( 600, 600 ); // 바닥
				        floorGeometry.rotateX( - Math.PI / 2 );
                        var floortextyre = THREE.ImageUtils.loadTexture('../editor/textures/floorTexture.jpg')
                
                
				        floor = new THREE.Mesh( floorGeometry,  new THREE.MeshPhongMaterial({ map: floortextyre }));   
                        
                        
                        
                    	voxel.position.copy( intersect.point ).add( intersect.face.normal );            
			            voxel.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			            voxel.name = 'wall';   
                        voxel.position.z = intersect.point.z -300;
			            voxel.position.y = 110;
                    
			            voxel2.position.copy( intersect.point ).add( intersect.face.normal );            
			            voxel2.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			            voxel2.name = 'wall';   
                        voxel2.position.z = intersect.point.z + 300;
			            voxel2.position.y = 110;
                        
                    	voxel3.position.copy( intersect.point ).add( intersect.face.normal );            
			    		voxel3.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    		voxel3.name = 'wall';   
                		voxel3.position.x = intersect.point.x -300;
			    		voxel3.position.y = 110;
                		voxel4.position.copy( intersect.point ).add( intersect.face.normal );            
			    		voxel4.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    		voxel4.name = 'wall';   
		                voxel4.position.x = intersect.point.x +300;
					    voxel4.position.y = 110;
		                
		                        
		                voxel2.rotateY( (-Math.PI / 2 )* 2 );         
		                
                        rollOverWall.add(voxel);
                        rollOverWall.add(voxel2);
                        rollOverWall.add(voxel3);
                        rollOverWall.add(voxel4);
                        
                        scene.add(rollOverWall);
                            
				            rollOverState = 4;
					}					
                    else if(state == 5) // 문 배치
                    {
                        if(intersect.object.name === 'wall' || intersect.object.name === 'walls'){
                        rollOverFurniture.position.copy( intersect.point ).add( intersect.face.normal );
                        rollOverFurniture.position.x -= 105;
                        rollOverFurniture.position.y -= 95;
                        rollOverFurniture.position.z += 28;     
				        //rollOverFurniture.rotateX(-Math.PI / 2);
                        scene.add( rollOverFurniture );
                            
                        rollOverState =3;    
                        }
				    }
                    else if(state == 6) // windows
                    {
                         if(intersect.object.name === 'wall'){
                        rollOverFurniture.position.copy( intersect.point ).add( intersect.face.normal );
                        /*rollOverFurniture.position.x -= 105;
                        rollOverFurniture.position.y -= 95;
                        rollOverFurniture.position.z += 28; */    
				        //rollOverFurniture.rotateX(-Math.PI / 2);
                        scene.add( rollOverFurniture );
                            
                        rollOverState = 6; 
                         }
                    }
                    // 임시 가구
                    else if(state == 7) // 가구 배치
                    {
                        rollOverFurniture.position.copy( intersect.point ).add( intersect.face.normal );
                        scene.add( rollOverFurniture );
                        rollOverState = 5;    
                     
				    }                    
                    else if(state == 10)
                    {
                        
                        if(selectObj.uuid === selectObjName){
                         /*selectObj.material.emissive.g = 1;                            */
                          console.log(selectObj.material);
                        }
                        
                        console.log(selectObj);
                        if(event.buttons == 1 && stateMouseEvent == 0){
                            stateMouseEvent = 1;
                        
                        }
                        
                        if(stateMouseEvent == 1 && event.buttons == 1){
                        controls.enabled = false;  
                        selectObj.position.copy( intersect.point ).add( intersect.face.normal );
                        selectObj.position.y = 120;
                        selectObj.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );                         
                        }  
                             
                        if(event.buttons == 0)
                        {
                            selectObj.uuid = guid();
                            selectObj.name = 'wall';
                            
                            objects.push(selectObj);
                            //objects.push(tmpObj);
                            selectObj.material.emissive.g = 0;
                            stateMouseEvent = 0;
                            state = 0;
                            
                            saveCurState(objects);
                        }
                       
                    }
                    
                }
                
                
                render();
				
            }
			
			function onDocumentMouseDown( event ) {

				event.preventDefault();
                
                
                switch ( event.buttons ) {

				case 1: // left-click
                            
				/*mouse.set( ( (event.clientX-191.975) / (window.innerWidth*0.75) ) * 2 - 1, - ( (event.clientY-91.550) / (window.innerHeight*0.75) ) * 2 + 1 );*/
                mouse.set( ( (event.clientX-0.100) / window.innerWidth) * 2 - 1, - ( (event.clientY-60) / (window.innerHeight-60) ) * 2 + 1 );        

				raycaster.setFromCamera( mouse, camera );

				var intersects = raycaster.intersectObjects( objects );

				if ( intersects.length > 0 ) {

					var intersect = intersects[ 0 ];
                    
                    
					// delete cube
					if ( isShiftDown ) {

						if ( intersect.object != plane ) {

							scene.remove( intersect.object );
							objects.splice( objects.indexOf( intersect.object ), 1 );

						}

					// create cube
					} else {
                        
                        if(rollOverState === 0)
                        {
                            /*if(intersect.object.name === 'wall'){
                             
                                for(var i = 0; i<objects.length; ++i)
                                {
                                    if(intersect.object.uuid === objects[i].uuid)
                                    {
                                        selectObj = objects[i];        
                                    }
                                    
                                }
                                selectObjName = selectObj.uuid;
                                state = 10;
                                
                                
                            }*/
                        }
                        else if(rollOverState === 1)
                        {
						/*var voxel = new THREE.Mesh( cubeGeo, cubeMaterial );
						voxel.position.copy( intersect.point ).add( intersect.face.normal );
						voxel.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
                        console.log('cube :'+voxel.uuid);
						scene.add( voxel );
						objects.push( voxel );*/						
						}					
						else if(rollOverState === 2) // 벽생성
						{
                            //default
                            if(stateEdit == 0)
                            {
                                currState++;
                                createWall(intersect);
                                
                            }
                            else if(stateEdit == 1)
                            {  
                                console.log('stateEdit undoCnt : '+ cntUndo);
                                for(var i = 0; i<cntUndo; ++i)
                                {
                                    console.log('pop!');
                                    arrData.pop();
                                }
                                currState++;
                                cntUndo = 0;
                                stateEdit = 0;
                                createWall(intersect);
                            }
                            
                            saveCurState(objects);
                        
						}
                        else if(rollOverState === 3) // 문배치
                        {
                            if(intersect.object.name === 'wall' )
                            {
                            scene.remove(intersect.object);
                            
                            furnitureObj = rollOverFurniture;
                            furnitureObj.position.copy( intersect.point ).add( intersect.face.normal );
                           
                            furnitureObj.position.x -= 105;
                            furnitureObj.position.y -= 95;
                            furnitureObj.position.z += 28;        
                                
                                
                           /* furnitureObj.position.x -= 20;
                            furnitureObj.position.y -= 105;
                            furnitureObj.position.z += 148;*/
                            //furnitureObj.material = {color : 0x00ff00}; 
                            
                            if(stateEdit == 0)
                            {
                               createDoor(intersect);
                              
                            }
                            else if(stateEdit == 1)
                            {  
                                console.log('stateEdit undoCnt : '+ cntUndo);
                                for(var i = 0; i<cntUndo; ++i)
                                {
                                    console.log('pop!');
                                    arrData.pop();
                                }
                               
                                cntUndo = 0;
                                stateEdit = 0;
                                createDoor(intersect);
                            }
                            }
                        }
                        else if(rollOverState === 4) // 없음
                        {
                            scene.remove(rollOverWall);
                              if(stateEdit == 0)
                            {
                                currState++;
                                createWall(intersect);
                                
                            }
                            else if(stateEdit == 1)
                            {  
                                console.log('stateEdit undoCnt : '+ cntUndo);
                                for(var i = 0; i<cntUndo; ++i)
                                {
                                    console.log('pop!');
                                    arrData.pop();
                                }
                                currState++;
                                cntUndo = 0;
                                stateEdit = 0;
                                createWall(intersect);
                            }
                            stateEdit = 0;
                            saveCurState(objects);      
                        }
                        else if(rollOverState === 5) // 가구배치
                        {
                            
                            //scene.remove(intersect.object);
                            
                            furnitureObj = rollOverFurniture;
                            furnitureObj.position.copy( intersect.point ).add( intersect.face.normal );
                           
                            if(furnitureObj.name == 'tv')
                            {
                                furnitureObj.position.y = 45;        
                            }
                            
                            if(stateEdit == 0)
                            {
                               createFurni(intersect);
                              
                            }
                            else if(stateEdit == 1)
                            {  
                                console.log('stateEdit undoCnt : '+ cntUndo);
                                for(var i = 0; i<cntUndo; ++i)
                                {
                                    console.log('pop!');
                                    arrData.pop();
                                }                               
                                cntUndo = 0;
                                stateEdit = 0;
                                createFurni(intersect);
                            }
                            
                        }
                        else if(rollOverState === 6) // 창문배치
                        {
                            if(intersect.object.name === 'wall' )
                            {
                            scene.remove(intersect.object);
                            
                            furnitureObj = rollOverFurniture;
                            furnitureObj.position.copy( intersect.point ).add( intersect.face.normal );
                           
                            /*furnitureObj.position.x -= 105;
                            furnitureObj.position.y -= 95;
                            furnitureObj.position.z += 28;  */      
                                
                                
                           /* furnitureObj.position.x -= 20;
                            furnitureObj.position.y -= 105;
                            furnitureObj.position.z += 148;*/
                            //furnitureObj.material = {color : 0x00ff00}; 
                            
                            if(stateEdit == 0)
                            {
                               createWindow(intersect);
                              
                            }
                            else if(stateEdit == 1)
                            {  
                                console.log('stateEdit undoCnt : '+ cntUndo);
                                for(var i = 0; i<cntUndo; ++i)
                                {
                                    console.log('pop!');
                                    arrData.pop();
                                }
                               
                                cntUndo = 0;
                                stateEdit = 0;
                                createWindow(intersect);
                            }
                            }
                        }
						
					}
                    
                   
					render();
				}
                break;
                case 2: // right-click
                        
                if(state == 3)
                {  
                    rollOverMeshp.rotateY( -Math.PI / 2 ); 
                    rotateState = 3;
                }
                else if(state == 4)
                {
                    rollOverWall.rotateY( -Math.PI / 2 );
                    rotateState = 3;
                }
                else if(state == 6)
                {
                    rollOverFurniture.rotateY( -Math.PI / 2 );
                    rotateState = 3;
                }       
                else if(state == 7)
                {  
                    rollOverFurniture.rotateY( -Math.PI / 2 ); 
                    rotateState = 3;
                }
                        
				break;
                
                case 4: // middle-click
                {
                      	state = 0;
		            	rollOverState = 0;
                        scene.remove(rollOverWall);
                        scene.remove(rollOverMeshp);
                        //objects.splice( objects.indexOf( rollOverMeshp.object ), 1 );
				break;	
                }
              

			 }
            }

			function onDocumentKeyDown( event ) {
				+(window.innerWidth*0.15)
				switch( event.keyCode ) {

					case 16: isShiftDown = true; break;

				}

			}

			function onDocumentKeyUp( event ) {

				switch ( event.keyCode ) {

					case 16: isShiftDown = false; break;

				}

			}
			
			  var update = function ()
			  {
		      	var colorObj = new THREE.Color( params.color );
			  };
			
			    var UIcontrols = new function () {
                this.x = 35;
	            this.perspective = "Perspective";
	            this.switchCamera = function () {
	                if (camera instanceof THREE.PerspectiveCamera) {
	                    camera = new THREE.OrthographicCamera((-window.innerWidth/2) , window.innerWidth/2 , window.innerHeight/2 , (-window.innerHeight/2) , 1, 1000);
	                    camera.position.x = 0;
                        camera.position.y = 500;
                        camera.position.z = 0;
                        
                        camera.lookAt(scene.position);
	    				camera.lookAt( new THREE.Vector3() );
	                    
	                    this.perspective = "Orthographic";
	                } else {
	                	camera = new THREE.PerspectiveCamera( 45, window.innerWidth / window.innerHeight, 1, 10000 );
	                    camera.position.set( 0, 1850, 0 );
	                    camera.lookAt(scene.position);
	    				camera.lookAt( new THREE.Vector3() );
	                    this.perspective = "Perspective";
	                    
	                    controls = new THREE.OrbitControls( camera, renderer.domElement );
	    				controls.addEventListener( 'change', render ); // remove when using animation loop
	    				// enable animation loop when using damping or autorotation
	    				controls.enableDamping = true;
	    				controls.dampingFactor = 0.25;
	    				controls.enableZoom = true;
	    				
	    				document.addEventListener( 'mousemove', onDocumentMouseMove, false );
	    				document.addEventListener( 'mousedown', onDocumentMouseDown, false );
                        document.addEventListener( 'mousewheel', onDocumentMouseWheel, false );
	    				document.addEventListener( 'keydown', onDocumentKeyDown, false );
	    				document.addEventListener( 'keyup', onDocumentKeyUp, false );
                        document.addEventListener( 'dblclick', onDocumentDblClick, false );

	    				window.addEventListener( 'resize', onWindowResize, false );
	                }
	            };
	            this.파렛트 = function()
	            {	 
	            	state = 1;
	            	console.log("파렛트 state :"+ state);
	            };
                this.File = ''
	            this.SaveScene = function()
                {
                    
                    for(var i=0; i<objects.length; ++i){
                        console.log(objects[i].name);
                      if(objects[i].name == 'door'){
                          tmlDoor.push(objects[i].position);                          
                      }
                      else
                       sceneSave[i] = JSON.parse(JSON.stringify((Object)(objects[i])));                       
                    }
                    console.log(sceneSave);
                    console.log(sceneSave.length);
                    
                };
                this.LoadScene = function()//씬 불러오기 9.15 01:56
                {
                   camera.removeAll;
                   objects = [];
                   console.log(objects.length);
                  
                   var loader = new THREE.ObjectLoader();
                   for(var j=0; j<sceneSave.length; ++j){
                    
                       console.log(sceneSave[j]);
                        
                            if(loader.parse(sceneSave[j]).name === 'plane'){
                                var planeObj = loader.parse(sceneSave[j]);
                                alert('!!!');
                                planeObj.rotateX(-Math.PI / 2);    
                                scene.add(planeObj);
                                objects.push(planeObj);
                            }
                       else{
                           // console.log(loader.parse(sceneSave[j]));
                            scene.add(loader.parse(sceneSave[j]));                    
                            objects.push(loader.parse(sceneSave[j]));                       
                       }
                   }
                    var filePath = '../editor/obj/';
                    //var objName = 'GroupeMillet-M3D_Alu_Porte_Fenetre_2_vantaux-3D';
                    var objName = 'Ermetika-SWING_Tirant_Pull_Wall_Thickness_100_mm-3D';
                    //Tilt_and_slide_door_Inova
                    makeDoor(filePath,objName);
                    
                    scene.add(rollOverFurniture);
                    //objects.push(rollOverFurniture);
                    
                };
                this.ImageCapture = '';
                this.Export = '';
	            this.unDo = function()
                {
                    console.log('undo obj length : '+objects.length);
                    if(objects.length > 88)
                    {
                        stateEdit = 1;
                        if(currState > 0){
                            
                            cntUndo++;                            
                            currState -= 1;
                            initObj(currState);
                        }
                        else
                        {
                            initObj(currState);
                        }
                        console.log('undo curr'+currState);
                        console.log('undo arrdata length : '+arrData.length);
                    }
                    else
                        alert('NopE! 더이상 이전상태로 할 수 없음');
                    
                };
                this.reDo = function()
                {
                    console.log('redo arrData.length : ' +arrData.length);
                    if(arrData.length == 1 || currState == arrData.length){
                    alert('되돌릴 항목이없음.'); return;
                    }
                    
                    currState++;
                   
                    if(currState < arrData.length){
                    
                    for(var i=0; i<objects.length; ++i)
                    {
                        scene.remove(objects[i]);        
                    }
                        objects = [];
                        objects = Array.prototype.slice.call(arrData[currState]);
  
                    for(var i=0; i<objects.length; ++i)
                    {
                        scene.add(objects[i]);        
                    }
                    
                    }
                    else
                        {
                         alert('NopE! 더이상 되돌릴 수 없음');   
                        }
                };
	            this.툴박스 = function()
	            {		
                    console.log(scene);
                    localStorage.setItem('scene',JSON.stringify(scene));
	                console.log('저장완료');
                    //alert(JSON.stringify());

	    		
	            };
                this.불러오기 = function()
	            {		
                    var sceneLoader = new THREE.ObjectLoader();                    
                    var nScene = sceneLoader.parse(JSON.parse(localStorage.getItem('scene')));
                    
                    scene = nScene;
                    render();
                    //alert(JSON.stringify());

	    		
	            };    
	            this.createBricks = function()
	            {	
                    rollOverGeop = new THREE.BoxGeometry( 10*UIcontrols.x, 220, 10);
				    rollOverMaterialp = new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } );
                    rollOverMeshp = new THREE.Mesh( rollOverGeop, rollOverMaterialp );                    
                    state = 3;
                    
	            };
                this.createTempleteBricks = function()
	            {	
                  planeGeo = new THREE.BoxGeometry( 600, 220, 10 );
                
                        voxel = new THREE.Mesh( planeGeo,new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } ) );
			            voxel2 = new THREE.Mesh( planeGeo,new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } ) );
			            voxel3 = new THREE.Mesh(  new THREE.BoxGeometry( 10, 220, 600 ),new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } ) );
					      voxel4 = new THREE.Mesh(  new THREE.BoxGeometry( 10, 220, 600 ),new THREE.MeshBasicMaterial( { color: 0x009933, opacity: 0.5, transparent: true } ) );
			    
                        rollOverWall = new THREE.Object3D();
                        state = 4;
	            	
	            };
	            this.Edit='';
                this.문만들기 = function()
                {
                    var filePath = '../editor/obj/';
                    //var objName = 'GroupeMillet-M3D_Alu_Porte_Fenetre_2_vantaux-3D';
                     var objName = 'SP_130_-_1_leaf';
                   
                    //Tilt_and_slide_door_Inova
                    makeDoor(filePath,objName);  
                    
                    furniState = 1
                    setTimeout(function(){state = 5; console.log('complete');},1000);
                  
                };
                this.창문만들기 = function()
                {
                    var filePath = '../editor/obj/';
                    //var objName = 'GroupeMillet-M3D_Alu_Porte_Fenetre_2_vantaux-3D';
                     var objName = 'ESPACE_O.C._70_TH_WINDOW_side-hung__tilt-turn_2_LEAVES';
                   
                    //Tilt_and_slide_door_Inova
                    makeWindow(filePath,objName);  
                    
                    furniState = 1
                    setTimeout(function(){state = 6; console.log('complete');},1000);
                  
                };    
                this.병합실험 = function(){
                    
                };
                this.changeGrid = function()
                {
                    for(var i = 0; i<scene.children.length; ++i){
                    
                        if(scene.children[i] instanceof THREE.GridHelper)
                        {
                          scene.remove(scene.children[i]);
                          return;
                        }
                    }
                    
                    scene.add(gridHelper);
                }
                this.captureIMG = function()
                {
                    //saveAsImage();
                    
                    $.ajax({
    					url : "/admin/file/test",
    					type : "post",
    					data : {
    						"imgData" : renderer.domElement.toDataURL("image/jpeg")
    						
    					},
    					success : function(result){
    						//saveFile(result.replace("image/jpeg", strDownloadMime), "test.jpg");
    						console.log('!성공!');
    					},
    					error : function(error){
    						//console.log('error!');
    						//console.log(error);
    					}
    				}); 
                }
                
                this.exportScene = function () {
                var exporter = new THREE.SceneExporter();
                var sceneJson = JSON.stringify(exporter.parse(scene));
                localStorage.setItem('scene', sceneJson);
                };

                this.clearScene = function () {
                    scene = new THREE.Scene();
                };

                this.importScene = function () {
                var json = (localStorage.getItem('scene'));
                var sceneLoader = new THREE.SceneLoader();

                sceneLoader.parse(JSON.parse(json), function (e) {
                    scene = e.scene;
                }, '.');
                }
                
                this.임시_침대 = function()
                {
                    var filePath = '../editor/obj/';
                    var objName = 'IKEA-Kritter_Bed_Frame_And_Guard_Rail-3D';
                    
                    makeFurniture(filePath,objName,0.15);
                    furniState = 1
                    setTimeout(function(){state = 7; console.log('complete');},1000);
                }
                this.임시_소파 = function()
                {
                    var filePath = '../editor/obj/';
                    var objName = 'IKEA-Kramfors_2_Seat_Corner_Sofa-3D';
                    
                    makeFurniture(filePath,objName,0.9);
                    furniState = 1
                    setTimeout(function(){state = 7; console.log('complete');},1000);
                }
                this.임시_TV = function()
                {
                    var filePath = '../editor/obj/';
                    var objName = 'Samsung Smart TV 55 Zoll';
                    
                    makeFurniture(filePath,objName,15.0);

                    furniState = 1
                    setTimeout(function(){state = 7;  rollOverFurniture.name = 'tv'; console.log('complete');},1000);
                   
                }
                this.getFurnitureList = function()
                {
                	$.ajax({
    					url : "/admin/file/getFurnitureList",
    					type : "post",
    					data : {},
    					success : function(result){
    						$(".furniList").empty();
    						var path = "/admin/resources/file/";
    						var addRow = "";
    						addRow = '<tr><th>1</th><th>2</th><th>3</th></tr>';
    						$(".furniList").append(addRow);
    						addRow = '<tr>';
    						var cnt = 0;
    						//ㅇㅇㅇㅇ
    						$(result).each(
    							function(index, item){
    								
    								if(cnt < 3){    									
    								//addRow +='<td><img src="'+path+item.imgPath+'" style="width:50px;height:50px;" onclick=""></td>';
    								var obj = item.objPath;
    								var mtl = item.mtlPath;
    								addRow +='<td><img src="'+path+item.imgPath+'" style="width:50px;height:50px;" onclick="UIcontrols.buildFurni('+'\''+obj+'\''+','+'\''+mtl+'\')"></td>';

									++cnt;	   
    								}
    								
									if(cnt == 3){
									addRow += '</tr>';	
									$(".furniList").append(addRow);
									cnt = 0;
									addRow = '<tr>';
									}
    								
    						})
    					},
    					
    				}); 
                };
              //임시_식탁
                this.buildFurni = function(objPath,mtlPath)
                {  
            	  	console.log(objPath);
            	  	var filePath = "/admin/resources/file/";
                    makeFurniture(filePath,objPath,mtlPath,0.1);
                    furniState = 1
                    setTimeout(function(){state = 7; console.log('complete');},1000);
                };
                
	        };
        	
	        camera.lookAt(scene.position);
			
        
			function render()
			{
				//requestAnimationFrame(render);
				renderer.render( scene, camera );
			}
                
        //uuid 생성
        function guid() {
            function s4() {
            return ((1 + Math.random()) * 0x10000 | 0).toString(16).substring(1);
        }
        return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
        }
        
        function makeDoor(filePath, objName)
        {
            var onProgress = function ( xhr ) {
					    if ( xhr.lengthComputable ) {
						var percentComplete = xhr.loaded / xhr.total * 100;
						console.log( Math.round(percentComplete, 2) + '% downloaded' );
					   }  
                
			             };

			             var onError = function ( xhr ) { };
                
                        if(furniState === 0){
                        THREE.Loader.Handlers.add( /\.dds$/i, new THREE.DDSLoader() );
                        
				        mtlLoader = new THREE.MTLLoader();
				        mtlLoader.setPath(filePath );
				        mtlLoader.load( objName+'.mtl', function( materials ){

					    materials.preload();
                       furnitureMat = materials;
                        
					   objLoader = new THREE.OBJLoader();
					   objLoader.setMaterials( materials );
					   objLoader.setPath( filePath );
					   objLoader.load( objName+'.obj', function ( object ) {

						object.position.set(0,0,0);                        
                        object.scale.set(0.075,0.075,0.075);
                        object.name ='door';
                           
                        //objects.push( object );
						//scene.add( object );
                        //console.log(object);
                        rollOverFurniture = object;

				        }, onProgress, onError);
                           
				        });
                        }
        }
        
        function makeWindow(filePath, objName)
        {
            var onProgress = function ( xhr ) {
					    if ( xhr.lengthComputable ) {
						var percentComplete = xhr.loaded / xhr.total * 100;
						console.log( Math.round(percentComplete, 2) + '% downloaded' );
					   }  
                
			             };

			             var onError = function ( xhr ) { };
                
                        if(furniState === 0){
                        THREE.Loader.Handlers.add( /\.dds$/i, new THREE.DDSLoader() );
                        
				        mtlLoader = new THREE.MTLLoader();
				        mtlLoader.setPath(filePath );
				        mtlLoader.load( objName+'.mtl', function( materials ){

					    materials.preload();
                       furnitureMat = materials;
                        
					   objLoader = new THREE.OBJLoader();
					   objLoader.setMaterials( materials );
					   objLoader.setPath( filePath );
					   objLoader.load( objName+'.obj', function ( object ) {

						object.position.set(0,0,0);                        
                        object.scale.set(0.1,0.1,0.1);
                        object.name ='windows';
                         
                        rollOverFurniture = object;

				        }, onProgress, onError);
                           
				        });
                        }
        }
        
        //임시 가구 생성
        function makeFurniture(filePath, objPath, mtlPath, furniSize)
        {
            var onProgress = function ( xhr ) {
			     
                if ( xhr.lengthComputable ) {
				    var percentComplete = xhr.loaded / xhr.total * 100;
					console.log( Math.round(percentComplete, 2) + '% downloaded' );
				    }  
                
            };

			var onError = function ( xhr ) { };
                
            if(furniState === 0){
            
                THREE.Loader.Handlers.add( /\.dds$/i, new THREE.DDSLoader() );
                
                mtlLoader = new THREE.MTLLoader();
				mtlLoader.setPath(filePath );
				mtlLoader.load( mtlPath, function( materials ){
                    
                materials.preload();
                furnitureMat = materials;
                
                objLoader = new THREE.OBJLoader();
				objLoader.setMaterials( materials );
				objLoader.setPath( filePath );
				objLoader.load( objPath, function ( object ) {
                        
                object.scale.set(furniSize,furniSize,furniSize);
                object.name ='funiture';
                
                rollOverFurniture = object;
                console.log(object);    
				}, onProgress, onError);
                           
				});
                }
            
           
            
        }
        
        // Undo Redo 용
        function saveCurState(objects)
        {
            console.log('arrData.length : ' + arrData.length);
            arrData.push(Array.prototype.slice.call(objects));            
        }
        
        // 벽생성
        function createWall(intersect)
        {
            
            var mats = [];
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture})); 
        
            
            
            //wallMaterials = new THREE.MeshPhongMaterial({ map: wallTexture});
            
            if(wallState == 0){
            planeGeo = new THREE.BoxGeometry( 10*UIcontrols.x, 220, 10 ); // 변수 바뀌도록    
            wallMaterials = new THREE.MeshFaceMaterial(mats);    
            var voxel = new THREE.Mesh( planeGeo, wallMaterials );
			voxel.position.copy( intersect.point ).add( intersect.face.normal );            
			voxel.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			voxel.name = 'wall';                            
			voxel.position.y = 110;
            
            if(rotateState === 3)
            {
             voxel.rotation.copy(rollOverMeshp.rotation);				
            }  
            
            scene.add( voxel );
			objects.push( voxel );
            }
            else
            {
                           
                floor.position.copy( intersect.point ).add( intersect.face.normal );            
			    floor.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
                //floor.position.y = +100;
                floor.name = 'plane';
				scene.add( floor );				
				objects.push( floor );
                
                
                
                var mats = [];
            
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xa0a0a0}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshBasicMaterial({color: 0xcdcdcd}));
                planeGeo = new THREE.BoxGeometry( 600, 220, 10 );
                
                var voxel = new THREE.Mesh( planeGeo, new THREE.MeshFaceMaterial(mats) );
			    voxel.position.copy( intersect.point ).add( intersect.face.normal );            
			    voxel.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    voxel.name = 'wall';   
                voxel.position.z = intersect.point.z -300;
			    voxel.position.y = 110;
                
                scene.add( voxel );
			    objects.push( voxel );
                var mats = [];
           mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xa0a0a0}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshBasicMaterial({color: 0xcdcdcd}));
                
                var voxel2 = new THREE.Mesh( planeGeo, new THREE.MeshFaceMaterial(mats) );
			    voxel2.position.copy( intersect.point ).add( intersect.face.normal );            
			    voxel2.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    voxel2.name = 'wall';   
                voxel2.position.z = intersect.point.z + 300;
			    voxel2.position.y = 110;
                voxel2.rotateY( (-Math.PI / 2 )* 2 ); 
                scene.add( voxel2 );
			    objects.push( voxel2 );
                
               var mats = [];
           mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xa0a0a0}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshBasicMaterial({color: 0xcdcdcd}));
                var voxel3 = new THREE.Mesh( planeGeo, new THREE.MeshFaceMaterial(mats) );
			    voxel3.position.copy( intersect.point ).add( intersect.face.normal );            
			    voxel3.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    voxel3.name = 'wall';   
                voxel3.position.x = intersect.point.x -300;
			    voxel3.position.y = 110;
                voxel3.rotateY( (-Math.PI / 2 )* 3) ;
                scene.add( voxel3 );
			    objects.push( voxel3 );
                
                var mats = [];
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xa0a0a0}));
            mats.push(new THREE.MeshBasicMaterial({color: 0xdedede}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshBasicMaterial({color: 0xcdcdcd}));
                var voxel4 = new THREE.Mesh( planeGeo, new THREE.MeshFaceMaterial(mats) );
			    voxel4.position.copy( intersect.point ).add( intersect.face.normal );            
			    voxel4.position.divideScalar( 10 ).floor().multiplyScalar( 10 ).addScalar( 5 );
			    voxel4.name = 'wall';   
                voxel4.position.x = intersect.point.x +300;
			    voxel4.position.y = 110;
                voxel4.rotateY( (-Math.PI / 2)* 1 );
                scene.add( voxel4 );
			    objects.push( voxel4 );
                    
            }
           
        }

        
        
        // objects initialize
        function initObj(currState)
        {
            for(var i=0; i<objects.length; ++i)
            {
                scene.remove(objects[i]);        
            }
                        
            objects = [];
            objects = Array.prototype.slice.call(arrData[currState]);
                           
            for(var i=0; i<objects.length; ++i)
            {
                    scene.add(objects[i]);        
            }
        }
        
        //create to door
        function createDoor(intersect)
        {
            var fBox = new THREE.Box3().setFromObject( furnitureObj ); 
            var geometry = new THREE.BoxGeometry( fBox.getSize().x, fBox.getSize().y, fBox.getSize().z );
            var material = new THREE.MeshBasicMaterial( {color: 0xffffff} );
            var cube = new THREE.Mesh( geometry, material );
            cube.position.copy( intersect.point ).add( intersect.face.normal );
            cube.position.z -= 5;    
            var tmpObj = intersect.object; // 병합된 벽
            console.log(tmpObj);
            var obj1Bsp = new ThreeBSP(tmpObj);   
            var obj2Bsp = new ThreeBSP(cube);
            var resultObj = obj1Bsp.subtract(obj2Bsp);
            resultObj = resultObj.toMesh();                             
              
             var mats = [];
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture})); 
            wallMaterials = new THREE.MeshFaceMaterial(mats);   
            
            resultObj.geometry.computeFaceNormals();
            resultObj.geometry.computeVertexNormals();
            resultObj.material = wallMaterials;
            resultObj.name = 'wall';
            scene.add(resultObj);            
            objects.push(resultObj);
            scene.remove(rollOverFurniture);
            scene.add(furnitureObj);
            for(var i= 0; i<objects.length; ++i)
            {
                if(tmpObj.uuid == objects[i].uuid)
                {
                    objects.splice(i,1);
                }
            }
            objects.push(furnitureObj);    
            saveCurState(objects);
            
            rollOverState = 99;
            state = 0;
            furniState = 0;
            currState++;
            
        }
        
        function createWindow(intersect)
        {
            var fBox = new THREE.Box3().setFromObject( furnitureObj ); 
            var geometry = new THREE.BoxGeometry( fBox.getSize().x, fBox.getSize().y, fBox.getSize().z );
            var material = new THREE.MeshBasicMaterial( {color: 0xffffff} );
            var cube = new THREE.Mesh( geometry, material );
            cube.position.copy( intersect.point ).add( intersect.face.normal );
            cube.position.z -= 5;    
            var tmpObj = intersect.object; // 병합된 벽
            console.log(tmpObj);
            var obj1Bsp = new ThreeBSP(tmpObj);   
            var obj2Bsp = new ThreeBSP(cube);
            var resultObj = obj1Bsp.subtract(obj2Bsp);
            resultObj = resultObj.toMesh();                             
              
             var mats = [];
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));  
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture}));        
            mats.push(new THREE.MeshPhongMaterial({ map: wallTexture})); 
            wallMaterials = new THREE.MeshFaceMaterial(mats);   
            
            resultObj.geometry.computeFaceNormals();
            resultObj.geometry.computeVertexNormals();
            resultObj.material = wallMaterials;
            resultObj.name = 'wall';
            scene.add(resultObj);            
            objects.push(resultObj);
            scene.remove(rollOverFurniture);
            scene.add(furnitureObj);
            for(var i= 0; i<objects.length; ++i)
            {
                if(tmpObj.uuid == objects[i].uuid)
                {
                    objects.splice(i,1);
                }
            }
            objects.push(furnitureObj);    
            saveCurState(objects);
            
            rollOverState = 99;
            state = 0;
            furniState = 0;
            currState++;
            
        }
        
        
        function createFurni(intersect)
        {
            scene.remove(rollOverFurniture);
            scene.add(furnitureObj);
            objects.push(furnitureObj);    
            saveCurState(objects);
            
            rollOverState = 99;
            state = 0;
            furniState = 0;
            currState++;
            
        }
        
        //이미지 캡쳐
        function saveAsImage() {
        var imgData, imgNode;

        try {
            var strMime = "image/jpeg";
            imgData = renderer.domElement.toDataURL(strMime);

            saveFile(imgData.replace(strMime, strDownloadMime), "test.jpg");

        	} catch (e) {
            console.log(e);
            return;
        	}
        
        
    	}
        
        
        /* $(function(){
			  $('.furniList').live('click', UIcontrols.buildFurni);
			});
     */
    
		// 사용하지 않음
  		/* var saveFile = function (strData, filename) {
        var link = document.createElement('a');
        if (typeof link.download === 'string') {
            document.body.appendChild(link); //Firefox requires the link to be in the body
            link.download = filename;
            link.href = strData;
            link.click();
            document.body.removeChild(link); //remove the link when done
        } else {
            location.replace(uri);
        }
    
		} */
  		</script>
  		
	<!-- PRELOADER -->
	<div id="loader" style="display: none;">
		<div class="loader-container">
			<img src="/admin/resources/images/load.gif" alt=""
				class="loader-site spinner">
		</div>
	</div>
	<!-- END PRELOADER -->


	<div id="wrapper">
		<header class="header affix-top">
			<div class="container-full">
				<nav class="navbar navbar-inverse yamm"
					style="padding-bottom: 5px; padding-top: 5px; z-index: 50;">
					<!-- 					//box-shadow: 0 0 30px black; -->
					<%@include file="navi.jsp"%>
					<!--/.container-fluid -->
				</nav>
			</div>
			<!-- end container -->
		</header>
		<!-- 			가로툴박스 -->
		<div id='cssmenu'>
			<ul>
				<li class='has-sub'><a href='#'><i class="fa fa-3x fa-list"
						aria-hidden="true" style="vertical-align: middle;"></i></a>
					<ul>
						<li><i class="fa fa-3x fa-list"
						aria-hidden="true" style="vertical-align: middle;"></i>
						
						</li>
						<li><i class="fa fa-3x fa-list"
						aria-hidden="true" style="vertical-align: middle;"></i>
						</li>
					</ul>
				</li>
				<li><a href='#' onclick="UIcontrols.unDo()"><i
						class="fa fa-3x fa-undo" aria-hidden="true"
						style="vertical-align: middle;"></i></a></li>
				<li><a href='#' onclick="UIcontrols.reDo()"><i
						class="fa fa-3x fa-repeat" aria-hidden="true"
						style="vertical-align: middle;"></i></a></li>
				<li><a href='#' onclick="UIcontrols.switchCamera()"><i
						class="fa fa-3x fa-eye" aria-hidden="true"
						style="vertical-align: middle;"></i></a></li>
				<li><a href='#' onclick="UIcontrols.createTempleteBricks()"><i class="fa fa-3x fa-crop"
						aria-hidden="true" style="vertical-align: middle;"></i></a></li>
				<li><a href='#' onclick="UIcontrols.createBricks()"><i
						class="fa fa-3x fa-cubes" aria-hidden="true"
						style="vertical-align: middle;"></i></a></li>
				<li><a onclick="UIcontrols.captureIMG()"><i class="fa fa-3x fa-camera-retro"
						style="vertical-align: middle;"></i></a></li>
				<!-- <li class='active has-sub'><a onclick=""><i
						class="fa fa-3x fa-camera" style="vertical-align: middle;"></i></a>
					<ul>
						<li class='has-sub'><a href='#'><i
								class="fa fa-2x fa-camera-retro" style="vertical-align: middle;"></i></a>
							<ul>
								<li><a href='#'><i class="fa fa-2x fa-camera-retro"
										style="vertical-align: middle;"></i></a></li>
								<li class='last'><a href='#'><i
										class="fa fa-2x fa-camera-retro"
										style="vertical-align: middle;"></i></a></li>
							</ul></li>
						<li class='has-sub'><a href='#'><i
								class="fa fa-2x fa-folder-open-o"
								style="vertical-align: middle;"></i></a>
							<ul>
								<li><a href='#'><i class="fa fa-2x fa-camera-retro"
										style="vertical-align: middle;"></i></a></li>
								<li class='last'><a href='#'><i
										class="fa fa-2x fa-camera-retro"
										style="vertical-align: middle;"></i></a></li>
							</ul></li>
					</ul></li> -->
				<li class='last'><a href='#'><i class="fa fa-3x fa-trash"
						style="vertical-align: middle;"></i></a></li>

			</ul>
		</div>

		<!-- 			세로툴박스 -->

		<div id='cssmenuVertic'>
			<ul>
				<li><a href='#'><i class="fa fa-3x fa-search" style="vertical-align: middle;"></i></a></li>
				<li class='active has-sub' onmouseenter="UIcontrols.getFurnitureList()" ><a href='#'><i class="fa fa-3x fa-archive" style="vertical-align: middle;"></i></a>
					<ul>
						<table class='furniList'>
						</table>
					</ul>
					</li>
				<li><a href='#'><i class="fa fa-3x fa-delicious" style="vertical-align: middle;"></i></a>
				<ul>
						<li class='has-sub'><a href='#'><i class="fa fa-3x fa-th-large" style="vertical-align: middle;"></i></a>
						<li><a href='#'><i class="fa fa-3x fa-camera-retro"	style="vertical-align: middle;"></i></a></li>
						<li class='last'><a href='#'><i class="fa fa-3x fa-camera-retro" style="vertical-align: middle;"></i></a></li>							
						<li class='has-sub'><a href='#'><i class="fa fa-3x fa-camera-retro" style="vertical-align: middle;">
						</i></a>
							<!-- <ul> -->
								<li><a href='#'><i class="fa fa-3x fa-camera-retro" style="vertical-align: middle;"></i></a></li>
								<li class='last'><a href='#'><i class="fa fa-3x fa-camera-retro" style="vertical-align: middle;"></i></a></li>
							<!-- </ul> --></li>
					</ul>
				</li>
				<li class='last'><a href='#' onclick="UIcontrols.changeGrid()"><i class="fa fa-3x fa-th" style="vertical-align: middle;"></i></a></li>
			</ul>
		</div>

		<!-- end section -->



		<!-- 		<div class="topfooter"> -->
		<!-- 			<div class="container"> -->
		<!-- 				<div class="row"> -->
		<!-- 					<div class="col-md-4 col-sm-4 col-xs-12"> -->
		<!-- 						<a class="navbar-brand" href="index.html"><img -->
		<!-- 							src="/admin/resources/images/logo.png" alt=""></a> -->
		<!-- 					</div> -->
		<!-- 					end col -->

		<!-- 					<div class="col-md-4 col-sm-4 col-xs-12 text-center payments"> -->
		<!-- 						<a href="#"><i class="fa fa-paypal"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-credit-card"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-cc-amex"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-cc-mastercard"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-cc-visa"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-cc-diners-club"></i></a> <a href="#"><i -->
		<!-- 							class="fa fa-cc-discover"></i></a> -->
		<!-- 					</div> -->
		<!-- 					end col -->

		<!-- 					<div class="col-md-4 col-sm-4 col-xs-12 text-right"> -->
		<!-- 						<ul class="list-inline"> -->
		<!-- 							<li><a href="#">Home</a></li> -->
		<!-- 							<li><a href="#">Terms of Usage</a></li> -->
		<!-- 							<li><a href="#">Contact</a></li> -->
		<!-- 							<li><a class="topbutton" href="#" style="bottom: -100px;">Back -->
		<!-- 									<i class="fa fa-angle-up"></i> -->
		<!-- 							</a></li> -->
		<!-- 						</ul> -->
		<!-- 					</div> -->
		<!-- 					end col -->
		<!-- 				</div> -->
		<!-- 				end row -->
		<!-- 			</div> -->
		<!-- 			<!-- end container -->
		<!-- 		</div> -->
		<!-- end section -->

	</div>

		<script>
		/* function pageProc(currentPage, libraryCondition, libraryKeyword){
		
		var session = '${sessionScope.coName}'
		
		location.href = "/admin/file/library?coNAME="+session +"&currentPage="+currentPage + "&libraryCondition="+libraryCondition + "&libraryKeyword="+libraryKeyword;
		
		} */
		</script>

	<!-- Main Scripts-->
	<script src="/admin/resources/js/jquery.js"></script>
	<script src="/admin/resources/js/bootstrap.min.js"></script>
	<script src="/admin/resources/js/plugins.js"></script>
	<script src="/admin/resources/js/hover.js"></script>
	<script src="/admin/resources/js/threecolgallery.js"></script>
	<script src="/admin/resources/js/index.js"></script>
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
</body>
</html>