<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <script src="resources/js/jquery-3.2.1.js"></script> -->
<!-- <!DOCTYPE html> -->
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
<title>libraryUpload</title>
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
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="/admin/resources/css/responsive.css"> -->
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
<style type="text/css">
.center-on-page {
	/* 	position: relative; */
	/* 	top: 50%; */
	/* 	left: 50%; */
	/* 	transform: translate(-50%, -50%); */
	
}

input[type="checkbox"], input[type="radio"] {
	position: absolute;
	opacity: 0;
	z-index: -1;
}

label {
	position: relative;
	display: inline-block;
	margin-right: 10px;
	margin-bottom: 10px;
	padding-left: 30px;
	padding-right: 10px;
	line-height: 36px;
	cursor: pointer;
}

label.col1::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid red;
	border-radius: 4px;
	z-index: -1;
}

label.col2::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid gray;
	border-radius: 4px;
	z-index: -1;
}

label.col3::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid green;
	border-radius: 4px;
	z-index: -1;
}

label.col4::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid black;
	border-radius: 4px;
	z-index: -1;
}

label.col5::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid white;
	border-radius: 4px;
	z-index: -1;
}

label.col6::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid orange;
	border-radius: 4px;
	z-index: -1;
}

label.col7::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid brown;
	border-radius: 4px;
	z-index: -1;
}

label.col8::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid navy;
	border-radius: 4px;
	z-index: -1;
}

label.col9::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid beige;
	border-radius: 4px;
	z-index: -1;
}

label.col10::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid pink;
	border-radius: 4px;
	z-index: -1;
}

label.col11::before {
	box-shadow: 0 0 5px black;
	content: " ";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 24px;
	height: 24px;
	border: 5px solid;
	border-radius: 4px;
	z-index: -1;
}

input[type="radio"]+label::before {
	border-radius: 18px;
}
/*  Checked  폰트색 */
input[type="radio"].col1:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col2:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col3:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col4:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col5:checked+label {
	padding-left: 10px;
	color: #black;
}

input[type="radio"].col6:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col7:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col8:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col9:checked+label {
	padding-left: 10px;
	color: #black;
}

input[type="radio"].col10:checked+label {
	padding-left: 10px;
	color: #fff;
}

input[type="radio"].col11:checked+label {
	padding-left: 10px;
	color: #black;
}

input[type="radio"].col1:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: red;
}

input[type="radio"].col2:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: gray;
}

input[type="radio"].col3:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: green;
}

input[type="radio"].col4:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: black;
}

input[type="radio"].col5:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: white;
}

input[type="radio"].col6:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: orange;
}

input[type="radio"].col7:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: brown;
}

input[type="radio"].col8:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: navy;
}

input[type="radio"].col9:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: beige;
}

input[type="radio"].col10:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background: pink;
}

input[type="radio"].col11:checked+label::before {
	top: 0;
	width: 100%;
	height: 100%;
	background:;
}
/* Transition */
label, label::before {
	-webkit-transition: .25s all ease;
	-o-transition: .25s all ease;
	transition: .25s all ease;
}

/* 업로드버튼 */
.fileUpload {
	position: relative;
	overflow: hidden;
	/*     margin: 10px; */
}

.fileUpload input.upload {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
}
</style>
</head>

<body style="overflow: visible;">
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
					style="padding-bottom: 5px; padding-top: 5px; box-shadow: 0 0 30px black; z-index: 50;">
					<%@include file="../navi.jsp"%>
					<!--/.container-fluid -->
				</nav>
			</div>
			<!-- end container -->
		</header>
		<section class="section paralbackground parallax content-light"
			style="background-image: url('/admin/resources/upload/blue-flower-desktop-wallpapers_034249562.jpg');"
			data-img-width="2000" data-img-height="2000" data-diff="10">
			<div class="container">
				<div class="section-title text-center clearfix">
					<p>Let's see What Others Say About HomeStyle!</p>
				</div>
				<!-- end title -->

				<!-- 				<div id="owl-testimonial" class="text-center"> -->
				<!-- 					<div class="testi-item"> -->
				<!-- 						<p class="lead">It was popularised in the with the release of -->
				<!-- 							Letraset sheets containing Lorem Ipsum passages, and more -->
				<!-- 							recently with desktop ...</p> -->
				<!-- 					</div> -->
				<!-- 					end item -->

				<!-- 					<div class="testi-item"> -->
				<!-- 						<p class="lead">It was popularised in the with the release of -->
				<!-- 							Letraset sheets containing Lorem Ipsum passages, and more -->
				<!-- 							recently with desktop ...</p> -->
				<!-- 					</div> -->
				<!-- 					end item -->
				<!-- 				</div> -->
				<!-- end relative -->

			</div>
			<!-- end container -->
		</section>
		<!-- end section -->
		<div class="page-title lb">
			<div class="container clearfix">
				<div class="title-area pull-left">
					<h2>
						Upload Furniture Model
						<small>Upload your product</small>
					</h2>
				</div>
				<!-- /.pull-right -->
				<div class="pull-right hidden-xs">
					<div class="bread">
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active">Page</li>
						</ol>
					</div>
					<!-- end bread -->
				</div>
				<!-- /.pull-right -->
			</div>
		</div>

		<section class="section"
			style="padding-top: 30px; padding-bottom: 30px; z-index: 1; min-height: 750px;">
			<form name="uploadForm" method="post" enctype="multipart/form-data"
				action="/admin/file/fileSaved" onsubmit='return check();'>
				<input type="hidden" name="coNAME" value="${sessionScope.coName}">
				<div class="center-on-page">
					<table
						style="margin-left: auto; margin-right: auto; text-align: left; width: 600px;">
						<tbody>
							<tr>
								<td colspan="4" style="text-align: center; padding: 5px;">
									<input type="text" class="form-control" id="searchKeyword"
									placeholder="Furniture Name" id="furnitureName"
									name="furnitureName"
									style="margin-top: 0px; vertical-align: middle; height: 45px; font-size: 20px; margin-right: 0px; border: 1px solid #ededed; width: 450px; margin-left: auto; margin-right: auto;">
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center; padding: 5px;">
									<div class="sel sel--black-panther "
										style="margin: unset; border: 1px solid #ededed; border-radius: 4px; width: 450px;">
										<select name="type" id="select-profession">
											<option value="" disabled>Furniture Type</option>
											<option value="Table">Table</option>
											<option value="Chair">Chair</option>
											<option value="Sofa">Sofa</option>
											<option value="Bed">Bed</option>
											<option value="Closet">Closet & Drawers</option>
											<option value="Others">Others</option>
										</select>
									</div>

								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center; padding: 5px;">
									<div class="content-widget">
										<div class="accordion-widget">
											<div class="accordion-toggle-2">
												<div class="panel-group" id="accordion3"
													style="margin-bottom: unset;">
													<div class="panel panel-default"
														style="margin-bottom: 0px; width: fit-content; min-width: 450px; margin-left: auto; margin-right: auto;">
														<div class="panel-heading">
															<div class="panel-title">
																<a class="accordion-toggle collapsed"
																	data-toggle="collapse" data-parent="#accordion3"
																	href="#collapseFour" aria-expanded="false"> Point
																	Color ? <i class="indicator fa fa-plus"></i>
																</a>
															</div>
														</div>
														<div id="collapseFour" class="panel-collapse collapse"
															aria-expanded="false" style="height: 0px;">
															<div class="panel-body">
																<table
																	style="margin-left: auto; margin-right: auto; text-align: left; width: 500px;">
																	<tbody>
																		<tr>
																			<td style="padding: 5px; padding-left: 30px"><input
																				type="radio" name="color" id="col1" class="col1"
																				value="Red"><label class="col1" for="col1">Red</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col2" class="col2" value="Gray"><label
																				class="col2" for="col2">Gray</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col3" class="col3" value="Green"><label
																				class="col3" for="col3">Green</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col4" class="col4" value="black"><label
																				class="col4" for="col4">Black</label></td>
																		</tr>
																		<tr>
																			<td style="padding: 5px; padding-left: 30px;"><input
																				type="radio" name="color" id="col5" class="col5"
																				value="White"><label class="col5" for="col5">White</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col6" class="col6"
																				value="Orange&amp;Yellow"><label
																				class="col6" for="col6">Orange&amp;Yellow</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col7" class="col7" value="Brown"><label
																				class="col7" for="col7">Brown</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col8" class="col8"
																				value="Navy&amp;Blue"><label class="col8"
																				for="col8">Navy&amp;Blue</label></td>
																		</tr>
																		<tr>
																			<td style="padding: 5px; padding-left: 30px;"><input
																				type="radio" name="color" id="col9" class="col9"
																				value="Beige&amp;Ivory"><label class="col9"
																				for="col9">Beige&amp;Ivory</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col10" class="col10"
																				value="Pink&amp;Purple"><label class="col10"
																				for="col10">Pink&amp;Purple</label></td>
																			<td style="padding: 5px;"><input type="radio"
																				name="color" id="col11" class="col11" value="Other"><label
																				class="col11" for="col11">Other</label></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- accordion -->
										</div>
										<!-- end accordion-widget -->
									</div>
								</td>
							</tr>
							<!-- 							<tr> -->
							<!-- 								<td style="padding: 5px; padding-left: 30px"><input type="radio" name="color" id="col1" class="col1" -->
							<!-- 									value="Red"><label class="col1" for="col1">Red</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col2" class="col2" -->
							<!-- 									value="Gray"><label class="col2" for="col2">Gray</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col3" class="col3" -->
							<!-- 									value="Green"><label class="col3" for="col3">Green</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col4" class="col4" -->
							<!-- 									value="black"><label class="col4" for="col4">Black</label></td> -->
							<!-- 							</tr> -->
							<!-- 							<tr> -->
							<!-- 								<td style="padding: 5px; padding-left: 30px;"><input type="radio" name="color" id="col5" class="col5" -->
							<!-- 									value="White"><label class="col5" for="col5">White</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col6" class="col6" -->
							<!-- 									value="Orange&amp;Yellow"><label class="col6" -->
							<!-- 									for="col6">Orange&amp;Yellow</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col7" class="col7" -->
							<!-- 									value="Brown"><label class="col7" for="col7">Brown</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col8" class="col8" -->
							<!-- 									value="Navy&amp;Blue"><label class="col8" for="col8">Navy&amp;Blue</label></td> -->
							<!-- 							</tr> -->
							<!-- 							<tr> -->
							<!-- 								<td style="padding: 5px; padding-left: 30px;"><input type="radio" name="color" id="col9" class="col9" -->
							<!-- 									value="Beige&amp;Ivory"><label class="col9" for="col9">Beige&amp;Ivory</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col10" -->
							<!-- 									class="col10" value="Pink&amp;Purple"><label -->
							<!-- 									class="col10" for="col10">Pink&amp;Purple</label></td> -->
							<!-- 								<td style="padding: 5px;"><input type="radio" name="color" id="col11" -->
							<!-- 									class="col11" value="Other"><label class="col11" -->
							<!-- 									for="col11">Other</label></td> -->
							<!-- 							</tr> -->
							<tr>
								<td colspan="4" style="text-align: center; padding: 5px;"><div>
										<div style="">
											<input class="form-control input-lg" id="uploadObjFile"
												placeholder="3D Object File" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadObjBtn" type="file"
													class="upload" name="uploadFile" style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="uploadMtlFile"
												placeholder="Material File" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadMtlBtn" type="file"
													class="upload" name="uploadFile" style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="upload2dFile"
												placeholder="Thumbnail Img" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="upload2dBtn" type="file"
													class="upload" name="uploadFile" style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="uploadTexture1File"
												placeholder="Texture" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadTexture1Btn"
													type="file" class="upload" name="uploadFile"
													style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="uploadTexture2File"
												placeholder="Texture" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadTexture2Btn"
													type="file" class="upload" name="uploadFile"
													style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="uploadTexture3File"
												placeholder="Texture" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadTexture3Btn"
													type="file" class="upload" name="uploadFile"
													style="bottom: 0px;">
											</div>
										</div>
										<div style="">
											<input class="form-control input-lg" id="uploadTexture4File"
												placeholder="Texture" disabled="disabled"
												style="font-size: 20px; width: 400px; margin: 10px; display: unset; cursor: unset;">
											<div class="fileUpload btn btn-primary"
												style="height: 35px; margin-bottom: 4px;">
												<span>Upload</span> <input id="uploadTexture4Btn"
													type="file" class="upload" name="uploadFile"
													style="bottom: 0px;">
											</div>
										</div>
									</div></td>
							</tr>
							<tr>
								<td colspan="4">
									<button type="submit" class="button button--aylen btn"
										style="margin: 10px; width: 79px; height: 45px; margin-left: auto; margin-right: auto; border-radius: 25px; font-size: 20px;">Save</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 				<input type="submit" value="파일저장" class="btn btn-primary" style="width: 142px;" /> -->
			</form>
			<!-- end container-fluid -->
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

	<!-- Main Scripts-->
	<script src="/admin/resources/js/jquery.js"></script>
	<script src="/admin/resources/js/bootstrap.min.js"></script>
	<script src="/admin/resources/js/plugins.js"></script>
	<script src="/admin/resources/js/hover.js"></script>
	<script src="/admin/resources/js/threecolgallery.js"></script>
	<script src="/admin/resources/js/index.js"></script>
	<script src="/admin/resources/js/jquery-3.2.1.js"></script>
	<script>
		function check() {

			var num = document.getElementById("furnitureName");

			if (num.value.length < 1) {
				alert("글을 입력해 주세요");
				return false;
			}

		}

		document.getElementById("uploadObjBtn").onchange = function() {
			var fileValue = $("#uploadObjBtn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadObjFile").value = fileName;
		};
		document.getElementById("uploadMtlBtn").onchange = function() {
			var fileValue = $("#uploadMtlBtn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadMtlFile").value = fileName;
		};
		document.getElementById("upload2dBtn").onchange = function() {
			var fileValue = $("#upload2dBtn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("upload2dFile").value = fileName;
		};
		document.getElementById("uploadTexture1Btn").onchange = function() {
			var fileValue = $("#uploadTexture1Btn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadTexture1File").value = fileName;
		};
		document.getElementById("uploadTexture2Btn").onchange = function() {
			var fileValue = $("#uploadTexture2Btn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadTexture2File").value = fileName;
		};
		document.getElementById("uploadTexture3Btn").onchange = function() {
			var fileValue = $("#uploadTexture3Btn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadTexture3File").value = fileName;
		};
		document.getElementById("uploadTexture4Btn").onchange = function() {
			var fileValue = $("#uploadTexture4Btn").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			document.getElementById("uploadTexture4File").value = fileName;
		};
	</script>
</body>

</html>