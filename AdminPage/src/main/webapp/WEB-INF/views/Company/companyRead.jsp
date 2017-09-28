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
<title>companyRead</title>
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
<link rel="stylesheet" type="text/css"
	href="/admin/resources/css/custom.css">

<link rel="stylesheet" href="/admin/resources/css/login.min.css">
<link rel="stylesheet" href="/admin/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/admin/resources/css/main.css">
<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body data-brackets-id="23359" style="overflow: visible;">

	<!-- PRELOADER -->
	<div data-brackets-id="23360" id="loader" style="display: none;">
		<div data-brackets-id="23361" class="loader-container">
			<img data-brackets-id="23362" src="/admin/resources/images/load.gif"
				alt="" class="loader-site spinner">
		</div>
	</div>

	<div data-brackets-id="23363" id="wrapper">
		<header data-brackets-id="23364" class="header affix-top">
			<div data-brackets-id="23365" class="container-full">
				<nav class="navbar navbar-inverse yamm"
					style="padding-bottom: 5px; padding-top: 5px; box-shadow: 0 0 30px black; z-index: 50;">
					<%@include file="../navi.jsp"%>
					<!--/.container-fluid -->
				</nav>
			</div>
			<!-- end container -->
		</header>
		<!-- end header -->

		<div class="tab-pane fade active in" id="step2"
			style="padding-bottom: 30px; background-color: white">
			<div class="row" style="background-color: white">
				<div class="col-md-*"
					style="text-align: center; width: 100%; padding-left: 450px; padding-right: 450px; background-color: white">
					<div class="widget-title">
						<h2 style="color: #555">${companyRead.coId}</h2>
						<hr>
					</div>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="step1">
							<div class="shopcart">
								<table class="table" style=" table-layout: fixed; word-break: break-word;">
									<thead class="col-md-*" style="align-items: center">
										<tr>
											<th style="width: 30%">Name</th>
											<td style="width: 70%"><h4>${companyRead.coName}</h4></td>
										</tr>
										<tr>
											<th style="width: 30%">Tel</th>
											<td style="width: 70%"><h4>${companyRead.coTel}</h4></td>
										</tr>
										<tr>
											<th style="width: 30%">ManagerName</th>
											<td style="width: 70%"><h4>${companyRead.coManagerName}</h4></td>
										</tr>
										<tr>
											<th style="width: 30%">ManagerDepartment</th>
											<td style="width: 70%"><h4>${companyRead.coManagerDept}</h4></td>
										</tr>
										<tr>
											<th style="width: 30%">ManagerEmail</th>
											<td style="width: 70%"><h4>${companyRead.coManagerEmail}</h4></td>
										</tr>
										<tr>
											<th style="width: 30%">Authority</th>
											<td style="width: 70%"><h4>${companyRead.coAuthority}</h4></td>
										</tr>
									</thead>
								</table>
							</div>
						</div>
						<!-- end form -->
					</div>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- step2 -->

		<!-- Main Scripts-->
	<script src="/admin/resources/js/jquery.js"></script>
	<script src="/admin/resources/js/bootstrap.min.js"></script>
	<script src="/admin/resources/js/plugins.js"></script>
	<script src="/admin/resources/js/index.js"></script>
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

		<div class="text-center"
			style="padding-bottom: 40px; background-color: white">
			<button type="button" class="btn btn-shopcart"
				style="background-color: #89bbc4; border: #89bbc4;"
				id="companyUpdate">Update</button>
			<button type="button" class="btn btn-shopcart"
				style="background-color: #89bbc4; border: #89bbc4;"
				id="companyDelete">Withdraw</button>
		</div>

		<div data-brackets-id="23585" class="topfooter">
			<div data-brackets-id="23586" class="container">
				<div data-brackets-id="23587" class="row">
					<div data-brackets-id="23588" class="col-md-4 col-sm-4 col-xs-12">
						<a data-brackets-id="23589" class="navbar-brand" href="index.html"><img
							data-brackets-id="23590"
							src="http://127.0.0.1:60627/images/logo@2x.png" alt=""
							width="190" height="60"></a>
					</div>
					<!-- end col -->

					<div data-brackets-id="23591"
						class="col-md-4 col-sm-4 col-xs-12 text-center payments">
						<a data-brackets-id="23592" href="#"><i
							data-brackets-id="23593" class="fa fa-paypal"></i></a> <a
							data-brackets-id="23594" href="#"><i data-brackets-id="23595"
							class="fa fa-credit-card"></i></a> <a data-brackets-id="23596"
							href="#"><i data-brackets-id="23597" class="fa fa-cc-amex"></i></a>
						<a data-brackets-id="23598" href="#"><i
							data-brackets-id="23599" class="fa fa-cc-mastercard"></i></a> <a
							data-brackets-id="23600" href="#"><i data-brackets-id="23601"
							class="fa fa-cc-visa"></i></a> <a data-brackets-id="23602" href="#"><i
							data-brackets-id="23603" class="fa fa-cc-diners-club"></i></a> <a
							data-brackets-id="23604" href="#"><i data-brackets-id="23605"
							class="fa fa-cc-discover"></i></a>
					</div>
					<!-- end col -->

					<div data-brackets-id="23606"
						class="col-md-4 col-sm-4 col-xs-12 text-right">
						<ul data-brackets-id="23607" class="list-inline">
							<li data-brackets-id="23608"><a data-brackets-id="23609"
								href="/admin/">Home</a></li>
							<li data-brackets-id="23610"><a data-brackets-id="23611"
								href="#">Terms of Usage</a></li>
							<li data-brackets-id="23612"><a data-brackets-id="23613"
								href="#">Contact</a></li>
							<li data-brackets-id="23614"><a data-brackets-id="23615"
								class="topbutton" href="/admin/user/companyList">Back<i
									data-brackets-id="23616" class="fa fa-angle-up"></i></a></li>
						</ul>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- top footer -->
	</div>
	<script>
		$(function(){
			$("#companyUpdate").click(function(){
 				if(${sessionScope.id eq "admin"}){
					alert("You do not have permission to modify!");
					return false;
 				}
 				if(${sessionScope.id ne "admin"}){
 					location.href = "/admin/user/companyUpdateForm?coId=${companyRead.coId}";
 				}
			}); 
			
			$("#companyDelete").click(function(){
				var result = confirm("Are you sure you want to delete it?");
				if(result){
					location.href = "/admin/user/companyDelete?coId=${companyRead.coId}";
				}
			});
		});
	</script>
</body>

</html>