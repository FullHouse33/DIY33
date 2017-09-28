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
<title>companyJoin</title>
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
<link rel="stylesheet prefetch"
	href="https://fonts.googleapis.com/css?family=Lato|Quicksand">
<link rel="stylesheet prefetch"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

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
						<form action="/admin/user/joinCompany" method="post" id="fm">
							<input type="hidden" id="emailCode" />
							<div class="tab-pane fade active in" id="step2">
								<div class="row">
									<div class="col-md-8"
										style="text-align: center; width: 100%; padding-left: 100px; padding-right: 100px;">
										<div class="widget-title">
											<h2 style="color: #555">Sign up</h2>
											<hr>
										</div>
										<table class="table">
											<tbody>
												<tr class="row">
													<td class="col-md-3" style="width: 50%;"><input
														type="text" class="form-control input-lg" id="coName"
														name="coName" placeholder="Company Name"
														style="margin-bottom: 10px;"> <input type="text"
														class="form-control input-lg" id="coId" name="coId"
														placeholder="Id" style="margin-bottom: 10px;"><span
														id="checkId"
														style="float: right; margin-bottom: 10px; font-size: 12px;"></span>
														<input type="password" class="form-control input-lg"
														id="coPwd" name="coPwd" placeholder="Password"
														style="margin-bottom: 10px;"><span id="checkpwd"
														style="float: right; margin-bottom: 10px; font-size: 12px;"></span>
														<input type="tel" class="form-control input-lg" id="coTel"
														name="coTel" placeholder="Telephone"
														style="margin-bottom: 10px;"> <input type="text"
														class="form-control input-lg" id="coManagerName"
														name="coManagerName" placeholder="Manager"
														style="margin-bottom: 10px;"> <input type="text"
														class="form-control input-lg" id="coManagerDept"
														name="coManagerDept" placeholder="Department"
														style="margin-bottom: 10px;"> <input type="text"
														class="form-control input-lg" id="email"
														name="coManagerEmail" placeholder="Email"
														style="display: inline; width: 389.8px;"> <input
														type="button" class="button button--aylen btn"
														id="checkmail" value="Certify" disabled="disabled"
														style="float: right; margin-bottom: 10px; display: inline; width: 79px; height: 45px;">
														<button type="submit" value="회원 가입" id="joinCompany"
															disabled="disabled" class="button button--aylen btn"
															style="margin-top: 20px; margin-left: 75px; width: 110px; height: 50px; font-size: 20px; border-radius: 35px;">Sign
															Up</button></td>
												</tr>
											</tbody>
										</table>
										<input type="hidden" name="action" value="joinCompany">
										<!-- end widget-title -->
									</div>
									<!-- end col -->
								</div>
								<!-- end row -->
							</div>
						</form>
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
						<a class="navbar-brand" href="index.html"><img
							src="images/logo.png" alt=""></a>
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
		$(function(){
			//아이디 체크
			$("#coId").on('keyup', function(){
				var coId = $("#coId").val();
			
				if(coId.length < 5 || coId.length > 20 ){
					$("#checkId").css("color", "red");
					$("#checkId").text("아이디는 5~20자 이내");
					return false;
				}else {
					$.ajax({
						url: "/admin/user/coIdCheck",
						type:"post",
						data:{"coId":$("#coId").val()},
						success:function(result){ // true가 리턴되면 사용가능한 아이디
							if(!result){
								$("#checkId").css("color", "blue");
								$("#checkId").html("사용 가능한 아이디입니다.");
							}else{
								$("#checkId").css("color", "red");
								$("#checkId").html("중복된 아이디입니다. ");
							}
						}
					});
					return true;
				} 
			}); 
				
			//비밀번호 체크
			$("#coPwd").on('keyup', function(){
				var pwd = $("#coPwd").val();
		
				var reg_pwd = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;//정규식 표현 선언
				
				if(!(pwd.length > 5 && pwd.length <= 20) && !reg_pwd.test(pwd)  ){
					$("#checkpwd").css("color", "red");
					$("#checkpwd").text("비밀번호는 6~20자 이내");
					return false;
				}  else {
					$("#checkpwd").css("color", "blue");
					$("#checkpwd").html("사용가능한 비밀번호입니다.");
					return true;
				} 
			}); 
			//유효성 검사
			$("#joinCompany").click(function(){
				var coName = $("#coName");
				var coId = $("#coId");
				var coPwd = $("#coPwd");
				var coTel = $("#coTel");
				var coManagerName = $("#coManagerName");
				var coManagerDept = $("#coManagerDept");
				var coManagerEmail = $("#coManagerEmail");
				
				if(coName.val() == ""){
					alert("회사명을 입력해주세요!");
					return false;
				}else if(coId.val() == ""){
					alert("아이디를 입력해주세요!");
					return false;
				}else if(coPwd.val() == ""){
					alert("비밀번호를 입력해주세요!");
					return false;
				}else if(coTel.val() == ""){
					alert("전화번호를 입력해주세요!");
					return false;
				}else if(coManagerName.val() == ""){
					alert("담당자 이름을 입력해주세요!");
					return false;
				}else if(coManagerDept.val() == ""){
					alert("담당자 소속부서를 입력해주세요!");
					return false;
				}else if(coManagerEmail.val() == ""){
					alert("담당자 이메일을 입력해주세요!");
					return false;
				}else{
					alert("가입 성공!!");
					//$("#fm")[0].submit();
				}
			});
			
			//이메일 체크
			$("#checkmail").click(function(){
				$.ajax({
					url: "/admin/user/mail",
					type:"post",
					data:{"email":$("#email").val()}, 
					success:function(result){
						$("#emailCode").val(result);
						$("#modal").dialog("open");
					
					}
				}); 
			});
			
			//이메일 입력 확인
			$("#email").on('keyup', function(){
				var emailin = $("#email").val();
				if(emailin != "") $("#checkmail").removeAttr("disabled");
			});
			
			//modal창 설정임
			$("#modal").dialog({
				autoOpen: false,
				position: [380, 50],
				modal: true,
			//	width: 300,
			//	height: 200,
				resizable: false,
				
				/* buttons:{
					"인증번호확인":function() {
						var result = $("#emailCode").val();
						alert(result);
						var autho = $("#author").val();
						alert(autho);
				    		  
						if(autho == result){
							alert("인증이 완료 되었습니다");
							$("#join").removeAttr("disabled");
							$(this).dialog("close");
						}  else{
							alert("인증번호를 다시 입력해주세요");  
						}
					}	
				}*/
			}); 
			
			$("#checkAuthor").click(function(){
				var result = $("#emailCode").val();
				alert(result);
				var author = $("#author").val();
				alert(author);
				
				if(author == result){	
					$("#joinCompany").removeAttr("disabled");
					$("#modal").dialog("close");
				}  else{
					$("#authorResult").css("color", "red");
					$("#authorResult").text("인증번호가 틀렸습니다.");  
				}
			});
		});
	</script>
	<!-- 모달 영역 -->
	<div class="modal ui-dialog-content ui-widget-content" id="modal"
		style="padding-top: 100px; left: 0px; top: 0px; background-color: rgba(0, 0, 0, 0.4); width: auto; min-height: 0px; max-height: none; height: 247px;">
		<div
			style="background-color: #fefefe; margin: auto; padding: 20px; border: 1px solid #888; width: 442px; text-align: center;">
			<table class="table">
				<tbody>
					<tr class="row">
						<td class="col-md-3" style="width: 300px;"><span
							style="margin-bottom: 10px; font-size: 15px; display: block;">인증번호</span>

							<input type="text" class="form-control input-lg" id="author"
							name="author" placeholder="인증번호를 입력"
							style="display: inline; width: 200px;">

							<button class="button button--aylen btn" id="checkAuthor"
								style="float: right; margin-bottom: 10px; display: inline-block; width: 79px; height: 45px;">Certify</button>
							<span id="authorResult"
							style="margin-bottom: 10px; font-size: 15px;"></span></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>