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
<title>userList</title>
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

</head>
<body style="overflow: visible;">

	<!-- PRELOADER -->

	<!-- END PRELOADER -->

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

		<!-- end section -->

		<!-- end page-title -->

		<section class="section"
			style="padding-top: 30px; padding-bottom: 50px; z-index: 1;">
			<div class="container">
				<div class="checkout-tab">
					<ul class="nav nav-wizard" style="margin-bottom: 15px;">
						<li class="button button--aylen btn  active"><a
							href="/admin/user/userList">USER</a></li>
						<li class="button button--aylen btn"><a
							href="/admin/user/companyList">COMPANY</a></li>
					</ul>

					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="step1">
							<div class="shopcart">
								<table class="table" style="table-layout: fixed; word-break: break-all; letter-spacing: 2px;">
									<thead>
										<tr>
											<th style="WIDTH: 10%;">ID</th>
											<th style="WIDTH: 10%;">NAME</th>
											<th style="WIDTH: 20%;">EMAIL</th>
											<th style="WIDTH: 10%;">GENDER</th>
											<th style="WIDTH: 20%;">BIRTH</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${userList}" var="user">
											<tr>
												<td style="WIDTH: 10%;">${user.id}</td>
												<td style="WIDTH: 10%;">${user.name}</td>
												<td style="WIDTH: 20%;"><a href="/admin/user/userRead?id=${user.id}">${user.email}</a></td>
												<td style="WIDTH: 10%;">${user.gender}</td>
												<td style="WIDTH: 20%;">${user.birth}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<div class="col-md-12">
								<nav class="text-center">
									<ul class="pagination" id="navigator">
										<li><a
											href="javascript:pageProc(${userNavi.currentPage - userNavi.pagePerGroup},'${userCondition}','${userKeyword}')"><i class="fa fa-fast-backward" aria-hidden="true"></i></a></li>
										<li><a
											href="javascript:pageProc(${userNavi.currentPage - 1},'${userCondition}','${userKeyword}')"><i class="fa fa-step-backward" aria-hidden="true"></i></a></li>
										<c:forEach begin="${userNavi.startPageGroup}"
											end="${userNavi.endPageGroup}" var="counter">
											<c:if test="${counter == userNavi.currentPage}"></c:if>
											<li><a
												href="javascript:pageProc(${counter},'${userCondition}','${userKeyword}','${userCondition}')">${counter}</a></li>
											<c:if test="${counter == userNavi.currentPage}"></c:if>
										</c:forEach>
										<li><a
											href="javascript:pageProc(${userNavi.currentPage + 1},'${userCondition}','${userKeyword}')"><i class="fa fa-step-forward" aria-hidden="true"></i></a></li>
										<li><a
											href="javascript:pageProc(${userNavi.currentPage + userNavi.pagePerGroup},'${userCondition}','${userKeyword}')"><i class="fa fa-fast-forward" aria-hidden="true"></i></a></li>
									</ul>
								</nav>
							</div>
							<div class="row">
								<!-- end col -->
							</div>
							<div class="row">
								<div class="col-lg-12" style="margin-top: 20px;">
									<div class="couponarea clearfix">
										<form class="form-inline" style="text-align: center;"
											action="/admin/user/userList" method="get">
											<div class="sel sel--black-panther"
												style="margin: unset; width: 150px; border: 1px solid #ededed; vertical-align: middle; font-size: 10px; height: 50px;">
												<div class="sel__box sel__box--black-panther"></div>
												<select name="userCondition" id="userCondition"
													style="display: none;">
													<option value="id">ID</option>
													<option value="email">EMAIL</option>
												</select>
											</div>
											<div class="form-group" style="">
												<input type="text" class="form-control"
													name="userKeyword" placeholder="Enter here..."
													style="margin-top: 0px; vertical-align: middle;">
											</div>
											<span class="" style="vertical-align: middle;">
												<button type="submit"
													class="button button--aylen btn btn-lg"
													style="vertical-align: middle;">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</form>
									</div>
									<!-- end couponarea -->
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
						</div>
						<!-- end step 1 -->

						<div class="tab-pane fade" id="step2">
							<div class="row">
								<div class="col-md-8">
									<div class="widget-title">
										<h4>BILLING DETAILS</h4>
									</div>
									<!-- end widget-title -->
									<form>
										<div class="row">
											<div class="form-group col-sm-6">
												<label>First Name*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-6">
												<label>Last Name*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-6">
												<label>Conyacy Number*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-6">
												<label>Email*</label> <input type="email"
													class="form-control" placeholder="">
											</div>
										</div>
										<!-- end row -->

										<div class="hero clearfix">
											<div class="form-group">
												<p>Same Delivery is Only Available in Newyork City Only,
													However we Delivered all the Products Worldwide as soon as
													Possible with High Quality Team.</p>
											</div>
										</div>
										<!-- end row -->

										<div class="row">
											<div class="form-group col-sm-12">
												<label>Address*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-12">
												<input type="text" class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-12">
												<label>Contry</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-6">
												<label>Town / City*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-6">
												<label>State*</label> <input type="text"
													class="form-control" placeholder="">
											</div>
											<div class="form-group col-sm-12">
												<label>Special instruction </label>
												<textarea class="form-control" placeholder=""></textarea>
											</div>
											<div class="form-group col-sm-12">
												<div class="checkbox">
													<label> <input type="checkbox"> CREATE AN
														ACCOUNT
													</label>
												</div>
												<button type="submit" class="button button--aylen btn">Save
													&amp; Continue</button>
											</div>
										</div>
										<!-- end row -->
									</form>
								</div>
								<!-- end col -->

								<div class="col-md-4">
									<div class="widget">
										<div class="widget-title">
											<h4>YOUR ORDER</h4>
										</div>
										<!-- end widget-title -->

										<hr class="invis">

										<div class="ordertotal clearfix">
											<header>
												<h3>
													PRODUCT <span>TOTAL PRICE</span>
												</h3>
											</header>
											<div class="orderbody">
												<a href="#">Old School Telephone</a> <span>$55.00</span>
											</div>
											<!-- end orderbody -->
											<div class="orderbottom">
												<ul>
													<li>
														<h4>
															Cart Subtotal <span>$55.00</span>
														</h4>
													</li>
													<li>
														<h4>
															Shipping and Handling <span>Free Shipping</span>
														</h4>
													</li>
													<li>
														<h4>
															Order Total <span>1223.00 USD</span>
														</h4>
													</li>
												</ul>
											</div>
											<!-- end orderbody -->
										</div>
										<!-- end ordertotal -->
									</div>
									<!-- end widget -->

									<hr class="invis">

									<div class="widget">
										<div class="widget-title">
											<h4>PAYMENT METHOD</h4>
										</div>
										<!-- end widget-title -->

										<hr class="invis">

										<div class="payment-methods">

											<div class="content-widget">
												<div class="accordion-widget">
													<div class="accordion-toggle-2">
														<div class="panel-group" id="accordion3">
															<div class="panel panel-default">
																<div class="panel-heading">
																	<div class="panel-title">
																		<a class="accordion-toggle" data-toggle="collapse"
																			data-parent="#accordion3" href="#collapseFour">
																			PayPal <i class="indicator fa fa-plus"></i>
																		</a>
																	</div>
																</div>
																<div id="collapseFour" class="panel-collapse collapse">
																	<div class="panel-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipiscing elit. Integer lorem quam, adipiscing
																			condimentum tristique vel.</p>
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading">
																	<div class="panel-title">
																		<a class="accordion-toggle" data-toggle="collapse"
																			data-parent="#accordion3" href="#collapseFive">
																			Credit Card <i class="indicator fa fa-plus"></i>
																		</a>
																	</div>
																</div>
																<div id="collapseFive" class="panel-collapse collapse">
																	<div class="panel-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipiscing elit. Integer lorem quam, adipiscing
																			condimentum tristique vel.</p>
																	</div>
																</div>
															</div>
															<div class="panel panel-default">
																<div class="panel-heading">
																	<div class="panel-title">
																		<a class="accordion-toggle" data-toggle="collapse"
																			data-parent="#accordion3" href="#collapseSix">
																			Direct Ban Transfer <i class="indicator fa fa-plus"></i>
																		</a>
																	</div>
																</div>
																<div id="collapseSix" class="panel-collapse collapse">
																	<div class="panel-body">
																		<p>Lorem ipsum dolor sit amet, consectetur
																			adipiscing elit. Integer lorem quam, adipiscing
																			condimentum tristique vel, eleifend sed turpis.
																			Pellentesque cursus arcu id magna euismod in
																			elementum purus molestie..</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- accordion -->
												</div>
												<!-- end accordion-widget -->
											</div>
											<!-- end content-widget -->

											<hr class="invis">

											<div class="form-group">
												<div class="checkbox">
													<label> <input type="checkbox"> I Have
														Accept The <a href="#">Terms &amp; Contions</a>
													</label>
												</div>

												<hr class="invis">

												<button type="submit" class="button button--aylen btn">Place
													Order</button>
											</div>
										</div>
										<!-- end oayment -->
									</div>
									<!-- end widget -->
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
				<div class="row" style="vertical-align: middle;">
					<div class="col-md-4 col-sm-4 col-xs-12" style="vertical-align: m;">
						<a class="navbar-brand" href="index.html"><img
							src="/admin/resources/images/logo.png" alt=""></a>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 text-center payments"
						style="vertical-align: middle;">
						<a href="#"><i class="fa fa-paypal"></i></a> <a href="#"><i
							class="fa fa-credit-card"></i></a> <a href="#"><i
							class="fa fa-cc-amex"></i></a> <a href="#"><i
							class="fa fa-cc-mastercard"></i></a> <a href="#"><i
							class="fa fa-cc-visa"></i></a> <a href="#"><i
							class="fa fa-cc-diners-club"></i></a> <a href="#"><i
							class="fa fa-cc-discover"></i></a>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 text-right">
						<ul class="list-inline"
							style="vertical-align: middle; margin-bottom: 0px;">
							<li><a href="/admin/">Home</a></li>
							<li><a href="#">Terms of Usage</a></li>
							<li><a href="#">Contact</a></li>
							<li><a class="topbutton" href="/admin/user/connectedUser"
								style="bottom: -100px;">Back<i class="fa fa-angle-up"></i></a></li>
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
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script src="/admin/resources/js/bootstrap.min.js"></script>
	<script src="/admin/resources/js/plugins.js"></script>
	<script src="/admin/resources/js/index.js"></script>

	<script>
		function pageProc(currentPage, userCondition, userKeyword) {
			location.href = "/admin/user/userList?currentPage="
					+ currentPage + "&userCondition=" + userCondition
					+ "&userKeyword=" + userKeyword;
		}
	</script>
</body>

</html>