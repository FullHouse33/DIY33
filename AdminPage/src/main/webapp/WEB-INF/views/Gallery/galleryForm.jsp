<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <script src="resources/js/jquery-3.2.1.js"></script> -->
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

      <section class="section"
         style="padding-top: 30px; padding-bottom: 30px; z-index: 1; min-height: 750px;">
         <div class="container-fluid">
            <div class="row" style="text-align: center;">
               <div class="row">
                  <div class="col-lg-12" style="margin-top: 20px;">
                     <div class="couponarea clearfix">
                        <form class="form-inline" style="margin-bottom: 25px;">

                           <div class="sel sel--black-panther"
                              style="margin: unset; width: 150px; border: 1px solid #ededed; vertical-align: middle; font-size: 10px; height: 45px;">
                              <div class="sel__box sel__box--black-panther">
                                 <span
                                    class="sel__box__options sel__box__options--black-panther selected">글쓴이</span>
                              </div>
                              <select name="searchkeyCondition" id="searchkeyCondition"
                                 style="display: none;">
                                 <option value="id">글쓴이</option>
                                 <option value="title">제목</option>
                              </select>
                           </div>
                           <div class="form-group" style="">

                              <input type="text" class="form-control" id="searchKeyword"
                                 name="searchKeyword" placeholder="Enter here..."
                                 style="margin-top: 0px; vertical-align: middle; height: 45px; font-size: 20px; margin-right: 0px; border: 1px solid #ededed;">
                           </div>
                           <div class="sel sel--black-panther"
                              style="margin: unset; width: 150px; border: 1px solid #ededed; vertical-align: middle; font-size: 10px; height: 45px;">
                              <div class="sel__box sel__box--black-panther">
                                 <span
                                    class="sel__box__options sel__box__options--black-panther selected">정렬 기준</span>
                              </div>
                              <select name="searchCondition" id="searchCondition"
                                 style="display: none;">
                                 <option value="stand">정렬 기준</option>
                                 <option value="hit">조회순</option>
                                 <option value="fastdate">최신순</option>
                                 <option value="pastdate">과거순</option>
                              </select>
                           </div>
                           <button type="submit" class="button button--aylen btn btn-lg"
                              style="display: unset; vertical-align: middle; height: 45px;">
                              <i class="fa fa-search"></i>
                           </button>
                           <input type="button" value="Write" onclick="galleryRead()"
                              class="button button--aylen btn btn-lg"
                              style="display: unset; vertical-align: middle; height: 45px;">
                        </form>
                     </div>
                     <!-- end couponarea -->
                  </div>
                  <!-- end col -->
               </div>
               <div class="col-md-12">
                  <div class="sel__box sel__box--black-panther">
                     <span
                        class="sel__box__options sel__box__options--black-panther selected">ID</span>
                  </div>
                  <select name="searchkeyCondition" id="select-profession"
                     style="display: none;">
                     <option value="id">ID</option>
                     <option value="email">EMAIL</option>
                  </select>
               </div>
            </div>

            <div id="da-thumbs" class="da-thumbs isotope"
               style="position: relative; overflow: hidden; height: 1288px;">
               <c:forEach items="${list}" var="vo">
                  <div class="pentry item-w1 item-h1 cat3 isotope-item"
                     style="width: 496px; height: 491px; position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px); opacity: 1;">
                     <a href="/admin/board/readBoard?galleryNum=${vo.galleryNum}"
                        title=""> <img src="/admin/resources/img/${vo.imgUuid}"
                        style="width: 488.99px; height: 400px;">
                        <div style="display: block; left: 100%; top: 0px; transition: all 300ms ease;">
                           <span>${vo.title}</span><span>${vo.id}</span>
                        </div>
                     </a>
                  </div>
               </c:forEach>
            </div>
            <!-- end div -->

            <hr class="invis">
            <div class="col-md-12">
               <nav class="text-center">
                  <ul class="pagination" id="navigator">
                     <li><a
                        href="javascript:pageProc(${navi.currentPage - navi.pagePerGroup},'${searchCondition}','${searchkeyCondition}','${searchKeyword}')">◁◁</a></li>
                     <li><a
                        href="javascript:pageProc(${navi.currentPage - 1},'${searchCondition}','${searchKeyword}','${searchkeyCondition}')">◀</a></li>

                     <c:forEach begin="${navi.startPageGroup}"
                        end="${navi.endPageGroup}" var="counter">
                        <c:if test="${counter == navi.currentPage}"></c:if>
                        <li><a
                           href="javascript:pageProc(${counter},'${searchCondition}','${searchKeyword}','${searchkeyCondition}')">${counter}</a></li>
                        <c:if test="${counter == navi.currentPage}"></c:if>
                     </c:forEach>
                     <li><a
                        href="javascript:pageProc(${navi.currentPage + 1},'${searchCondition}','${searchKeyword}','${searchkeyCondition}')">▶</a></li>
                     <li><a
                        href="javascript:pageProc(${navi.currentPage + navi.pagePerGroup},'${searchCondition}','${searchKeyword}','${searchkeyCondition}')">▷▷</a></li>
                  </ul>
               </nav>
            </div>
         </div>
         <!-- end container-fluid -->
      </section>
      <!-- end section -->

      <div class="topfooter">
         <div class="container">
            <div class="row">
               <div class="col-md-4 col-sm-4 col-xs-12">
                  <a class="navbar-brand" href="index.html"><img
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
      function pageProc(currentPage, searchCondition, searchKeyword) {
         location.href = "/admin/board/gallery?currentPage=" + currentPage
               + "&searchCondition=" + searchCondition + "&searchKeyword="
               + searchKeyword + "&searchkeyCondition="
               + searchkeyCondition;
      }
      function galleryRead() {
         location.href = "/admin/board/write";
      }
   </script>
</body>

</html>