<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Home</title>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"> </script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<!--===============================================================================================-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css"
	rel="stylesheet">




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
						src="images/icons/logo-11.png" alt="IMG-LOGO"></a>
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


		<!-- Banner -->



		<!-- 為了秀出header的不得已div-->
		<!-- 產品顯示部分 start-->




		<div style='padding: 10% 20%'>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="jumbotron">
							<h2>產品管理平台</h2>
							<p>本月業績系統</p>
							<hr>
							<!-- 							<a class="btn btn-primary btn-large" href="#checkId" -->
							<!-- 								data-toggle="modal" style="padding:20px">輸入產品代號</a> -->
							<a style="margin-left: 75%" class="btn btn-info btn-large"
								type="button" id=""
								href="<c:url value="/_027_DaytourProduct/ManageProduct.jsp" />">
								修改產品系統</a> <a class="btn btn-info btn-large" type="button" id=""
								href="<c:url value="/Partner/Logout" />"> 登出</a>
						</div>
						<div class="page-header"></div>
						<div style="margin:auto;padding:0px 50px 30px 30px" >
	   					<button class="btn btn-info btn-large" type="button"
								onclick="areaRank()">各地區銷售實績</button>
						    <button class="btn btn-info btn-large" type="button"
								onclick="first5()">產品銷售前五名</button>
							<button class="btn btn-info btn-large" type="button"
								onclick="Tokyo()">關東</button>
							<button class="btn btn-info btn-large" type="button"
								onclick="Kansai()">關西</button>
							<button class="btn btn-info btn-large" type="button"
								onclick="Kyushu()">九州</button>
							<button class="btn btn-info btn-large" type="button"
								onclick="Hokkaido()">北海道</button>
							<button class="btn btn-info btn-large" type="button"
								onclick="Okinawa()">沖繩</button>
							
						</div>

						<p id="canvas">
							<canvas id="myChartK" width="300" height="150"></canvas>
						</p>
						<!-- 							<div class="row"> -->
						<!-- 								<div class="col-md-12"> -->
						<!-- 									<div class="tabbable" id="tabs-210647"> -->
						<!-- 										<ul class="nav nav-tabs"> -->
						<!-- 											<li class="nav-item"><a class="nav-link active" -->
						<!-- 												href="#tab1" data-toggle="tab">關西</a></li> -->
						<!-- 											<li class="nav-item"><a class="nav-link" href="#tab2" -->
						<!-- 												data-toggle="tab">關東</a></li> -->
						<!-- 										</ul> -->
						<!-- 										<div class="tab-content"> -->
						<!-- 											<div class="tab-pane active" id="tab1"> -->
						<%-- 												<p><canvas id="myChartK" width="300" height="150"></canvas></p> --%>
						<!-- 											</div> -->
						<!-- 											<div class="tab-pane" id="tab2"> -->
						<%-- 												<p><canvas id="myChartT" width="300" height="150"></canvas></p> --%>
						<!-- 											</div> -->
						<!-- 										</div> -->
						<!-- 									</div> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
					</div>
				</div>
			</div>
		</div>

		<!-- 產品顯示部分end -->

		<!-- Modal 產品代號輸入區塊start-->

		<!-- Modal 區塊end-->

		<!-- Load more -->


		<!-- Footer -->
		<footer class="bg3 p-t-75 p-b-32">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">Categories</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Women </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Men </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Shoes </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Watches </a></li>
						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">Help</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Track Order </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Returns </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> Shipping </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a></li>
						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">GET IN TOUCH</h4>

						<p class="stext-107 cl7 size-201">Any questions? Let us know
							in store at 8th floor, 379 Hudson St, New York, NY 10018 or call
							us on (+1) 96 716 6879</p>

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
						<h4 class="stext-301 cl0 p-b-30">Newsletter</h4>

						<form>
							<div class="wrap-input1 w-full p-b-4">
								<input class="input1 bg-none plh1 stext-107 cl7" type="text"
									name="email" placeholder="email@example.com">
								<div class="focus-input1 trans-04"></div>
							</div>

							<div class="p-t-18">
								<button
									class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Subscribe</button>
							</div>
						</form>
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
			<span class="symbol-btn-back-to-top"> <i
				class="zmdi zmdi-chevron-up"></i>
			</span>
		</div>

		<!-- Modal1 商品明細頁-->
		<!--  Modal終點-->

	</div>

	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>

	<script type="text/javascript">
	$(document).ready(function() {
		areaRank();
	});
	
	function areaRank(){
		$('#canvas').empty();
		$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
		var ctx = document.getElementById("myChartK").getContext('2d');
		var myChartT = new Chart(ctx, {
		    type: 'pie',
		    data: {
		        labels: ["北海道", "關西", "關東", "沖繩", "九州"],
//	 	        labels: ["a", "b", "c", "d"],
		        datasets: [{
		            label: '# of Sales',
		            data: [${SalesSumH[0].totalSales+SalesSumH[1].totalSales+SalesSumH[2].totalSales},
		            	${SalesSumK[0].totalSales+SalesSumK[1].totalSales+SalesSumK[2].totalSales+SalesSumK[3].totalSales},
		            	${SalesSumT[0].totalSales+SalesSumT[1].totalSales+SalesSumK[2].totalSales},
		            	${SalesSumO[0].totalSales+SalesSumO[1].totalSales},
		            	${SalesSumU[0].totalSales+SalesSumU[1].totalSales},],
//	 	            data: [11,22,33,44],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
	 	                'rgba(153, 102, 255, 0.2)',
//	 	                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
	 	                'rgba(153, 102, 255, 1)',
//	 	                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 2
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		}
	
	function first5(){
		$('#canvas').empty();
		$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
		var ctx = document.getElementById("myChartK").getContext('2d');
		var myChartT = new Chart(ctx, {
		    type: 'polarArea',
		    data: {
		        labels: ["${SalesSumRank[0].product_Id}${SalesSumRank[0].prod_Name}", "${SalesSumRank[1].product_Id}${SalesSumRank[1].prod_Name}", "${SalesSumRank[2].product_Id}${SalesSumRank[2].prod_Name}", "${SalesSumRank[3].product_Id}${SalesSumRank[3].prod_Name}", "${SalesSumRank[4].product_Id}${SalesSumRank[4].prod_Name}"],
//	 	        labels: ["a", "b", "c", "d"],
		        datasets: [{
		            label: '# of Sales',
		            data: [${SalesSumRank[0].totalSales},${SalesSumRank[1].totalSales},${SalesSumRank[2].totalSales},${SalesSumRank[3].totalSales},${SalesSumRank[4].totalSales}],
//	 	            data: [11,22,33,44],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
	 	                'rgba(153, 102, 255, 0.2)',
//	 	                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
	 	                'rgba(153, 102, 255, 1)',
//	 	                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 2
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		}
	
	function Kansai(){
	$('#canvas').empty();
	$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
	var ctx = document.getElementById("myChartK").getContext('2d');
	var myChartT = new Chart(ctx, {
	    type: 'polarArea',
	    data: {
	        labels: ["${SalesSumK[0].product_Id}${SalesSumK[0].prod_Name}", "${SalesSumK[1].product_Id}${SalesSumK[1].prod_Name}", "${SalesSumK[2].product_Id}${SalesSumK[2].prod_Name}", "${SalesSumK[3].product_Id}${SalesSumK[3].prod_Name}"],
// 	        labels: ["a", "b", "c", "d"],
	        datasets: [{
	            label: '# of Sales',
	            data: [${SalesSumK[0].totalSales},${SalesSumK[1].totalSales},${SalesSumK[2].totalSales},${SalesSumK[3].totalSales}],
// 	            data: [11,22,33,44],
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
// 	                'rgba(153, 102, 255, 0.2)',
// 	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
// 	                'rgba(153, 102, 255, 1)',
// 	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 2
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
	}
	
	function Tokyo(){
	$('#canvas').empty();
	$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
	var ctxT = document.getElementById("myChartK").getContext('2d');
	var myChartT = new Chart(ctxT, {
	    type: 'polarArea',
	    data: {
	        labels: ["${SalesSumT[0].product_Id}${SalesSumT[0].prod_Name}", "${SalesSumT[1].product_Id}${SalesSumT[1].prod_Name}", "${SalesSumT[2].product_Id}${SalesSumT[2].prod_Name}"],
// 	        labels: ["a", "b", "c", "d"],
	        datasets: [{
	            label: '# of Sales',
	            data: [${SalesSumT[0].totalSales},${SalesSumT[1].totalSales},${SalesSumT[2].totalSales}],
// 	            data: [11,22,33,44],
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
// 	                'rgba(153, 102, 255, 0.2)',
// 	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
// 	                'rgba(153, 102, 255, 1)',
// 	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
	}
	
	function Kyushu(){
		$('#canvas').empty();
		$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
		var ctxT = document.getElementById("myChartK").getContext('2d');
		var myChartT = new Chart(ctxT, {
		    type: 'polarArea',
		    data: {
		        labels: ["${SalesSumU[0].product_Id}${SalesSumU[0].prod_Name}", "${SalesSumU[1].product_Id}${SalesSumU[1].prod_Name}"],
//	 	        labels: ["a", "b", "c", "d"],
		        datasets: [{
		            label: '# of Sales',
		            data: [${SalesSumU[0].totalSales},${SalesSumU[1].totalSales}],
//	 	            data: [11,22,33,44],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
//	 	                'rgba(153, 102, 255, 0.2)',
//	 	                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
//	 	                'rgba(153, 102, 255, 1)',
//	 	                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		}
	function Hokkaido(){
		$('#canvas').empty();
		$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
		var ctxT = document.getElementById("myChartK").getContext('2d');
		var myChartT = new Chart(ctxT, {
		    type: 'polarArea',
		    data: {
		        labels: ["${SalesSumH[0].product_Id}${SalesSumH[0].prod_Name}", "${SalesSumH[1].product_Id}${SalesSumH[1].prod_Name}", "${SalesSumH[2].product_Id}${SalesSumH[2].prod_Name}"],
//	 	        labels: ["a", "b", "c", "d"],
		        datasets: [{
		            label: '# of Sales',
		            data: [${SalesSumH[0].totalSales},${SalesSumH[1].totalSales},${SalesSumH[2].totalSales}],
//	 	            data: [11,22,33,44],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
//	 	                'rgba(153, 102, 255, 0.2)',
//	 	                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
//	 	                'rgba(153, 102, 255, 1)',
//	 	                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		}
	
	function Okinawa(){
		$('#canvas').empty();
		$('#canvas').append('<canvas id="myChartK" width="300" height="150"></canvas>');
		var ctxT = document.getElementById("myChartK").getContext('2d');
		var myChartT = new Chart(ctxT, {
		    type: 'polarArea',
		    data: {
		        labels: ["${SalesSumO[0].product_Id}${SalesSumO[0].prod_Name}", "${SalesSumO[1].product_Id}${SalesSumO[1].prod_Name}"],
//	 	        labels: ["a", "b", "c", "d"],
		        datasets: [{
		            label: '# of Sales',
		            data: [${SalesSumO[0].totalSales},${SalesSumO[1].totalSales}],
//	 	            data: [11,22,33,44],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
//	 	                'rgba(153, 102, 255, 0.2)',
//	 	                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
//	 	                'rgba(153, 102, 255, 1)',
//	 	                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		}
		
</script>

	<script>
 
<!-- 立即訂購 start-->
$('#buynow').click(function(){
	window.location='<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />'
});
	
		
<!-- 立即訂購 end -->

</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
		
	}); <!-- document).ready 結尾-->
	
	</script>

	<script>
	
	<!--切換產品區域功能 start -->
	$('#region>button').click(function(){
		var reg = $(this).val();
// 		alert($(this).val());
		loadProduct(reg); 
		changesize();
    })
    
    <!--切換產品區域功能 end -->
	

	</script>

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
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>