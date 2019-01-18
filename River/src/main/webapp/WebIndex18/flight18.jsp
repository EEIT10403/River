<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	
	<title>flight</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--======CSS資料夾==============================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<link type="text/css" rel="stylesheet" href="../css/Tstyle.css" />
	<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<!--===============================================================================================-->	
		
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">
	
<!--===============================================================================================-->




</head>
<body class="animsition">
	<div class="container-fluid">  
	<!-- Header -->
		<header>
			<!-- Header desktop -->
			<div class="container-menu-desktop">
				<!-- Topbar -->


				<div class="wrap-menu-desktop" style="height: 60px">
					<nav class="limiter-menu-desktop container">

						<!-- Logo desktop -->
						<a class="logo" href="<c:url value="/index18.jsp" />"> <img
							src="../images/icons/logo-11.png" alt="IMG-LOGO">
						</a>

						<!-- Menu desktop -->
						<div class="menu-desktop">
							<ul class="main-menu">
								<li class="active-menu"><a
									href="<c:url value="/index18.jsp" />">首頁</a></li>
								<c:if test="${not empty member_Id}">

									<li class="label1"><a
										href="<c:url value="/WebIndex18/flight18.jsp" />">航班查詢</a></li>

									<li><a href="<c:url value="/_21_/planTAindex.jsp" />">行程規劃</a></li>

								</c:if>

								<c:if test="${empty member_Id}">
									<li><a href="product.html">景點查詢</a></li>

									<li class="label1"><a
										href="<c:url value="/_11_secure/login.jsp" />">航班查詢</a></li>

									<li><a href="<c:url value="/_11_secure/login.jsp" />">行程規劃</a></li>

								</c:if>
								<c:if test="${empty staff_id}">
									<li><a
										href="<c:url value="/_027_Partner/PartnerLogin.jsp" />">合作廠商登入</a></li>
								</c:if>
								<c:if test="${not empty staff_id}">
									<li><a href="<c:url value="/Order/GetSalesSum" />">合作廠商登入</a></li>
								</c:if>
							</ul>
						</div>

						<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m">

							<div class="dropdown">

								<button class="btn btn-default dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown">會員專區</button>

								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<c:if test="${not empty member_Id}">
										<a class="dropdown-item"
											href="<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />">訂單查詢及付款</a>
										<a class="dropdown-item"
											href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">管理帳戶</a>
										<a class="dropdown-item"
											href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">我的機票</a>
										<a class="dropdown-item"
											href="<c:url value="/Comment/IntoComment?member_Id=${member_Id}" />">產品評鑑</a>
										<a class="dropdown-item"
											href="<c:url value="/Member/Logout" />">登出</a>
									</c:if>
									<c:if test="${empty member_Id}">
										<a class="dropdown-item"
											href="<c:url value="/_11_secure/login.jsp" />">登入</a>
									</c:if>
								</div>
							</div>
<!-- 							<div -->
<!-- 								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"> -->
<!-- 								<i class="zmdi zmdi-search"></i> -->
<!-- 							</div> -->

						</div>
					</nav>
				</div>
			</div>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile">
					<a href="<c:url value="/index18.jsp" />"><img
						src="../images/icons/logo-11.png" alt="IMG-LOGO"></a>
				</div>

				<!-- Icon header -->
				<div>

					<div class="dropdown">

						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown">會員專區</button>

						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<c:if test="${not empty member_Id}">
								<a class="dropdown-item"
									href="<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />">訂單查詢及付款</a>
								<a class="dropdown-item"
									href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">管理帳戶</a>
								<a class="dropdown-item"
									href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">我的機票</a>
								<a class="dropdown-item"
									href="<c:url value="/Comment/IntoComment?member_Id=${member_Id}" />">產品評鑑</a>
								<a class="dropdown-item" href="<c:url value="/Member/Logout" />">登出</a>
							</c:if>
							<c:if test="${empty member_Id}">
								<a class="dropdown-item"
									href="<c:url value="/_11_secure/login.jsp" />">登入</a>
							</c:if>
						</div>
					</div>

				</div>

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>


			<!-- Menu Mobile -->
			<div class="menu-mobile">


					<ul class="main-menu">
								<li class="active-menu"><a
									href="<c:url value="/index18.jsp" />">首頁</a></li>
								<c:if test="${not empty member_Id}">

									<li class="label1"><a
										href="<c:url value="/WebIndex18/flight18.jsp" />">航班查詢</a></li>

									<li><a href="<c:url value="/_21_/planTAindex.jsp" />">行程規劃</a></li>

								</c:if>

								<c:if test="${empty member_Id}">
									<li><a href="product.html">景點查詢</a></li>

									<li class="label1"><a
										href="<c:url value="/_11_secure/login.jsp" />">航班查詢</a></li>

									<li><a href="<c:url value="/_11_secure/login.jsp" />">行程規劃</a></li>

								</c:if>
								<c:if test="${empty staff_id}">
									<li><a
										href="<c:url value="/_027_Partner/PartnerLogin.jsp" />">合作廠商登入</a></li>
								</c:if>
								<c:if test="${not empty staff_id}">
									<li><a href="<c:url value="/Order/GetSalesSum" />">合作廠商登入</a></li>
								</c:if>
							</ul>
			</div>

			<!-- Modal Search -->
<!-- 			<div -->
<!-- 				class="modal-search-header flex-c-m trans-04 js-hide-modal-search"> -->
<!-- 				<div class="container-search-header"> -->
<!-- 					<button -->
<!-- 						class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search"> -->
<!-- 						<img src="images/icons/icon-close2.png" alt="CLOSE"> -->
<!-- 					</button> -->

<!-- 					<form class="wrap-search-header flex-w p-l-15"> -->
<!-- 						<button class="flex-c-m trans-04"> -->
<!-- 							<i class="zmdi zmdi-search"></i> -->
<!-- 						</button> -->
<!-- 						<input class="plh3" type="text" name="search" -->
<!-- 							placeholder="Search..."> -->
<!-- 					</form> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</header>

	<!-- Cart -->
	

		

	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1" style="background-image: url(../images/slide-01.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Women Collection 2018
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
									NEW SEASON
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1" style="background-image: url(../images/slide-02.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Men New-Season
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
									Jackets & Coats
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1" style="background-image: url(../images/slide-03.jpg);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Men Collection 2018
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
									New arrivals
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<!-- ===================班次查詢中間==================== -->
	
<div id="booking">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
					
<form action="<c:url value="/form.controller" />" method="post">

							<div class="form-group">
								<div class="form-checkbox">
									<label for="roundtrip">
										<input type="radio" id="roundtrip" name="flight-type">
										<span></span>來回
									</label>
									<label for="one-way">
										<input type="radio" id="one-way" name="flight-type">
										<span></span>單程
									</label>
									
								</div>
							</div>
							
							
<!-- ============================================讀取資料庫City========================================================== -->							
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">起始地</span>
										<input class="form-control" type="text" required placeholder="City or airport" id="zt_country" name="zt_country" value="${param.zt_country}" readonly="readonly">
							
<!-- ============================================選項卡1========================================================== -->								
				<div class="container-fluid col-md-6 col-xs-12 zt_li" id="zt_countryTabs" tabindex="1" style="width: 350px;display: none; border: double #C4E2F7 5px; background-color: #DDDDDD;">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-1" data-toggle="tab">台灣</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-2" data-toggle="tab">亞洲</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-3" data-toggle="tab">美洲</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-4" data-toggle="tab">歐澳</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-5" data-toggle="tab">其他</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane  active" id="destinationCountryName-dialog-countryTabs-1">
							
<!-- 		ul的style 是分隔線				 -->
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="TPE" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="台北桃園" data-code="台北桃園">台北桃園</a>
							</li>	
							<li>			
							<a data-id="TSA" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="台北松山" data-code="台北松山" >台北松山</a>
							</li>
							<li>
							<a data-id="RMQ" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="台中" data-code="台中" >台中</a>
							</li>
							<li>
							<a data-id="TNN" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="台南" data-code="台南" >台南</a>
							</li>
							<li>
							<a data-id="KHH" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="高雄" data-code="高雄" >高雄</a>
							</li>
						</ul>
							
						
 
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-2">
							
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both; ">
							<li>
							<a data-id="HND" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="東京羽田" data-code="東京羽田">東京羽田</a>
							</li>	
							<li>			
							<a data-id="NRT" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="東京成田" data-code="東京成田" >東京成田</a>
							</li>
							<li>
							<a data-id="OSA" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="大阪" data-code="大阪" >大阪</a>
							</li>
							<li>
							<a data-id="FUK" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="福岡" data-code="福岡" >福岡</a>
							</li>
							<li>
							<a data-id="SPK" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="札幌" data-code="札幌" >札幌</a>
							</li>
							<li>
							<a data-id="NGO" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="名古屋" data-code="名古屋" >名古屋</a>
							</li>
							<li>
							<a data-id="OKA" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="沖繩" data-code="沖繩" >沖繩</a>
							</li>
							<li>
							<a data-id="SEL" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="首爾" data-code="首爾" >首爾</a>
							</li>
							<li>
							<a data-id="BKK" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="曼谷" data-code="曼谷" >曼谷</a>
							</li>
							<li>
							<a data-id="SIN" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="新加坡" data-code="新加坡" >新加坡</a>
							</li>
							<li>
							<a data-id="KUL" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="吉隆坡" data-code="吉隆坡" >吉隆坡</a>
							</li>
							<li>
							<a data-id="DPS" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="峇里島" data-code="峇里島" >峇里島</a>
							</li>
							<li>
							<a data-id="HKG" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="香港" data-code="香港" >香港</a>
							</li>
							<li>
							<a data-id="MFM" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="澳門" data-code="澳門" >澳門</a>
							</li>
							<li>
							<a data-id="PVG" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="上海" data-code="上海" >上海</a>
							</li>
							<li>
							<a data-id="PEK" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="北京" data-code="北京" >北京</a>
							</li>
							
						</ul>
 
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-3">
							
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="LAX" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="洛杉磯" data-code="洛杉磯">洛杉磯</a>
							</li>	
							<li>			
							<a data-id="SFO" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="舊金山" data-code="舊金山" >舊金山</a>
							</li>
							<li>
							<a data-id="SEA" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="西雅圖" data-code="西雅圖" >西雅圖</a>
							</li>
							<li>
							<a data-id="WKL" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="夏威夷" data-code="夏威夷" >夏威夷</a>
							</li>
						
						</ul>
						
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-4">
							
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="YXU" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="倫敦" data-code="倫敦">倫敦</a>
							</li>	
							<li>			
							<a data-id="PAR" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="巴黎" data-code="巴黎" >巴黎</a>
							</li>
							<li>
							<a data-id="AMS" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="阿姆斯特丹" data-code="阿姆斯特丹" >阿姆斯特丹</a>
							</li>
							<li>
							<a data-id="SYD" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="雪梨" data-code="雪梨" >雪梨</a>
							</li>

						</ul>
						
						</div>
						
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-5">
							
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="CAI" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="開羅" data-code="開羅">開羅</a>
							</li>	
							<li>			
							<a data-id="DXB" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="杜拜" data-code="杜拜" >杜拜</a>
							</li>
							<li>
							<a data-id="DEL" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="新德里" data-code="新德里" >新德里</a>
							</li>
							<li>
							<a data-id="BOM" class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="孟買" data-code="孟買" >孟買</a>
							</li>
							
						</ul>
						
						</div>
 
					</div>
 
				</div>	
<!-- data-code是控制輸入值			 -->
										
										
										
										
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">目的地</span>
										<input class="form-control" type="text" placeholder="City or airport" id="zt_country02" name="zt_country02" value="${param.zt_country02}" readonly="readonly">
										
										
<!-- ============================================選項卡2========================================================== -->								
				<div class="container-fluid col-md-6 col-xs-12 zt_li02" id="zt_countryTabs02" tabindex="1" style="width: 350px;display: none; border: double #C4E2F7 5px; background-color: #DDDDDD;">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active zt_li02">
							<a href="#destinationCountryName-dialog-countryTabs02-1" data-toggle="tab">台灣</a>
						</li>
						<li role="presentation" class="zt_li02">
							<a href="#destinationCountryName-dialog-countryTabs02-2" data-toggle="tab">亞洲</a>
						</li>
						<li role="presentation" class="zt_li02">
							<a href="#destinationCountryName-dialog-countryTabs02-3" data-toggle="tab">美洲</a>
						</li>
						<li role="presentation" class="zt_li02">
							<a href="#destinationCountryName-dialog-countryTabs02-4" data-toggle="tab">歐澳</a>
						</li>
						<li role="presentation" class="zt_li02">
							<a href="#destinationCountryName-dialog-countryTabs02-5" data-toggle="tab">其他</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane  active" id="destinationCountryName-dialog-countryTabs02-1">
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="TPE" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="台北桃園" data-code="台北桃園">台北桃園</a>
							</li>	
							<li>			
							<a data-id="TSA" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="台北松山" data-code="台北松山" >台北松山</a>
							</li>
							<li>
							<a data-id="RMQ" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="台中" data-code="台中" >台中</a>
							</li>
							<li>
							<a data-id="TNN" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="台南" data-code="台南" >台南</a>
							</li>
							<li>
							<a data-id="KHH" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="高雄" data-code="高雄" >高雄</a>
							</li>
							
						</ul>
 
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs02-2">
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both; ">
							<li>
							<a data-id="HND" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="東京羽田" data-code="東京羽田">東京羽田</a>
							</li>	
							<li>			
							<a data-id="NRT" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="東京成田" data-code="東京成田" >東京成田</a>
							</li>
							<li>
							<a data-id="OSA" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="大阪" data-code="大阪" >大阪</a>
							</li>
							<li>
							<a data-id="FUK" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="福岡" data-code="福岡" >福岡</a>
							</li>
							<li>
							<a data-id="SPK" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="札幌" data-code="札幌" >札幌</a>
							</li>
							<li>
							<a data-id="NGO" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="名古屋" data-code="名古屋" >名古屋</a>
							</li>
							<li>
							<a data-id="OKA" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="沖繩" data-code="沖繩" >沖繩</a>
							</li>
							<li>
							<a data-id="SEL" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="首爾" data-code="首爾" >首爾</a>
							</li>
							<li>
							<a data-id="BKK" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="曼谷" data-code="曼谷" >曼谷</a>
							</li>
							<li>
							<a data-id="SIN" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="新加坡" data-code="新加坡" >新加坡</a>
							</li>
							<li>
							<a data-id="KUL" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="吉隆坡" data-code="吉隆坡" >吉隆坡</a>
							</li>
							<li>
							<a data-id="DPS" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="峇里島" data-code="峇里島" >峇里島</a>
							</li>
							<li>
							<a data-id="HKG" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="香港" data-code="香港" >香港</a>
							</li>
							<li>
							<a data-id="MFM" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="澳門" data-code="澳門" >澳門</a>
							</li>
							<li>
							<a data-id="PVG" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="上海" data-code="上海" >上海</a>
							</li>
							<li>
							<a data-id="PEK" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="北京" data-code="北京" >北京</a>
							</li>
							
						</ul>
							
							
 
						</div>
						
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs02-3">
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="LAX" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="洛杉磯" data-code="洛杉磯">洛杉磯</a>
							</li>	
							<li>			
							<a data-id="SFO" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="舊金山" data-code="舊金山" >舊金山</a>
							</li>
							<li>
							<a data-id="SEA" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="西雅圖" data-code="西雅圖" >西雅圖</a>
							</li>
							<li>
							<a data-id="WKL" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="夏威夷" data-code="夏威夷" >夏威夷</a>
							</li>
						
						</ul>
							
							
						</div>
						
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs02-4">
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="YXU" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="倫敦" data-code="倫敦">倫敦</a>
							</li>	
							<li>			
							<a data-id="PAR" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="巴黎" data-code="巴黎" >巴黎</a>
							</li>
							<li>
							<a data-id="AMS" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="阿姆斯特丹" data-code="阿姆斯特丹" >阿姆斯特丹</a>
							</li>
							<li>
							<a data-id="SYD" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="雪梨" data-code="雪梨" >雪梨</a>
							</li>

						</ul>
							
							
						</div>
						
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs02-5">
						
						<ul class="nav nav-tabs" style="width:100%; height:2px; border-top:3px solid #999; clear:both;">
							<li>
							<a data-id="CAI" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="開羅" data-code="開羅">開羅</a>
							</li>	
							<li>			
							<a data-id="DXB" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="杜拜" data-code="杜拜" >杜拜</a>
							</li>
							<li>
							<a data-id="DEL" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="新德里" data-code="新德里" >新德里</a>
							</li>
							<li>
							<a data-id="BOM" class="url-product country02 layui-btn layui-btn-primary " href="javascript: void(0);" title="孟買" data-code="孟買" >孟買</a>
							</li>
							
						</ul>
							
							
						</div>
						
						
						
 
 
 
					</div> 
				</div>			
									
			
		</div>
	</div>	
</div>							
							
<!-- ============================================讀取資料庫City END========================================================== -->
							
							
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">出發日</span>
										<input class="form-control" type="date" required name="godate" value="${param.godate}">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">回程日</span>
										<input class="form-control" type="date" required name="backdate" value="${param.backdate}">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">成人 (12+)</span>
										<select class="form-control" name="people">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
										
									</div>
								</div>
							<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">兒童 (2-12)</span>
										<select class="form-control" name="people2">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
										
									</div>
								</div>
							<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">幼兒 (0-2)</span>
										<select class="form-control" name="people3">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
										
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">座艙等級</span>
										<select class="form-control">
											<option>經濟艙</option>
										</select>
										
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
										<input type="submit" class="submit-btn" name="prodaction" value="Show Flights">
									</div>
								</div>
							</div>
</form>
					</div>
				</div>
			</div>
		</div>
		
</div>  

	
<!-- ===================機票相關表單結束==================== -->



	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Women
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Men
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shoes
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Watches
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
					</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="../images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="../images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-01.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="../images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-02.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="../images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-03.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</div>

<!--===============================================================================================-->	
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/slick/slick.min.js"></script>
	<script src="../js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
	
	
<!--====城市用=＝====================================================＝＝＝＝＝＝================================-->
<!-- ============================================選項卡1========================================================== -->	
	<script type="text/javascript">
			//点击弹出div框
			$("#zt_country").focus(function() {
				var div = document.getElementById('zt_countryTabs');
				if(div.style.display == "none") {
					div.style.display = "block";
					div.style.position = "absolute";
					div.style.zIndex = "3",
						div.style.top = document.getElementById('zt_country').style.top + 36 + "px";
					div.style.left = "224px";
				} else {
					div.style.display = "none";
				}
			});
 
			//当点击a标签以后赋值给input框
			$(".country").click(function() {
				var zt_country = $(this).data('id') +' '+ $(this).data('code');
				$("#zt_country").val(zt_country);
				var div = document.getElementById('zt_countryTabs');
				div.style.display = "none";
				$("#zt_country").blur();
				//赋值给全局变量
				consigneeCountry = zt_country;
				//每次选择都清空input的值
				$("#transport").val("");
			});
 
			//失去焦点时间，隔100毫秒执行，不然失去焦点会把上面的点击事件覆盖掉，导致赋值不上去
			$("#zt_country").blur(function() {
				setTimeout(function() {
					var div = document.getElementById('zt_countryTabs');
					div.style.display = "none";
				}, 100);
			});
			$(".zt_li").mousedown(function(event) {
				event.preventDefault();
			})
		</script>
		
		
<!-- ============================================選項卡2==========================================================	 -->

<script type="text/javascript">
			//点击弹出div框
			$("#zt_country02").focus(function() {
				var div = document.getElementById('zt_countryTabs02');
				if(div.style.display == "none") {
					div.style.display = "block";
					div.style.position = "absolute";
					div.style.zIndex = "3",
						div.style.top = document.getElementById('zt_country02').style.top + 36 + "px";
					div.style.left = "224px";
				} else {
					div.style.display = "none";
				}
			});
 
			//当点击a标签以后赋值给input框
			$(".country02").click(function() {
				var zt_country02 = $(this).data('id') +' '+ $(this).data('code');
				$("#zt_country02").val(zt_country02);
				var div = document.getElementById('zt_countryTabs02');
				div.style.display = "none";
				$("#zt_country02").blur();
				//赋值给全局变量
				consigneeCountry = zt_country02;
				//每次选择都清空input的值
				$("#transport").val("");
			});
 
			//失去焦点时间，隔100毫秒执行，不然失去焦点会把上面的点击事件覆盖掉，导致赋值不上去
			$("#zt_country02").blur(function() {
				setTimeout(function() {
					var div = document.getElementById('zt_countryTabs02');
					div.style.display = "none";
				}, 100);
			});
			$(".zt_li02").mousedown(function(event02) {
				event02.preventDefault();
			})
</script>

<!-- 回傳機票JSON -->








<!-- 輸入欄變色 -->
<script type="text/javascript">
			$("input[name='zt_country']").focus(function(){
				$("input[name='zt_country']").css("background-color","#FFFFBB");
			});
			$("input[name='zt_country']").blur(function(){
				$("input[name='zt_country']").css("background-color","#FFFFFF");
			});
			 
			$("input[name='zt_country02']").focus(function(){
				$("input[name='zt_country02']").css("background-color","#FFFFBB");
			});
			$("input[name='zt_country02']").blur(function(){
				$("input[name='zt_country02']").css("background-color","#FFFFFF");
			});
			
			$("input[name='godate']").focus(function(){
				$("input[name='godate']").css("background-color","#FFFFBB");
			});
			$("input[name='godate']").blur(function(){
				$("input[name='godate']").css("background-color","#FFFFFF");
			});
			
			$("input[name='backdate']").focus(function(){
				$("input[name='backdate']").css("background-color","#FFFFBB");
			});
			$("input[name='backdate']").blur(function(){
				$("input[name='backdate']").css("background-color","#FFFFFF");
			});
			
			$("select[name='people']").focus(function(){
				$("select[name='people']").css("background-color","#FFFFBB");
			});
			$("select[name='people']").blur(function(){
				$("select[name='people']").css("background-color","#FFFFFF");
			});

</script>





	
	
<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>