<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<script src="/admin/resources/js/jquery-3.2.1.js"></script>
<title>Navi</title>
<script>
	$(function() {
		$("#userLogin").click(
				function() {
					var id = $('input[name=userId]').val();
					var pwd = $('input[name=userPwd]').val();

					if (id.length < 1) {
						alert("아이디를 입력하세요!");
						return false;
					} else if (pwd.length < 1) {
						alert("비밀번호를 입력하세요!!");
						return false;
					} else {
						location.href = "/admin/user/loginUser?id=" + id + "&pwd=" + pwd;
					}
		});

		$("#coLogin").click(
				function() {
					var coId = $('input[name=coId]').val();
					var coPwd = $('input[name=coPwd]').val();

					if (coId.length < 1) {
						alert("아이디를 입력하세요!");
						return false;
					} else if (coPwd.length < 1) {
						alert("비밀번호를 입력하세요!");
						return false;
					} else {
						location.href = "/admin/user/loginCompany?coId=" + coId + "&coPwd=" + coPwd;
					}
		});
	});
</script>
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="/admin/"><img
			src="/admin/resources/images/logo@2x.png" alt="" width="190"
			height="60"></a>
	</div>

	<div id="navbar" class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li><a href="/admin/" style="font-size: 18px;">Home</a></li>
			<li><a href="/admin/user/workSpace" style="font-size: 18px;">WorkSpace</a></li>
			<li><a href="/admin/board/gallery" style="font-size: 18px;">Gallery</a></li>
			<c:if test="${sessionScope.CoId != null}">
				<li class="dropdown hasmenu"><a
					href="/admin/user/connectedCompany" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false" style="font-size: 18px;">Company<span
						class="fa fa-angle-down"></span></a>
					<ul class="dropdown-menu"
						style="margin-top: 10px; box-shadow: 0 1px 15px black;">
						<li><a href="/admin/file/furnitureUpload">가구 업로드</a></li>
						<li><a href="/admin/file/library?coNAME=${coName}">가구 리스트</a></li>
						<li><a href="/admin/stats/companyStatistics?coId=${CoId}">자사 통계</a></li>
						<li><a href="/admin/stats/graph1">연도별 회사 통계</a></li>
						<li><a href="/admin/stats/graph2">회사별 가구 통계</a></li>
						<li><a href="/admin/stats/graph3">회사별 가구 통계2</a></li>
						<li><a href="/admin/stats/graph4">2012년 월별 회사 통계</a></li>
						<li><a href="/admin/stats/graph5">2013년 월별 회사 통계</a></li>
						<li><a href="/admin/stats/graph6">2014년 월별 회사 통계</a></li>
						<li><a href="/admin/stats/graph7">2015년 월별 회사 통계</a></li>
						<li><a href="/admin/stats/graph8">2016년 월별 회사 통계</a></li>
					</ul></li>
			</c:if>
			<c:if test="${sessionScope.id == 'admin'}">
				<li class="dropdown hasmenu"><a
					href="/admin/user/connectedUser" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false" style="font-size: 18px;">Admin<span
						class="fa fa-angle-down"></span></a>
					<ul class="dropdown-menu"
						style="margin-top: 10px; box-shadow: 0 1px 15px black;">
						<li><a href="/admin/user/userList">일반 회원 관리</a></li>
						<li><a href="/admin/user/companyList">기업 회원 관리</a></li>
						<li><a href="/admin/file/library?coNAME=${coName}">라이브러리 관리</a></li>
						<li><a href="/admin/stats/statistics">전체 통계</a></li>
					</ul></li>
			</c:if>
			<li><a href="#" style="font-size: 18px;">Contact</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right searchandbag">
			<li class="dropdown hasmenu shopcartmenu"><a href="#"
				class="dropdown-toggle cart" data-toggle="dropdown" role="button"
				aria-expanded="false"> <i class="fa fa-shopping-bag"></i></a>
				<ul class="dropdown-menu start-right" role="menu"
					style="margin-top: 10px; box-shadow: 0 1px 15px black;">
					<!-- 세션아이디 없을 때(비로그인) -->
					<c:if test="${sessionScope.id==null && sessionScope.CoId==null}">
						<div class="tab-style-1">
							<div class="tabbed-widget">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#userTab"
										aria-expanded="true">User</a></li>
									<li class=""><a data-toggle="tab" href="#companyTab"
										aria-expanded="false">Company</a></li>
								</ul>

								<div class="tab-content">

									<div id="userTab" class="tab-pane fade active in">
										<li style="padding-top: 0px;" class="shopcart">
											<table class="table"
												style="table-layout: unset; word-break: unset;">
												<tbody style="text-align: center;">
													<tr class="row">
														<td class="col-md-3"><input type="text" name="userId"
															id="userId" class="form-control input-lg"
															placeholder="ID" style="margin-bottom: 10px;"> <input
															type="password" name="userPwd" id="userPwd"
															class="form-control input-lg" placeholder="PW"></td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix"></div>
											<div class="text-center" style="width: 280;">
												<button id="userLogin" name="userLogin"
													class="btn btn-primary" style="width: 120px;">LOGIN</button>
												<a href="/admin/user/joinUserForm" class="btn btn-primary">JOIN</a>
												<a href="/admin/user/userIdSearch" class="btn btn-primary">ID
													SEARCH</a> <a href="/admin/user/pwdSearch"
													class="btn btn-primary">PWD SEARCH</a> <input type="hidden"
													name="action" value="login">
											</div>
										</li>
									</div>

									<div id="companyTab" class="tab-pane fade">
										<li style="padding-top: 0px;" class="shopcart">
											<table class="table"
												style="table-layout: unset; word-break: unset;">
												<tbody style="text-align: center;">
													<tr class="row">
														<td class="col-md-3"><input type="text" name="coId"
															id="coId" class="form-control input-lg"
															placeholder="COMPANY ID" style="margin-bottom: 10px;">
															<input type="password" name="coPwd" id="coPwd"
															class="form-control input-lg" placeholder="PW"></td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix"></div>
											<div class="text-center" style="width: 280;">
												<button id="coLogin" name="coLogin" class="btn btn-primary"
													style="width: 120px;">LOGIN</button>
												<a href="/admin/user/joinCompanyForm"
													class="btn btn-primary">JOIN</a> <a
													href="/admin/user/companyIdSearch" class="btn btn-primary">ID
													SEARCH</a> <a href="/admin/user/pwdSearch"
													class="btn btn-primary">PWD SEARCH</a> <input type="hidden"
													name="action" value="login">
											</div>
										</li>
										<!-- end content -->
									</div>
								</div>
							</div>
							<!-- end tabbed-widget -->
						</div>
					</c:if>
					<!-- 세션아이디 있을 때(로그인중) -->
					<c:if test="${sessionScope.id != null || sessionScope.CoId != null}">
						<li class="shopcart" style="">
							<h4 class="row" style="text-align: center; font-size: 20px;">
								Welcome<br>
								<c:if test="${sessionScope.id == 'admin'}">
									<div class="clearfix"></div>
									<div class="text-center">
										<a href="/admin/user/logout" class="btn btn-primary">LOGOUT</a>
									</div>
								</c:if>

								<c:if test="${sessionScope.id != null && sessionScope.id != 'admin'}">
		                  			${sessionScope.id}!
		                  		<div class="clearfix"></div>
									<div class="text-center">
										<a href="/admin/user/logout" class="btn btn-primary">LOGOUT</a>
									</div>
								</c:if>

								<c:if test="${sessionScope.CoId != null}">
		                  			${sessionScope.CoId}!
		                  		<div class="clearfix"></div>
									<div class="text-center">
										<a href="/admin/user/logout" class="btn btn-primary">LOGOUT</a>
									</div>
								</c:if>
							</h4>
						</li>
					</c:if>
				</ul></li>
		</ul>
	</div>
	<!--/.nav-collapse -->
</div>
</html>