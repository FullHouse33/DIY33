<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- SITE META -->
<title>companyIdSearchForm</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">

<!-- FAVICONS -->
<link rel="shortcut icon" href="/admin/resources/images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="/admin/resources/images/apple-touch-icon.png">
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
<link rel="stylesheet prefetch"
	href="https://fonts.googleapis.com/css?family=Lato|Quicksand">
<link rel="stylesheet prefetch"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

</head>

<body style="overflow: visible">

	<div id="wrapper">
		<header class="header affix-top">
			<div class="container-full">
				<nav class="navbar navbar-inverse yamm"
					style="padding-bottom: 5px; padding-top: 5px; box-shadow: 0 0 30px black; z-index: 50;">
					<%@include file="../navi.jsp"%>
					<!--/.container-fluid -->
				</nav>
			</div>
			<!-- end container -->
		</header>
		<!-- end header -->
		<!-- end page-title -->

		<section class="lb section"
			style="padding-top: 30px; padding-bottom: 50px; z-index: 1; min-height: 588px;">
			<div class="container">
				<form action="/admin/user/companyIdSearchAction" method="post">
					<div class="row">
						<div class="col-md-8"
							style="text-align: center; width: 100%; padding-left: 100px; padding-right: 100px;">
							<h2 style="color: #555">아이디 찾기</h2>
							<hr>
							<table class="" style="width: 100%;">
								<tbody>
									<tr class="row">
										<td class="col-md-3"
											style="width: 50%; text-align: -webkit-center;"><input
											type="text" class="form-control input-lg" id="coManagerName"
											name="coManagerName" placeholder="Manager name"
											style="margin-bottom: 10px;"> <input type="tel"
											class="form-control input-lg" id="coTel" name="coTel"
											placeholder="Telephone" style="margin-bottom: 10px;">
											<button type="submit" id="" class="button button--aylen btn"
												style="margin-top: 20px; margin-left: 0px; width: 110px; height: 50px; font-size: 20px; border-radius: 35px;">Submit</button></td>
									</tr>
								</tbody>
							</table>
							<c:if test="${list2 != null}">
								<h2 style="color: #555">아이디 검색결과</h2>
								<hr>
							</c:if>
							<c:forEach items="${list2}" var="vo">
								<h4 style="color: #555">아이디 : ${vo}</h4>
							</c:forEach>
							<!-- end widget-title -->
						</div>
					</div>
					<!-- end row -->
				</form>
			</div>
			<!-- end container -->
		</section>

		<div class="topfooter">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<a class="navbar-brand" href="#"><img
							src="/admin/resources/images/logo.png" alt=""></a>
					</div>
					<!-- end col -->

					<div class="col-md-4 col-sm-4 col-xs-12 text-center payments">
						<a href="#"><i class="fa fa-paypal"></i></a> <a href="#"><i
							class="fa fa-credit-card"></i></a> <a href="#"><i
							class="fa fa-cc-amex"></i></a> <a href="#"><i
							class="fa fa-cc-mastercard"></i></a> <a href="#"><i
							class="fa fa-cc-visa"></i></a> <a href="#"><i
							class="fa fa-cc-diners-club"></i></a> <a href="#"><i
							class="fa fa-cc-discover"></i></a>
					</div>
					<!-- end col -->

					<div class="col-md-4 col-sm-4 col-xs-12 text-right">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li><a href="#">Terms of Usage</a></li>
							<li><a href="#">Contact</a></li>
							<li><a class="topbutton" href="#" style="bottom: 25px;">Back
									<i class="fa fa-angle-up"></i>
							</a></li>
						</ul>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end section -->
	</div>
	<!-- end wrapper -->

	<!-- Main Scripts-->
	<script src="/admin/resources/js/jquery.js"></script>
	<script src="/admin/resources/js/bootstrap.min.js"></script>
	<script src="/admin/resources/js/plugins.js"></script>
	<script src="/admin/resources/js/index.js"></script>
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

	<script>
		$(function() {

		});
	</script>

</body>

</html>