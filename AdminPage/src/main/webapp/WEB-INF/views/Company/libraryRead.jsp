<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>libraryRead</title>
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
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->

<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style type="text/css">
.modal-btn {
	position: relative;
	display: table-cell;
	width: 100px;
	height: 100px;
	background-color: #2c3e50;
	box-shadow: 0 0 40px rgba(0, 0, 0, 0.3);
	border-radius: 50%;
	font-size: 36px;
	color: white;
	text-align: center;
	line-height: 2.75;
	transition: box-shadow 250ms ease;
}

.modal-btn:hover {
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}

.modal-bg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	z-index: 10;
	visibility: hidden;
	transition: background-color 250ms linear;
}

.modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 50%;
	height: auto;
	margin-top: -18%;
	margin-left: -25%;
	padding: 30px;
	background-color: white;
	border-radius: 4px;
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);
	transform: scale(0);
	transition: transform 250ms ease;
	visibility: hidden;
	z-index: 20;
}

.modal-content .close {
	position: relative;
	float: right;
	font-size: 18px;
	transition: transform 500ms ease;
	z-index: 11;
}

.modal-content .close:hover {
	color: #3498db;
	transform: rotate(540deg);
}

.modal-content header {
	position: relative;
	display: block;
	border-bottom: 1px solid #eee;
}

.modal-content header h2 {
	margin: 0 0 10px;
	padding: 0;
	font-size: 28px;
}

.modal-content article {
	position: relative;
	display: block;
	margin: 0;
	padding: 0;
	font-size: 16px;
	line-height: 1.75;
}

.modal-content footer {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: flex-end;
	width: 100%;
	margin: 0;
	padding: 10px 0 0;
}

.modal-content footer .button {
	position: relative;
	padding: 10px 30px;
	border-radius: 3px;
	font-size: 14px;
	font-weight: 400;
	color: white;
	text-transform: uppercase;
	overflow: hidden;
}

.modal-content footer .button:before {
	position: absolute;
	content: '';
	top: 0;
	left: 0;
	width: 0;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.2);
	transition: width 250ms ease;
	z-index: 0;
}

.modal-content footer .button:hover:before {
	width: 100%;
}

.modal-content footer .button.success {
	margin-right: 5px;
	background-color: #2ecc71;
}

.modal-content footer .button.danger {
	background-color: #e74c3c;
}

#modal {
	display: none;
}

#modal:checked ~ .modal-bg {
	visibility: visible;
	background-color: black;
	opacity: 0.7;
	transition: background-color 250ms linear;
}

#modal:checked ~ .modal-content {
	visibility: visible;
	transform: scale(1);
	transition: transform 250ms ease;
	z-index: 111;
}
</style>
</head>
<body style="overflow: visible;">
	<script>
		function sendMessage() {
			location.href = "/admin/file/sendMessage";
		}

		function furnitureDelete() {

			var furnitureNum = '${sessionScope.furnitureNum}';

			location.href = "/admin/file/furnitureDelete?furnitureNum="
					+ furnitureNum;
		}
	</script>

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
			<div class="container" style="width: 1300px;">
				<div class="checkout-tab">

					<div id="myTabContent" class="">
						<div class="tab-pane fade active in" id="step1">
							<div class="shopcart">
								<form action="/admin/file/sendMessage" name="fm" method="post"
									style="text-align: center; width: min-content; margin-left: auto; margin-right: auto;">
									<img src="/admin/resources/file/${libraryRead.imgPath}"
										style="width: 450px; height: 450px; max-height: 750px; max-width: 750px;">
									<table class="table"
										style="table-layout: fixed; word-break: break-all; letter-spacing: 2px; width: 550px; margin-left: auto; margin-right: auto;">
										<thead>
											<tr>
												<th>가구 번호</th>
												<td>${libraryRead.furnitureNum}</td>
											</tr>
											<tr>
												<th>가구 회사</th>
												<td>${libraryRead.coNAME}</td>
											</tr>
											<tr>
												<th>가구 이름</th>
												<td>${libraryRead.furnitureName}</td>
											</tr>
											<tr>
												<th>가구 종류</th>
												<td>${libraryRead.type}</td>
											</tr>
										</thead>

									</table>
									<input class="btn btn-primary pull-left" type="button"
										value="뒤로" style="margin: 5px" onclick="history.go(-1)">

									<c:if test="${sessionScope.CoId != null}">
										<input class="btn btn-primary pull-right" type="button"
											value="삭제" style="margin: 5px" onclick="furnitureDelete()">
									</c:if>
									<c:if test="${sessionScope.CoId == null}">
										<input type="hidden" name="furnitureNum"
											value="${libraryRead.furnitureNum}">
										<label class="btn btn-primary pull-right" for="modal"
											style="margin: 5px; height: 34px;">메시지 보내기</label>
									</c:if>
								</form>
								<input type="checkbox" id="modal" /> <label for="modal"
									class="modal-bg"></label>
								<div class="modal-content"
									style="text-align: center; width: 40%; margin-left: auto; left: 30%; margin-right: auto;">
									<label for="modal" class="close"> <i
										class="fa fa-times" aria-hidden="true"></i>
									</label>
									<header>
										<h2>Send a Message</h2>
									</header>
									<form action="/admin/file/send" method="post" name="sendForm">
										<article class="content">
											<input type="text" name="coManagerEmail" id="coManagerEmail"
												class="form-control input-lg" placeholder="ManagerEmail"
												style="margin: 10px; width: 70%; margin-left: auto; margin-right: auto;"
												required="required"> <input type="text" name="title"
												id="title" class="form-control input-lg" placeholder="Title"
												style="margin: 10px; width: 70%; margin-left: auto; margin-right: auto;"
												required="required">
											<textarea class="form-control" name="content"
												style="font-size: 20px; width: 70%; height: 200px; margin-left: auto; margin-right: auto;"
												required="required" placeholder="Message"></textarea>
										</article>
										<footer>
											<button class="button success" type="button" id="sendBtn">Send</button>
											<label for="modal" class="button danger"
												style="margin-bottom: 0px;">Cancel</label>
										</footer>
									</form>
								</div>
							</div>

						</div>
						<!-- end step 1 -->
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
						<a class="navbar-brand" href="#"><img
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
							<li><a class="topbutton" href="#"
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
		$("#sendBtn").click(function() {
			document.sendForm.submit();
		});

		function popModal() {
			$("#modal").removeAttr("checked");
			$("#modal").attr("checked", "checked");
		}
	</script>
</body>

</html>