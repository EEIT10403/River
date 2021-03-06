<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/WebIndex18/500.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	
	<title>search</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	

	<link rel="stylesheet" type="text/css" href="../css/style.css?sv=1"/>

	<link rel="icon" type="image/png" href="../images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
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
								<li  class="label1"><a
									href="<c:url value="/index18.jsp" />">首頁</a></li>
								<c:if test="${not empty member_Id}">

									<li class="active-menu"><a
										href="<c:url value="/WebIndex18/flight18.jsp" />">航班查詢</a></li>

									<li><a href="<c:url value="/_21_/planTAindex.jsp" />">行程規劃</a></li>

								</c:if>

								<c:if test="${empty member_Id}">

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

								<button class="btn dropdown-toggle" type="button" style="color:black;"
									id="dropdownMenuButton" data-toggle="dropdown">會員專區 ▾</button>

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

						<button class="btn dropdown-toggle" type="button" style="color:black;"
							id="dropdownMenuButton" data-toggle="dropdown">會員專區 ▾</button>

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


		</header>
	

	<!-- Slider -->
	<div style="margin:60px;">
		
	
	
	</div>



<!-- ===================班次查詢中間==================== -->
<div id="booking2">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking2-form">
	<form action="<c:url value="/form.controller" />" method="post">
														
							
<!-- ============================================讀取資料庫City========================================================== -->							
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">起始地</span>
										<input class="form-control" type="text" placeholder="City or airport" id="zt_country" name="zt_country" value="${formBean.zt_country}" readonly="readonly">
							
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
										<input class="form-control" type="text" placeholder="City or airport" id="zt_country02" name="zt_country02" value="${formBean.zt_country02}" readonly="readonly">
										
										
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
							
<%-- 		日期格式要用yyyy-MM-dd	<fmt:formatDate value="${formBean.godate}" pattern="yyyy-MM-dd"/> --%>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">出發日</span>
										<input class="form-control" type="date" required name="godate" value="<fmt:formatDate value="${formBean.godate}" pattern="yyyy-MM-dd"/>" >
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">回程日</span>
										<input class="form-control" type="date" required name="backdate" value="<fmt:formatDate value="${formBean.backdate}" pattern="yyyy-MM-dd"/>">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">成人 (12+)</span>
										<select class="form-control" name="people" >
											<option label="${formBean.people}">${formBean.people}</option>
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
											<option label="${formBean.people2}">${formBean.people2}</option>
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
											<option label="${formBean.people3}">${formBean.people3}</option>
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
									<div class="form-group">
										<span class="form-label">行程</span>
										<select class="form-control">
											<option>來回</option>
											<option>單程</option>
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

<!-- ===================機票查詢資料==================== -->
<!--內容-->

<div>

<div class="container"> 

  
  <div class="list_flight">
    <div class="flirow"> 
      

      
      <!--右側欄-->
      
      <div class="main_right">
      
   
	<!--控制資料排序-->   
	<div class="jq22">
		

   	<!--航班編號 varStatus="status"--> 
      <c:forEach var="bean" items="${PricedItinerary}" varStatus="status">
	<!--航程價格-->    
		<c:set var="totalFareamount" value="${bean.airItineraryPricingInfo[0].itinTotalFare.totalFare.amount}"/>
		<c:set var="baseFareAdult" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].passengerFare.baseFare.amount}"/>
		<c:set var="taxAdult" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].passengerFare.taxes.totalTax.amount}"/>
		<c:set var="baseFareChild" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[1].passengerFare.baseFare.amount}"/>
		<c:set var="taxChild" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[1].passengerFare.taxes.totalTax.amount}"/>
		<c:set var="baseFareBaby" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[2].passengerFare.baseFare.amount}"/>
		<c:set var="taxBaby" value="${bean.airItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[2].passengerFare.taxes.totalTax.amount}"/>
		<c:if test="${taxBaby == null}">
			<c:set var="taxBaby" value="0"/>
		</c:if>
	<!--去程航班資訊 --> 		
		<c:set var="elapsedTimeGo" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].elapsedTime}"/>
	<!--整除分鐘 -->
		<c:if test="${elapsedTimeGo >= 60}">
   			<c:set var="elapsedTimeGo" value="${fn:substring((elapsedTimeGo/60),0,1)} 時 ${elapsedTimeGo%60} "/>
		</c:if>						 		
		
	   	<c:set var="departureDateTime" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].departureDateTime}"/>
	   	<c:set var="arrivalDateTime" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].arrivalDateTime}"/>
	   	<c:set var="departureAirportlocationCode" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].departureAirport.locationCode}"/>
	   	<c:set var="arrivalAirportlocationCode" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].arrivalAirport.locationCode}"/>
	   	<c:set var="airEquipType" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].equipment[0].airEquipType}"/>
		<c:set var="operatingAirline" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].operatingAirline.code}"/>
		<c:set var="flightNumber" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].operatingAirline.flightNumber}"/>
	   	
	<!--航空公司轉中文 -->
	   	<c:set var="Airline" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[0].flightSegment[0].operatingAirline.code}"/>
		
		<c:choose>
		 	<c:when test="${Airline == 'AE'}">
		      <c:set var="Airline" value="華信航空"/></c:when>
		    <c:when test="${Airline == 'BR'}">
		      <c:set var="Airline" value="長榮航空"/></c:when>
		    <c:when test="${Airline == 'B7'}">
		      <c:set var="Airline" value="立榮航空"/></c:when>
		    <c:when test="${Airline == 'CI'}">
		      <c:set var="Airline" value="中華航空"/></c:when>
		    <c:when test="${Airline == 'FE'}">
		      <c:set var="Airline" value="遠東航空"/></c:when>
		    <c:when test="${Airline == 'GE'}">
		      <c:set var="Airline" value="復興航空"/></c:when>
		    <c:when test="${Airline == 'IT'}">
		      <c:set var="Airline" value="台灣虎航"/></c:when>
		    <c:when test="${Airline == 'KE'}">
		      <c:set var="Airline" value="韓國航空"/></c:when>
		    <c:when test="${Airline == 'LJ'}">
		      <c:set var="Airline" value="真航空"/></c:when>
		    <c:when test="${Airline == 'OZ'}">
		      <c:set var="Airline" value="韓亞航空"/></c:when>
		    <c:when test="${Airline == 'JL'}">
		      <c:set var="Airline" value="日本航空"/></c:when>
		    <c:when test="${Airline == 'NH'}">
		      <c:set var="Airline" value="全日空航空"/></c:when>
		    <c:when test="${Airline == 'NQ'}">
		      <c:set var="Airline" value="全日空日本"/></c:when>
		    <c:when test="${Airline == 'GK'}">
		      <c:set var="Airline" value="捷星日本"/></c:when>
		    <c:when test="${Airline == 'TW'}">
		      <c:set var="Airline" value="德威航空"/></c:when>
		    <c:when test="${Airline == 'CA'}">
		      <c:set var="Airline" value="中國國際"/></c:when>
		    <c:when test="${Airline == 'CX'}">
		      <c:set var="Airline" value="國泰航空"/></c:when>
		    <c:when test="${Airline == 'CZ'}">
		      <c:set var="Airline" value="中國南方"/></c:when>
		    <c:when test="${Airline == 'FM'}">
		      <c:set var="Airline" value="上海航空"/></c:when>
		    <c:when test="${Airline == 'HO'}">
		      <c:set var="Airline" value="吉祥航空"/></c:when>
		    <c:when test="${Airline == 'HU'}">
		      <c:set var="Airline" value="海南航空"/></c:when>
		    <c:when test="${Airline == 'HX'}">
		      <c:set var="Airline" value="香港航空"/></c:when>
		    <c:when test="${Airline == 'KA'}">
		      <c:set var="Airline" value="港龍航空"/></c:when>
		    <c:when test="${Airline == 'MF'}">
		      <c:set var="Airline" value="廈門航空"/></c:when>
		    <c:when test="${Airline == 'MU'}">
		      <c:set var="Airline" value="中國東方"/></c:when>
		    <c:when test="${Airline == 'NX'}">
		      <c:set var="Airline" value="澳門航空"/></c:when>
		    <c:when test="${Airline == 'OM'}">
		      <c:set var="Airline" value="蒙古航空"/></c:when>
		    <c:when test="${Airline == 'SC'}">
		      <c:set var="Airline" value="山東航空"/></c:when>
		    <c:when test="${Airline == 'UO'}">
		      <c:set var="Airline" value="香港快運"/></c:when>
		    <c:when test="${Airline == 'ZH'}">
		      <c:set var="Airline" value="深圳航空"/></c:when>
		    <c:when test="${Airline == '3U'}">
		      <c:set var="Airline" value="四川航空"/></c:when>
		    <c:when test="${Airline == 'AI'}">
		      <c:set var="Airline" value="印度航空"/></c:when>
		    <c:when test="${Airline == 'AK'}">
		      <c:set var="Airline" value="亞洲航空"/></c:when>
		    <c:when test="${Airline == 'BG'}">
		      <c:set var="Airline" value="孟加拉航空"/></c:when>
		    <c:when test="${Airline == 'BI'}">
		      <c:set var="Airline" value="汶萊皇家"/></c:when>
		    <c:when test="${Airline == 'D7'}">
		      <c:set var="Airline" value="亞航X"/></c:when>
		    <c:when test="${Airline == 'FD'}">
		      <c:set var="Airline" value="泰國亞洲"/></c:when>
		    <c:when test="${Airline == 'FJ'}">
		      <c:set var="Airline" value="斐濟航空"/></c:when>
		    <c:when test="${Airline == 'GA'}">
		      <c:set var="Airline" value="印尼航空"/></c:when>
		    <c:when test="${Airline == 'JQ'}">
		      <c:set var="Airline" value="捷星航空"/></c:when>
		    <c:when test="${Airline == 'MH'}">
		      <c:set var="Airline" value="馬來西亞"/></c:when>
		    <c:when test="${Airline == 'MI'}">
		      <c:set var="Airline" value="勝安航空"/></c:when>
		    <c:when test="${Airline == 'NZ'}">
		      <c:set var="Airline" value="紐西蘭航空"/></c:when>
		    <c:when test="${Airline == 'PG'}">
		      <c:set var="Airline" value="曼谷航空"/></c:when>
		    <c:when test="${Airline == 'PR'}">
		      <c:set var="Airline" value="菲律賓航空"/></c:when>
		    <c:when test="${Airline == 'QF'}">
		      <c:set var="Airline" value="澳洲航空"/></c:when>
		    <c:when test="${Airline == 'QV'}">
		      <c:set var="Airline" value="寮國航空"/></c:when>
		    <c:when test="${Airline == 'QZ'}">
		      <c:set var="Airline" value="印尼亞洲"/></c:when>
		    <c:when test="${Airline == 'RA'}">
		      <c:set var="Airline" value="尼泊爾航空"/></c:when>
		    <c:when test="${Airline == 'SQ'}">
		      <c:set var="Airline" value="新加坡航空"/></c:when>
		    <c:when test="${Airline == 'TG'}">
		      <c:set var="Airline" value="泰國航空"/></c:when>
		    <c:when test="${Airline == 'TN'}">
		      <c:set var="Airline" value="大溪地航空"/></c:when>
		    <c:when test="${Airline == 'TR'}">
		      <c:set var="Airline" value="新加坡虎航"/></c:when>
		    <c:when test="${Airline == 'TZ'}">
		      <c:set var="Airline" value="酷航航空"/></c:when>
		    <c:when test="${Airline == 'VN'}">
		      <c:set var="Airline" value="越南航空"/></c:when>
		    <c:when test="${Airline == 'WE'}">
		      <c:set var="Airline" value="微笑泰航"/></c:when>
		    <c:when test="${Airline == '3K'}">
		      <c:set var="Airline" value="捷星亞洲"/></c:when>
		    <c:when test="${Airline == '5J'}">
		      <c:set var="Airline" value="宿霧太平洋"/></c:when>
		    <c:when test="${Airline == '8M'}">
		      <c:set var="Airline" value="緬甸國際"/></c:when>
		    <c:when test="${Airline == '9W'}">
		      <c:set var="Airline" value="印度捷特"/></c:when>
		    
		</c:choose>
		
    <!--航空公司轉中文 -->
    		
	<!--回程航班資訊 --> 
		<c:set var="elapsedTimeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].elapsedTime}"/>
    <!--整除分鐘 -->
		<c:if test="${elapsedTimeEnd >= 60}">
   			<c:set var="elapsedTimeEnd" value="${fn:substring((elapsedTimeEnd/60),0,1)} 時 ${elapsedTimeEnd%60} "/>
		</c:if>	
    	
    	<c:set var="departureDateTimeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].departureDateTime}"/>
	   	<c:set var="arrivalDateTimeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].arrivalDateTime}"/>
	   	<c:set var="departureAirportlocationCodeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].departureAirport.locationCode}"/>
	   	<c:set var="arrivalAirportlocationCodeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].arrivalAirport.locationCode}"/>
	   	<c:set var="airEquipTypeEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].equipment[0].airEquipType}"/>
		<c:set var="operatingAirlineEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].operatingAirline.code}"/>
		<c:set var="flightNumberEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].operatingAirline.flightNumber}"/>
    	
    <!--航空公司轉中文 -->
	   	<c:set var="AirlineEnd" value="${bean.airItinerary.originDestinationOptions.originDestinationOption[1].flightSegment[0].operatingAirline.code}"/>
		
		<c:choose>
		 	<c:when test="${AirlineEnd == 'AE'}">
		      <c:set var="AirlineEnd" value="華信航空"/></c:when>
		    <c:when test="${AirlineEnd == 'BR'}">
		      <c:set var="AirlineEnd" value="長榮航空"/></c:when>
		    <c:when test="${AirlineEnd == 'B7'}">
		      <c:set var="AirlineEnd" value="立榮航空"/></c:when>
		    <c:when test="${AirlineEnd == 'CI'}">
		      <c:set var="AirlineEnd" value="中華航空"/></c:when>
		    <c:when test="${AirlineEnd == 'FE'}">
		      <c:set var="AirlineEnd" value="遠東航空"/></c:when>
		    <c:when test="${AirlineEnd == 'GE'}">
		      <c:set var="AirlineEnd" value="復興航空"/></c:when>
		    <c:when test="${AirlineEnd == 'IT'}">
		      <c:set var="AirlineEnd" value="台灣虎航"/></c:when>
		    <c:when test="${AirlineEnd == 'KE'}">
		      <c:set var="AirlineEnd" value="韓國航空"/></c:when>
		    <c:when test="${AirlineEnd == 'LJ'}">
		      <c:set var="AirlineEnd" value="真航空"/></c:when>
		    <c:when test="${AirlineEnd == 'OZ'}">
		      <c:set var="AirlineEnd" value="韓亞航空"/></c:when>
		    <c:when test="${AirlineEnd == 'JL'}">
		      <c:set var="AirlineEnd" value="日本航空"/></c:when>
		    <c:when test="${AirlineEnd == 'NH'}">
		      <c:set var="AirlineEnd" value="全日空航空"/></c:when>
		    <c:when test="${AirlineEnd == 'NQ'}">
		      <c:set var="AirlineEnd" value="全日空日本"/></c:when>  
		    <c:when test="${AirlineEnd == 'GK'}">
		      <c:set var="AirlineEnd" value="捷星日本"/></c:when>  
		    <c:when test="${AirlineEnd == 'TW'}">
		      <c:set var="AirlineEnd" value="德威航空"/></c:when>
		    <c:when test="${AirlineEnd == 'CA'}">
		      <c:set var="AirlineEnd" value="中國國際"/></c:when>
		    <c:when test="${AirlineEnd == 'CX'}">
		      <c:set var="AirlineEnd" value="國泰航空"/></c:when>
		    <c:when test="${AirlineEnd == 'CZ'}">
		      <c:set var="AirlineEnd" value="中國南方"/></c:when>
		    <c:when test="${AirlineEnd == 'FM'}">
		      <c:set var="AirlineEnd" value="上海航空"/></c:when>
		    <c:when test="${AirlineEnd == 'HO'}">
		      <c:set var="AirlineEnd" value="吉祥航空"/></c:when>
		    <c:when test="${AirlineEnd == 'HU'}">
		      <c:set var="AirlineEnd" value="海南航空"/></c:when>
		    <c:when test="${AirlineEnd == 'HX'}">
		      <c:set var="AirlineEnd" value="香港航空"/></c:when>
		    <c:when test="${AirlineEnd == 'KA'}">
		      <c:set var="AirlineEnd" value="港龍航空"/></c:when>
		    <c:when test="${AirlineEnd == 'MF'}">
		      <c:set var="AirlineEnd" value="廈門航空"/></c:when>
		    <c:when test="${AirlineEnd == 'MU'}">
		      <c:set var="AirlineEnd" value="中國東方"/></c:when>
		    <c:when test="${AirlineEnd == 'NX'}">
		      <c:set var="AirlineEnd" value="澳門航空"/></c:when>
		    <c:when test="${AirlineEnd == 'OM'}">
		      <c:set var="AirlineEnd" value="蒙古航空"/></c:when>
		    <c:when test="${AirlineEnd == 'SC'}">
		      <c:set var="AirlineEnd" value="山東航空"/></c:when>
		    <c:when test="${AirlineEnd == 'UO'}">
		      <c:set var="AirlineEnd" value="香港快運"/></c:when>
		    <c:when test="${AirlineEnd == 'ZH'}">
		      <c:set var="AirlineEnd" value="深圳航空"/></c:when>
		    <c:when test="${AirlineEnd == '3U'}">
		      <c:set var="AirlineEnd" value="四川航空"/></c:when>
		    <c:when test="${AirlineEnd == 'AI'}">
		      <c:set var="AirlineEnd" value="印度航空"/></c:when>
		    <c:when test="${AirlineEnd == 'AK'}">
		      <c:set var="AirlineEnd" value="亞洲航空"/></c:when>
		    <c:when test="${AirlineEnd == 'BG'}">
		      <c:set var="AirlineEnd" value="孟加拉航空"/></c:when>
		    <c:when test="${AirlineEnd == 'BI'}">
		      <c:set var="AirlineEnd" value="汶萊皇家"/></c:when>
		    <c:when test="${AirlineEnd == 'D7'}">
		      <c:set var="AirlineEnd" value="亞航X"/></c:when>
		    <c:when test="${AirlineEnd == 'FD'}">
		      <c:set var="AirlineEnd" value="泰國亞洲"/></c:when>
		    <c:when test="${AirlineEnd == 'FJ'}">
		      <c:set var="AirlineEnd" value="斐濟航空"/></c:when>
		    <c:when test="${AirlineEnd == 'GA'}">
		      <c:set var="AirlineEnd" value="印尼航空"/></c:when>
		    <c:when test="${AirlineEnd == 'JQ'}">
		      <c:set var="AirlineEnd" value="捷星航空"/></c:when>
		    <c:when test="${AirlineEnd == 'MH'}">
		      <c:set var="AirlineEnd" value="馬來西亞"/></c:when>
		    <c:when test="${AirlineEnd == 'MI'}">
		      <c:set var="AirlineEnd" value="勝安航空"/></c:when>
		    <c:when test="${AirlineEnd == 'NZ'}">
		      <c:set var="AirlineEnd" value="紐西蘭航空"/></c:when>
		    <c:when test="${AirlineEnd == 'PG'}">
		      <c:set var="AirlineEnd" value="曼谷航空"/></c:when>
		    <c:when test="${AirlineEnd == 'PR'}">
		      <c:set var="AirlineEnd" value="菲律賓航空"/></c:when>
		    <c:when test="${AirlineEnd == 'QF'}">
		      <c:set var="AirlineEnd" value="澳洲航空"/></c:when>
		    <c:when test="${AirlineEnd == 'QV'}">
		      <c:set var="AirlineEnd" value="寮國航空"/></c:when>
		    <c:when test="${AirlineEnd == 'QZ'}">
		      <c:set var="AirlineEnd" value="印尼亞洲"/></c:when>
		    <c:when test="${AirlineEnd == 'RA'}">
		      <c:set var="AirlineEnd" value="尼泊爾航空"/></c:when>
		    <c:when test="${AirlineEnd == 'SQ'}">
		      <c:set var="AirlineEnd" value="新加坡航空"/></c:when>
		    <c:when test="${AirlineEnd == 'TG'}">
		      <c:set var="AirlineEnd" value="泰國航空"/></c:when>
		    <c:when test="${AirlineEnd == 'TN'}">
		      <c:set var="AirlineEnd" value="大溪地航空"/></c:when>
		    <c:when test="${AirlineEnd == 'TR'}">
		      <c:set var="AirlineEnd" value="新加坡虎航"/></c:when>
		    <c:when test="${AirlineEnd == 'TZ'}">
		      <c:set var="AirlineEnd" value="酷航航空"/></c:when>
		    <c:when test="${AirlineEnd == 'VN'}">
		      <c:set var="AirlineEnd" value="越南航空"/></c:when>
		    <c:when test="${AirlineEnd == 'WE'}">
		      <c:set var="AirlineEnd" value="微笑泰航"/></c:when>
		    <c:when test="${AirlineEnd == '3K'}">
		      <c:set var="AirlineEnd" value="捷星亞洲"/></c:when>
		    <c:when test="${AirlineEnd == '5J'}">
		      <c:set var="AirlineEnd" value="宿霧太平洋"/></c:when>
		    <c:when test="${AirlineEnd == '8M'}">
		      <c:set var="AirlineEnd" value="緬甸國際"/></c:when>
		    <c:when test="${AirlineEnd == '9W'}">
		      <c:set var="AirlineEnd" value="印度捷特"/></c:when>
		    
		</c:choose>	
			
    <!--航空公司轉中文 -->

		<div class="filtr-item" data-category="${Airline}">
        <div class="flylist"> 
          
          <!--航班n,第一個最便宜多一個div class="romde_box act" 標籤名稱，其它的沒有-->
             
          <!--航班n_結束--> 
          
          <!--航班n-->
          <div class="romde_box">
            <div class="border"> 
              <!--第1段-->
              <div class="num-tag">${status.index + 1}</div>
              <div class="flybox row">
                <div class="col-xs-10 text-center fly-leftbox">
                  <div class="col-xs-3 fl-namebox text-center">
                            
		  <!--插入航空公司圖片區 -->
                 <c:choose>	
                 
	                 <c:when test="${Airline == '中華航空'}">
	   					<span><img src="../uploadFiles/CI.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '長榮航空'}">
	   					<span><img src="../uploadFiles/BR.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '日本航空'}">
	   					<span><img src="../uploadFiles/JL.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '全日空航空'}">
	   					<span><img src="../uploadFiles/NH.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '全日空日本'}">
	   					<span><img src="../uploadFiles/NQ.png" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '新加坡虎航'}">
	   					<span><img src="../uploadFiles/TR.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '捷星日本'}">
	   					<span><img src="../uploadFiles/GK.png" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '國泰航空'}">
	   					<span><img src="../uploadFiles/CX.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '捷星亞洲'}">
	   					<span><img src="../uploadFiles/3k.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${Airline == '菲律賓航空'}">
	   					<span><img src="../uploadFiles/PR.gif" style="float:left"></span>
					 </c:when>
	                					 
                 </c:choose>	
          <!--插入航空公司圖片區 --> 
                 
                    <div class="fl-name">${Airline}</div>
                    <div class="fl-num">${operatingAirline}${flightNumber}</div>
                  </div>     
                  <div class="col-xs-3 fl-timebox text-right">
                    <div class="fl-time">${fn:substring(departureDateTime,0,10)}</div>
                    <div class="fl-place">${fn:substring(departureDateTime,11,16)}<span>${departureAirportlocationCode}</span></div>
                  </div>
                  <div class=" col-xs-3 fl-durationbox text-center">
                    <div class="fl-dutime"> <span>${elapsedTimeGo}</span>分 </div>
                    <div class="t-line" ></div>
                    <div class="fl-flyname"></div>
                  </div>
                  <div class=" col-xs-3 fl-timebox text-left">
                    <div class="fl-time">${fn:substring(arrivalDateTime,0,10)}</div>
                    <div class="fl-place">${fn:substring(arrivalDateTime,11,16)}<span>${arrivalAirportlocationCode}</span></div>
                  </div>
                </div>
                <div class="col-xs-2 fly-info">
                  <div class="fltool">
                    <li class="icon_fl1">${airEquipType}</li>
                    <li class="icon_fl2">經濟艙</li>
                    <li class="icon_fl3">30kg/人</li>
                  </div>
                </div>
              </div>
              
              <!--第1段_結束--> 
              
              <!--第2段-->
              
              <div class="flybox row border-top">
                <div class="col-xs-10 text-center fly-leftbox">
                  <div class="col-xs-3 fl-namebox text-center">
                    
                     <!--插入航空公司圖片區 -->
                 <c:choose>	
                 
	                 <c:when test="${AirlineEnd == '中華航空'}">
	   					<span><img src="../uploadFiles/CI.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '長榮航空'}">
	   					<span><img src="../uploadFiles/BR.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '日本航空'}">
	   					<span><img src="../uploadFiles/JL.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '全日空航空'}">
	   					<span><img src="../uploadFiles/NH.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '全日空日本'}">
	   					<span><img src="../uploadFiles/NQ.png" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '新加坡虎航'}">
	   					<span><img src="../uploadFiles/TR.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '捷星日本'}">
	   					<span><img src="../uploadFiles/GK.png" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '國泰航空'}">
	   					<span><img src="../uploadFiles/CX.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '捷星亞洲'}">
	   					<span><img src="../uploadFiles/3k.gif" style="float:left"></span>
					 </c:when>
	                 <c:when test="${AirlineEnd == '菲律賓航空'}">
	   					<span><img src="../uploadFiles/PR.gif" style="float:left"></span>
					 </c:when>
	                					 
                 </c:choose>	
          <!--插入航空公司圖片區 --> 
                      
                    <div class="fl-name">${AirlineEnd}</div>
                    <div class="fl-num">${operatingAirlineEnd}${flightNumberEnd}</div>
                  </div>
                  <div class="col-xs-3 fl-timebox text-right">
                    <div class="fl-time">${fn:substring(departureDateTimeEnd,0,10)}</div>
                    <div class="fl-place">${fn:substring(departureDateTimeEnd,11,16)}<span>${departureAirportlocationCodeEnd}</span></div>
                  </div>
                  <div class=" col-xs-3 fl-durationbox text-center">
                    <div class="fl-dutime"> <span>${elapsedTimeEnd}</span>分 </div>
                    <div class="t-line" ></div>
                    <div class="fl-flyname"></div>
                  </div>
                  <div class=" col-xs-3 fl-timebox text-left">
                    <div class="fl-time">${fn:substring(arrivalDateTimeEnd,0,10)}</div>
                    <div class="fl-place">${fn:substring(arrivalDateTimeEnd,11,16)}<span>${arrivalAirportlocationCodeEnd}</span></div>
                  </div>
                </div>
                <div class="col-xs-2 fly-info">
                  <div class="fltool">
                    <li class="icon_fl1">${airEquipTypeEnd}</li>
                    <li class="icon_fl2">經濟艙</li>
                    <li class="icon_fl3">30kg/人</li>
                  </div>
                </div>
              </div>
              
              <!--第2段_結束--> 
              
              <!--票價-->
              <div class="row">
                <div class="tickbox ">
                  <div class="col-xs-6  btn-tickbox"></div>
                  <div class="col-xs-6 fpric text-right"> 
                  <div class="list_pricet">
			  <!--fmt:formatNumber可以格式化   -->
			  		<span class="price_de">含稅總價格</span>
                    <span class="price">NT$<span class="fontb"><fmt:formatNumber value='${totalFareamount}' type="number"/>&nbsp;&nbsp;</span></span>
                  
                   
<!--傳遞是下一頁資料 -->       
<form action="<c:url value="/order.controller" />" method="post" style="float:right">       
 
<input type="hidden" name="F_start" value="${departureAirportlocationCode}">
<input type="hidden" name="F_startend" value="${arrivalAirportlocationCode}">
<input type="hidden" name="F_endback" value="${departureAirportlocationCodeEnd}">
<input type="hidden" name="F_end" value="${arrivalAirportlocationCodeEnd}">
<input type="hidden" name="F_goDateStart" value="${departureDateTime}">
<input type="hidden" name="F_goDateEnd" value="${arrivalDateTime}">
<input type="hidden" name="F_backDateStart" value="${departureDateTimeEnd}">
<input type="hidden" name="F_backDateEnd" value="${arrivalDateTimeEnd}">
<input type="hidden" name="F_toatalTimeGo" value="${elapsedTimeGo}">
<input type="hidden" name="F_toatalTimeEnd" value="${elapsedTimeEnd}">
<input type="hidden" name="AirLine_go" value="${Airline}">
<input type="hidden" name="AirLine_back" value="${AirlineEnd}">
<input type="hidden" name="Flight_numbergo" value="${operatingAirline}${flightNumber}">
<input type="hidden" name="Flight_numberback" value="${operatingAirlineEnd}${flightNumberEnd}">
<input type="hidden" name="F_cabin" value="經濟艙">
<input type="hidden" name="F_adult" value="${formBean.people}">
<input type="hidden" name="F_child" value="${formBean.people2}">
<input type="hidden" name="F_baby" value="${formBean.people3}">

<input type="hidden" name="F_total" value="<fmt:formatNumber value='${totalFareamount}' type="number"/>">

<input type="hidden" name="F_taxAdult" value="<fmt:parseNumber integerOnly="true" value="${taxAdult}"/>">
<input type="hidden" name="F_priceAdult" value="<fmt:parseNumber integerOnly="true" value="${baseFareAdult}"/>">

<input type="hidden" name="F_taxChild" value="<fmt:parseNumber integerOnly="true" value="${taxChild}"/>">
<input type="hidden" name="F_priceChild" value="<fmt:parseNumber integerOnly="true" value="${baseFareChild}"/>">

<input type="hidden" name="F_taxBaby" value="<fmt:parseNumber integerOnly="true" value="${taxBaby}"/>">
<input type="hidden" name="F_priceBaby" value="<fmt:parseNumber integerOnly="true" value="${baseFareBaby}"/>">





<!-- <br> -->
<%-- 印出來：${departureAirportlocationCode}<br> --%>
<%-- 印出來：${arrivalAirportlocationCode}<br> --%>
<%-- 印出來：${departureAirportlocationCodeEnd}<br> --%>
<%-- 印出來：${arrivalAirportlocationCodeEnd}<br> --%>
<%-- 印出來：${departureDateTime}<br> --%>
<%-- 印出來：${arrivalDateTime}<br> --%>
<%-- 印出來：${departureDateTimeEnd}<br> --%>
<%-- 印出來：${arrivalDateTimeEnd}<br> --%>
<%-- 去程時間：${elapsedTimeGo}<br> --%>
<%-- 回程時間：${elapsedTimeEnd}<br> --%>
<%-- 印出來：${Airline}<br> --%>
<%-- 印出來：${AirlineEnd}<br> --%>
<%-- 印出來：${operatingAirline}${flightNumber}<br> --%>
<%-- 印出來：${operatingAirlineEnd}${flightNumberEnd}<br> --%>
<!-- 印出來：F_cabin = 經濟艙<br> -->
<%-- 成人數：${formBean.people}<br> --%>
<!-- fmt:formatNumber type="number" 出來會是123456.0 --> 
<%-- 印出來：NT$<fmt:formatNumber value='${totalFareamount}' type="number"/><br> --%>
<%-- 印出來：NT$<fmt:formatNumber value='${baseFareAdult}' type='number'/><br> --%>
<%-- 印出來：NT$<fmt:formatNumber value='${taxAdult}' type='number'/><br> --%>
<!-- fmt:parseNumber integerOnly="true" 出來會是123456 --> 
<%-- 印出來：NT$  <fmt:parseNumber integerOnly="true" value="${totalFareamount}"/><br> --%>
<%-- 印出來：NT$  <fmt:parseNumber integerOnly="true" value="${baseFareAdult}"/><br> --%>
<%-- 印出來：NT$ <fmt:parseNumber integerOnly="true" value="${taxAdult}"/><br> --%>
<%-- 印出來：NT$  <fmt:parseNumber integerOnly="true" value="${baseFareChild}"/><br> --%>
<%-- 印出來：NT$ <fmt:parseNumber integerOnly="true" value="${taxChild}"/><br> --%>
<%-- 印出來：NT$  <fmt:parseNumber integerOnly="true" value="${baseFareBaby}"/><br> --%>
<%-- 印出來：NT$ <fmt:parseNumber integerOnly="true" value="${taxBaby}"/><br> --%>
       
       
<span class="check">
  	 	<input type="submit" class="btn btn_check" name="prodaction" value="訂位">
</span>
</form> </div>
</div>

  </div>
</div>

<!--票價_結束--> 
   
  </div>
</div>
<!--航班n_結束-->        
       
       
       
       
       
       
       
       


        </div>
     </div>
   </c:forEach>
  
</div>
   
      </div>
<!--右側欄_結束--> 


      
<!--左側欄-->
      <div class="panel-group  flyst" id="accordion">
        <div class="panel panel-info">
          <div id="mo_accordion" class="panel-collapse contbg  main_left martb" role="tabpanel" aria-labelledby="headingOne">
            <div class="modal-header visible-xs visible-sm">
              <button type="button" class="close" data-toggle="collapse" data-parent="#accordion" href="#mo_accordion" ><span aria-hidden="true">×</span></button>
              <h4 class="modal-title" id="pop_protickLabel">航班篩選</h4>
            </div>
            
             <!--航空公司-->
             
            <div class="list-group">
              <div style="text-align: center;"> 
              <h3>可選航班共
              <span style="color:#0171be;font-size:36px;">&nbsp;${PricedItinCount}&nbsp;</span>組 </h3> 
              </div>
              
              
            <ul class="filters">
              
              
              <li>
                
                <ul class="are_nav airpn" style="text-align:center;">
                 
                 
                  <li data-filter="all">
                  <a href="#" class="list-group-item list-group-item-action">
<!--                     <div class="cdst"> -->
<!--                       <input type="checkbox" id="cd-checkbox-s1"> -->
<!--                       <label for="cd-checkbox-s1"></label> -->
<!--                     </div> -->
                    <span style="font-size: 2.2rem; font-weight:bold;">所有航空</span></a>
                  </li>
			<!--  判定迴圈用   -->
                
                
                <c:forEach items="${airl}" var="bean">
               	<c:set var="Airline" value="${bean}"/>
				<!-- 轉換航空公司中文 -->
	            <c:choose>
					 	<c:when test="${Airline == 'AE'}">
					      <c:set var="Airline" value="華信航空"/></c:when>
					    <c:when test="${Airline == 'BR'}">
					      <c:set var="Airline" value="長榮航空"/></c:when>
					    <c:when test="${Airline == 'B7'}">
					      <c:set var="Airline" value="立榮航空"/></c:when>
					    <c:when test="${Airline == 'CI'}">
					      <c:set var="Airline" value="中華航空"/></c:when>
					    <c:when test="${Airline == 'FE'}">
					      <c:set var="Airline" value="遠東航空"/></c:when>
					    <c:when test="${Airline == 'GE'}">
					      <c:set var="Airline" value="復興航空"/></c:when>
					    <c:when test="${Airline == 'IT'}">
					      <c:set var="Airline" value="台灣虎航"/></c:when>
					    <c:when test="${Airline == 'KE'}">
					      <c:set var="Airline" value="韓國航空"/></c:when>
					    <c:when test="${Airline == 'LJ'}">
					      <c:set var="Airline" value="真航空"/></c:when>
					    <c:when test="${Airline == 'OZ'}">
					      <c:set var="Airline" value="韓亞航空"/></c:when>
					    <c:when test="${Airline == 'JL'}">
					      <c:set var="Airline" value="日本航空"/></c:when>
					    <c:when test="${Airline == 'NH'}">
					      <c:set var="Airline" value="全日空航空"/></c:when>
					    <c:when test="${Airline == 'NQ'}">
					      <c:set var="Airline" value="全日空日本"/></c:when>
					    <c:when test="${Airline == 'GK'}">
					      <c:set var="Airline" value="捷星日本"/></c:when>
					    <c:when test="${Airline == 'TW'}">
					      <c:set var="Airline" value="德威航空"/></c:when>
					    <c:when test="${Airline == 'CA'}">
					      <c:set var="Airline" value="中國國際"/></c:when>
					    <c:when test="${Airline == 'CX'}">
					      <c:set var="Airline" value="國泰航空"/></c:when>
					    <c:when test="${Airline == 'CZ'}">
					      <c:set var="Airline" value="中國南方"/></c:when>
					    <c:when test="${Airline == 'FM'}">
					      <c:set var="Airline" value="上海航空"/></c:when>
					    <c:when test="${Airline == 'HO'}">
					      <c:set var="Airline" value="吉祥航空"/></c:when>
					    <c:when test="${Airline == 'HU'}">
					      <c:set var="Airline" value="海南航空"/></c:when>
					    <c:when test="${Airline == 'HX'}">
					      <c:set var="Airline" value="香港航空"/></c:when>
					    <c:when test="${Airline == 'KA'}">
					      <c:set var="Airline" value="港龍航空"/></c:when>
					    <c:when test="${Airline == 'MF'}">
					      <c:set var="Airline" value="廈門航空"/></c:when>
					    <c:when test="${Airline == 'MU'}">
					      <c:set var="Airline" value="中國東方"/></c:when>
					    <c:when test="${Airline == 'NX'}">
					      <c:set var="Airline" value="澳門航空"/></c:when>
					    <c:when test="${Airline == 'OM'}">
					      <c:set var="Airline" value="蒙古航空"/></c:when>
					    <c:when test="${Airline == 'SC'}">
					      <c:set var="Airline" value="山東航空"/></c:when>
					    <c:when test="${Airline == 'UO'}">
					      <c:set var="Airline" value="香港快運"/></c:when>
					    <c:when test="${Airline == 'ZH'}">
					      <c:set var="Airline" value="深圳航空"/></c:when>
					    <c:when test="${Airline == '3U'}">
					      <c:set var="Airline" value="四川航空"/></c:when>
					    <c:when test="${Airline == 'AI'}">
					      <c:set var="Airline" value="印度航空"/></c:when>
					    <c:when test="${Airline == 'AK'}">
					      <c:set var="Airline" value="亞洲航空"/></c:when>
					    <c:when test="${Airline == 'BG'}">
					      <c:set var="Airline" value="孟加拉航空"/></c:when>
					    <c:when test="${Airline == 'BI'}">
					      <c:set var="Airline" value="汶萊皇家"/></c:when>
					    <c:when test="${Airline == 'D7'}">
					      <c:set var="Airline" value="亞航X"/></c:when>
					    <c:when test="${Airline == 'FD'}">
					      <c:set var="Airline" value="泰國亞洲"/></c:when>
					    <c:when test="${Airline == 'FJ'}">
					      <c:set var="Airline" value="斐濟航空"/></c:when>
					    <c:when test="${Airline == 'GA'}">
					      <c:set var="Airline" value="印尼航空"/></c:when>
					    <c:when test="${Airline == 'JQ'}">
					      <c:set var="Airline" value="捷星航空"/></c:when>
					    <c:when test="${Airline == 'MH'}">
					      <c:set var="Airline" value="馬來西亞"/></c:when>
					    <c:when test="${Airline == 'MI'}">
					      <c:set var="Airline" value="勝安航空"/></c:when>
					    <c:when test="${Airline == 'NZ'}">
					      <c:set var="Airline" value="紐西蘭航空"/></c:when>
					    <c:when test="${Airline == 'PG'}">
					      <c:set var="Airline" value="曼谷航空"/></c:when>
					    <c:when test="${Airline == 'PR'}">
					      <c:set var="Airline" value="菲律賓航空"/></c:when>
					    <c:when test="${Airline == 'QF'}">
					      <c:set var="Airline" value="澳洲航空"/></c:when>
					    <c:when test="${Airline == 'QV'}">
					      <c:set var="Airline" value="寮國航空"/></c:when>
					    <c:when test="${Airline == 'QZ'}">
					      <c:set var="Airline" value="印尼亞洲"/></c:when>
					    <c:when test="${Airline == 'RA'}">
					      <c:set var="Airline" value="尼泊爾航空"/></c:when>
					    <c:when test="${Airline == 'SQ'}">
					      <c:set var="Airline" value="新加坡航空"/></c:when>
					    <c:when test="${Airline == 'TG'}">
					      <c:set var="Airline" value="泰國航空"/></c:when>
					    <c:when test="${Airline == 'TN'}">
					      <c:set var="Airline" value="大溪地航空"/></c:when>
					    <c:when test="${Airline == 'TR'}">
					      <c:set var="Airline" value="新加坡虎航"/></c:when>
					    <c:when test="${Airline == 'TZ'}">
					      <c:set var="Airline" value="酷航航空"/></c:when>
					    <c:when test="${Airline == 'VN'}">
					      <c:set var="Airline" value="越南航空"/></c:when>
					    <c:when test="${Airline == 'WE'}">
					      <c:set var="Airline" value="微笑泰航"/></c:when>
					    <c:when test="${Airline == '3K'}">
					      <c:set var="Airline" value="捷星亞洲"/></c:when>
					    <c:when test="${Airline == '5J'}">
					      <c:set var="Airline" value="宿霧太平洋"/></c:when>
					    <c:when test="${Airline == '8M'}">
					      <c:set var="Airline" value="緬甸國際"/></c:when>
					    <c:when test="${Airline == '9W'}">
					      <c:set var="Airline" value="印度捷特"/></c:when>
					    
			</c:choose>
			
<!--煩人的判定重複區域 -->
			<li data-filter="${Airline}">
               <a href="#" class="list-group-item list-group-item-action">
       			 <span style="font-size: 2.2rem; font-weight:bold;" id="${Airline}">${Airline}</span>
<!--                     <span class="price"> -->
<!--                     <span> -->
<%--                     <fmt:formatNumber value='${bean.airItineraryPricingInfo[0].itinTotalFare.totalFare.amount}' type="number"/>元起</span> --%>
<!--                     </span> -->
                </a>
      	 	</li>

		


						
			
			
<!--煩人的判定重複區域 -->		

			
				
				
                  
				
				 
				 
              
				
                
                </c:forEach>
                
                </ul>
              </li>
     
              <!--航空公司_結束-->
              
            </ul>
            
         </div>    
            
            
            
          </div>
        </div>
      </div>
      
      <!--左側欄_結束--> 
      
      
      
      
      
      
      
      
      
    </div>
    

    
  </div>

  
</div>

<!--內容_結束--> 






</div>





<!-- ===================機票查詢資料結束==================== -->




		<!-- Footer -->
			<footer class="bg3 p-t-75 p-b-32">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">關於百川</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 羅 平 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 莊鎧宇</a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 鄭祺融 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 陳建良 </a></li>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 張誌元 </a></li>
						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">特別感謝</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04">資策會</a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04">先啟資訊 </a></li>

						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">訂購諮詢</h4>

						<p class="stext-107 cl7 size-201">台北市大安區復興南路一段390號 2,3,15樓
							+886 (0)2 6631 6666</p>

						<div class="p-t-27">
							<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-facebook"></i>
							</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-instagram"></i>
							</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-pinterest-p"></i>
							</a>
						</div>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">菁英招募</h4>

					</div>
				</div>

				<div class="p-t-40">
					<div class="flex-c-m flex-w p-b-18">
						<a href="#" class="m-all-1"> <img
							src="../images/icons/icon-pay-01.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="../images/icons/icon-pay-02.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="../images/icons/icon-pay-03.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="../images/icons/icon-pay-04.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="../images/icons/icon-pay-05.png" alt="ICON-PAY">
						</a>
					</div>

					<p class="stext-107 cl6 txt-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | Made with <i class="fa fa-heart-o"
							aria-hidden="true"></i> by <a href="https://colorlib.com"
							target="_blank">Colorlib</a> &amp; distributed by <a
							href="https://themewagon.com" target="_blank">ThemeWagon</a>
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



<!-- 回傳機票表單JSON -->

<script>
$(".closepop").on("click",function(){$("#pop_protick").modal("hide")});$(".pop_res .dropdown-menu  .close").on("click",function(){$(".pop_res .dropdown-menu").modal("hide")});
</script> 

<!-- 資料排序 -->

<script src="../js/jquery.filterizr.min.js"></script>
<script>
$(".jq22").filterizr();
</script>


	
<!--===============================================================================================-->
	<script src="../js/main.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js?sv=1" ></script> 
	<script type="text/javascript" src="../js/bootstrap-tooltip.js?sv=1"></script> 
	<script type="text/javascript" src="../js/bootstrap-popover.js?sv=1"></script> 
	<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

</body>
</html>