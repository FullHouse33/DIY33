<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<title>Gallery</title>
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

<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body style="overflow: visible;">
	<!-- PRELOADER -->
	<div id="loader" style="display: none;">
		<div class="loader-container">
			<img src="/admin/resources/images/load.gif" alt="" class="loader-site spinner">
		</div>
	</div>
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

		<!-- end section -->

		<!-- end page-title -->

		<section class="section lb" style="padding-top: 30px; padding-bottom: 30px; z-index: 1; min-height: 750px;">
			<div class="container">

				<div class="row">
					<div id="content" class="col-md-12 col-sm-12 single-blog">
						<div class="row">
							<div class="blog-wrapper col-md-12">
								<div class="carousel-widget">
									<div id="myCarousel1" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner" role="listbox">
											<div class="item active">
												<img src="/admin/resources/img/${read.imgUuid}" alt=""
													class="img-responsive">
											</div>
										</div>

										<a class="left carousel-control" href="#myCarousel1"
											role="button" data-slide="prev"> <span
											class="fa fa-angle-left" aria-hidden="true"></span> <span
											class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#myCarousel1"
											role="button" data-slide="next"> <span
											class="fa fa-angle-right" aria-hidden="true"></span> <span
											class="sr-only">Next</span>
										</a>
									</div>
								</div>
								<!-- end media -->

								<div class="blog-desc">
									<span class="post-date" style="padding-bottom: unset;">${read.inputdate}</span>
									<h2>${read.title}</h2>

									<div class="post-meta">
										<ul class="list-inline">
											<li><a><i class="fa fa-tag"></i>ID: ${read.id}</a></li>
											<li><a><i class="fa fa-comment"></i>댓글 수: ${count}</a></li>
											<li><a><i class="fa fa-eye"></i>조회 수: ${read.hit}</a></li>
										</ul>
										<!-- end ul -->
									</div>
									<!-- end meta -->

									<hr style="margin: 5px;">
									<p style="padding-bottom: unset;">${read.content}</p>
									<hr style="margin: 5px;">
									<div style="text-align: right;">
										<c:if test="${sessionScope.id == read.id}">
											<button class="btn btn-primary" onclick="modify()"
												style="margin: 5px;">수정</button>
											<button class="btn btn-primary" onclick="deletes()"
												style="margin: 5px;">삭제</button>
										</c:if>
									</div>
								</div>
								<!-- end desc -->

								<div class="blog-desc">
									<div class="post-padding">
										<div class="widget-title">
											<h4>댓글 수 Comments</h4>
											<hr>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="panel">
													<div class="panel-body comments">
														<ul class="media-list">
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="contact_form">
										<div class="widget-title">
											<h4>Leave a Comment</h4>
											<hr>
										</div>

										<div class="contact_form">
											<form class="row">
												<div class="col-md-12 col-sm-12">
													<label>Comment <span class="required">*</span></label>

													<textarea class="form-control" name="text" id="text"
														class="replyText" placeholder="" style="height: 64px;"></textarea>
												</div>
												<div class="col-md-12 col-sm-12">
													<input type="button" name="replyButton" id="replyButton"
														value="Send Comment" onclick="replyCheck()"
														class="button button--aylen btn">
												</div>
											</form>
										</div>
										<!-- end commentform -->
									</div>
									<!-- end postpager -->
								</div>
								<!-- end content -->
							</div>
							<!-- end blog-wrapper -->
						</div>
						<!-- end blog-list row -->
					</div>
					<!-- end content -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</section>
		<!-- end section -->

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
							<li><a class="topbutton" href="#" style="bottom: -100px;">Back
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
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script>
		//댓글 조회
		$(function() {
			getReplyList();
		});
		
		function getReplyList() {
			$.ajax({
				url : "/admin/board/getReplyList",
				type : "post",
				data : {
					"galleryNum" : "${read.galleryNum}"
				},
				dataType : "json",
				success : function(result) {
					$(".media-list").empty();
	
					$(result).each(
						function(index, item) {
							var addRow = '<li class="media" style=" margin-bottom: 5px;">'
									+ '<div class="comment">'
									+ '<div class="media-body">'
									+ '<strong class="text-success">'
									+ item.id + '</strong>';
							addRow += '<span class="text-muted"><small class="text-muted">'
									+ item.inputdate
									+ '</small></span>';
	
							addRow += '<p id="replyone" >'
									+ item.text + '</p>';
	
							if ("${id}" == item.id) {
								addRow += '<button class="button button--aylen btn btn-sm" onclick="replyModify('
										+ item.replyNum
										+ ')">수정</button>'
										+ '<button  onclick="deleteReply('
										+ item.replyNum
										+ ')" class="button button--aylen btn btn-sm">삭제</button>'
	
							}
							addRow += '</div><div class="clearfix"></div></div></li>';
							;
							$(".media-list").append(addRow);
					});
				}
			});
		}

		//댓글 작성
		function replyCheck() {
			var text = document.getElementById("text");

			if (text.value == "") {
				alert("메시지를 입력해주세요");
				replyCheck.focus();
			} else {
				$.ajax({
					url : "/admin/board/writeReply",
					type : "post",
					data : {
						"galleryNum" : '${read.galleryNum}',
						"id" : '${sessionScope.id}',
						"text" : $('#text').val()
					},
					success : getReplyList
				});
			}
		}

		//댓글 삭제
		function deleteReply(replyNum) {
			var result = confirm("댓글을 삭제하시겠습니까?");
			if (result) {
				$.ajax({
					url : "/admin/board/deleteReply",
					type : "post",
					data : {
						"replyNum" : replyNum
					},
					success : getReplyList
				});
			}
		}

		function modify() {
			location.href = "/admin/board/modifyform?galleryNum=${read.galleryNum}";
		}

		function deletes() {
			location.href = "/admin/board/delete?galleryNum=${read.galleryNum}";
		}
	</script>
</body>

</html>