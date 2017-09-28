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
<title>writeForm</title>
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

<!-- <link rel='stylesheet prefetch' -->
<!-- 	href='https://fonts.googleapis.com/css?family=Lato|Quicksand'> -->
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style>
.check1 {
	border-radius: 40%;
	border-color: rgba(0, 0, 0, .5);
	border-width: 5px;
	border-style: dotted;
}
</style>
</head>
<body style="overflow: visible;">
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
		<!-- end page-title -->

		<section class="section"
			style="padding-top: 30px; padding-bottom: 30px; z-index: 1; min-height: 750px;">
			<div class="container">
				<div class="checkout-tab">
					<div id="myTabContent" class="tab-content">
						<!-- end step 1 -->
						<div class="tab-pane fade active in" id="step2">
							<div class="row" style="">
								<div class="col-md-6"
									style="text-align: center; width: 100%; padding-left: 200px; padding-right: 200px;">
									<div class="widget-title">
										<h2 style="color: #555">게시글 작성이야</h2>
										<hr>
									</div>
									<form action="writeBoard" name="fm" method="post">
									<table class="table">
										<tbody>
											<tr>
												<td class="" style="width: 25%; padding: 30px;">
													<div
														class="input-group margin-bottom-sm panel panel-default"
														style="margin-top: 10px; margin-bottom: 0px; width: -webkit-fill-available;">
														<div class="panel-heading"
															style="width: 129.6px; height: 44.4px; border-color: rgb(204, 204, 204); background-color: #eee; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(204, 204, 204); letter-spacing: 2px;">
															<div class="panel-title">
																<a class="accordion-toggle collapsed"
																	data-toggle="collapse" data-parent="#accordion3"
																	href="#collapseFive" aria-expanded="false"
																	style="font-size: 20px; color: rgb(85, 85, 85);">IMAGE<i
																	class="indicator fa fa-plus"></i>
																</a>
															</div>
														</div>
														<div id="collapseFive" class="panel-collapse collapse"
															aria-expanded="false" style="">
															<div class="panel-body"
																style="width: -webkit-fill-available;">
																<!-- 해당 사용자의 스크린샷 이미지리스트 불러와서 -->
																<div id="da-thumbs" class="da-thumbs isotope"
																	style="position: relative; overflow: hidden; min-height: 50px; width: -webkit-fill-available;">
																	<!-- 이미지 없을떄 -->
																	<c:if test="${imgList == null}">
																		<h4>서버에 저장된 이미지가 존재하지 않습니다.</h4>
																	</c:if>
																	<!-- 이미지 있을 때-->
																	<c:if test="${imgList != null}">
																		<c:forEach items="${imgList}" var="vo">
																			<div class="col-md-3 col-sm-3 team-member"
																				style="width: unset; padding: unset;">
																				<div class="about-widget" style="display: unset;">
																					<div class="post-media"
																						style="width: unset; height: unset; display: unset;">
																						<img src="/admin/resources/upload/${vo.imgUuid}"
																							alt="" class="img-responsive img-check" id="${vo.imgUuid}"
																							style="width: 226px; height: 200px; margin: unset; display: unset;">
																						<input type="checkbox" name="imgChecked"
																							value="${vo.imgUuid}" class="hidden"
																							autocomplete="off">
																					</div>
																				</div>
																			</div>
																		</c:forEach>
																	</c:if>
																</div>
															</div>
														</div>
													</div>
													<div class="input-group margin-bottom-sm"
														style="margin-top: 10px;">
														<span class="input-group-addon"
															style="letter-spacing: 1px; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(204, 204, 204); font-size: 20px; width: 130px;">TITLE</span>
														<input class="form-control" type="text" placeholder="" name="title"
															style="font-size: 25px; width: 580px;">
													</div>
													<div class="input-group margin-bottom-sm"
														style="margin-top: 10px; display: none;">
														<span class="input-group-addon"
															style="letter-spacing: 1px; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(204, 204, 204); font-size: 20px; width: 130px;">ID</span>
														<input class="form-control" type="text" placeholder=""
															style="font-size: 25px; width: 580px;">
													</div>
													<div class="input-group margin-bottom-sm"
														style="margin-top: 10px;">
														<span class="input-group-addon"
															style="letter-spacing: 1px; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(204, 204, 204); font-size: 20px; width: 130px;">CONTENT</span>
														<textarea class="form-control" name="content"
															style="font-size: 20px; width: 580px; height: 300px"></textarea>
													</div>
<input type="hidden" id="imgUuid1" name="imgUuid1" value="">
<input type="hidden" id="imgUuid2" name="imgUuid2" value="">
<input type="hidden" id="imgUuid3" name="imgUuid3" value="">
													<button type="button" class="button button--aylen btn" onclick="imgCheck();"
														style="float: right; margin: 10px; display: inline; width: 79px; height: 45px;">Post</button>

												</td>
											</tr>
										</tbody>
									</table>
									</form>
									<!-- end widget-title -->
								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
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
						<a class="navbar-brand" href="/admin/"><img
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
	<script src="/admin/resources/js/threecolgallery.js"></script>
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script>
	
	function imgCheck() {
		alert("왔어");
		var checkedList = document.getElementsByClassName("check1");
		
		var chLength = document.getElementsByClassName("check1").length;
		alert("몇개?"+chLength);
		
		if (chLength == 3) {
			alert("3");
			document.getElementById("imgUuid1").value = checkedList[0].id; 
			document.getElementById("imgUuid2").value = checkedList[1].id; 
			document.getElementById("imgUuid3").value = checkedList[2].id; 
		} else if (chLength == 2) {
			alert("32");
			document.getElementById("imgUuid1").value = checkedList[0].id; 
			document.getElementById("imgUuid2").value = checkedList[1].id; 
		} else if (chLength == 1) {
			alert("321");
			document.getElementById("imgUuid1").value = checkedList[0].id; 
		} else {
			alert("이미지를 선택해주십시오");
			return false;
		}
		
		document.fm.submit();	
	}
	
		$(document).ready(function(e) {
			$(".img-check").click(function() {

				$(this).toggleClass("check1");

// 				alert(document.getElementsByClassName("check1")[0].innerHTML);
				var chkbox = document.getElementsByClassName("check1").length;
				if (chkbox > 3) {
					alert("이미지는 3개만 가능합니다.");
					$(this).toggleClass("check1");
				}
			});
			
			
			
			
			
			
		});
	</script>
</body>

</html>