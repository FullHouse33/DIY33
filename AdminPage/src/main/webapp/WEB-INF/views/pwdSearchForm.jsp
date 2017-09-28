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
<title>PasswordSearchForm</title>
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

<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body style="overflow: visible;">

	<div id="wrapper">
		<header class="header affix-top">
			<div class="container-full">
				<nav class="navbar navbar-inverse yamm"
					style="padding-bottom: 5px; padding-top: 5px; box-shadow: 0 0 30px black; z-index: 50;">
					<%@include file="navi.jsp"%>
					<!--/.container-fluid -->
				</nav>
			</div>
			<!-- end container -->
		</header>
		<!-- end header -->

		<!-- end page-title -->
		<section class="section"
			style="padding-top: 30px; padding-bottom: 61px; z-index: 1; min-height: 590px;">
			<div class="container">
				<div class="checkout-tab">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade" id="step1">
							<div class="shopcart">
								<table class="table">
									<thead>
										<tr>
											<th>PRODUCTS</th>
											<th>NAME</th>
											<th>QUANITY</th>
											<th>PRICE</th>
											<th>TOTAL PRICE</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img src="/admin/resources/upload/shop_01.jpg"
												alt=""></td>
											<td>
												<h4>
													<a href="#">Old Pink Lamb</a>
												</h4>
											</td>
											<td>1</td>
											<td>
												<h4>$18.00</h4>
											</td>
											<td>
												<h4>$360.00</h4>
											</td>
											<td><a href="#"><i class="fa fa-close"></i></a></td>
										</tr>
										<tr>
											<td><img src="/admin/resources/upload/shop_02.jpg"
												alt=""></td>
											<td>
												<h4>
													<a href="#">Green Furniture </a>
												</h4>
											</td>
											<td>2</td>
											<td>
												<h4>$389.00</h4>
											</td>
											<td>
												<h4>$778.00</h4>
											</td>
											<td><a href="#"><i class="fa fa-close"></i></a></td>
										</tr>
										<tr>
											<td><img src="/admin/resources/upload/shop_03.jpg"
												alt=""></td>
											<td>
												<h4>
													<a href="#">Oldschool Music</a>
												</h4>
											</td>
											<td>2</td>
											<td>
												<h4>$449.00</h4>
											</td>
											<td>
												<h4>$449.00</h4>
											</td>
											<td><a href="#"><i class="fa fa-close"></i></a></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="row">
								<div class="col-lg-12">
									<div class="couponarea clearfix">
										<form class="form-inline">
											<div class="form-group">
												<input type="email" class="form-control"
													placeholder="Enter Coupon here...">
											</div>
											&nbsp;&nbsp;&nbsp;
											<button type="submit" class="button button--aylen btn">Apply
												Coupon</button>
											<div class="pull-right">
												<br>
												<button type="submit" class="button button--aylen btn">Update
													Cart</button>
												<button type="submit" class="button button--aylen btn">Proceed
													to Checkout</button>
											</div>
										</form>
									</div>
									<!-- end couponarea -->
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
						</div>
						<!-- end step 1 -->
					
							<div class="tab-pane fade active in" id="step2">
								<div class="row">
									<div class="col-md-8"
										style="text-align: center; width: 100%; padding-left: 100px; padding-right: 100px;">

										<div class="widget-title">
											<h2 style="color: #555">Fill in the form ↓↓</h2>
											<hr>
										</div>
										<table class="table">
											<tbody>
												<tr class="row">
													<td class="col-md-3" style="width: 50%;">
													<input type="radio" name="people" value="user" checked="checked" />일반
													<input type="radio" name="people" value="company" />기업
													<input type="text" class="form-control input-lg" id="id" name="id" placeholder="ID" style="margin-bottom: 10px; display: inline; width: 389.8px;">
													<input type="email" class="form-control input-lg" id="email" name="email" placeholder="Email" style="display: inline; width: 389.8px;">
														
													<button type="submit" id="search" class="button button--aylen btn" 
															style="margin-top: 20px; width: 110px; height: 50px; 
															font-size: 20px; border-radius: 35px;">Search</button></td>
												</tr>
											</tbody>
										</table>
										<!-- end widget-title -->
									</div>
									<!-- end col -->
								</div>
								<!-- end row -->
							</div>

						<div class="tab-pane fade" id="step3">
							<div class="row">
								<div class="emtrycart col-md-12 text-center">
									<h4>
										<i class="fa fa-check"></i> Thanks for your order
									</h4>
								</div>
								<!-- end emtrycart -->
							</div>
						</div>
					</div>
				</div>
				<!-- end checkout-tab -->
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
   <script src="/admin/resources/js/hover.js"></script>
   <script src="/admin/resources/js/threecolgallery.js"></script>
   <script src="/admin/resources/js/index.js"></script>
   <script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script>
		$(function(){
			$('#search').on('click',searchPwd);
		});
		
		function searchPwd(){
			var id = document.getElementById("id").value;
			var email = document.getElementById("email").value;
			var check = $("input[type='radio']:checked:checked");
			 
			//체크박스 갯수만큼 for 문을 돌려 체크된 num의 value값을 가져온다.
			for(var i=0; i<check.length; i++){
				if(check[i].value=="user"){
					location.href="/admin/user/userPwd?id="+id+"&email="+email;
				}
				if(check[i].value=="company"){
					location.href="/admin/user/companyPwd?coId="+id+"&coManagerEmail="+email;
				}
			}    
		}
	</script>
	
</body>

</html>