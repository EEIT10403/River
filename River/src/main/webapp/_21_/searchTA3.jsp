<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>景點搜尋♥</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->

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
<!--======CSS資料夾==============================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link type="text/css" rel="stylesheet" href="../css/Tstyle.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<!--===============================================================================================-->

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=PT+Sans:400"
	rel="stylesheet">

<!--===============================================================================================-->


<style type="text/css">
#touristarea ,#address{
	background-color: #E6CFE6;
	border-radius: 10px;
	padding-left:40px
}
 #map {
 border:solid 5px gray;
        height: 650px;
        width: 95%;
        margin-left:35px;
      }


.item-slick1{
height:650px;
}

</style>


</head>
<body class="animsition">


	<div class="container-fluid">
		<!-- Header -->
		<header >
			<!-- Header desktop -->
			<div class="container-menu-desktop">
				
				
				
				
				<!-- Topbar -->
				<div class="wrap-menu-desktop" style="height:60px">
					<nav class="limiter-menu-desktop container">


						<!-- Logo desktop -->
						<a class="logo"> <img src="../images/icons/logo-11.png"
							alt="IMG-LOGO">
						</a>

						<!-- Menu desktop -->
						<div class="menu-desktop">
							<ul class="main-menu">
								<li class="active-menu"><a
									href="<c:url value="/index18.jsp" />">Home</a></li>

								<li><a href="product.html">Shop</a></li>

								<li class="label1"><a
									href="<c:url value="/WebIndex18/flight18.jsp" />">航班查詢</a></li>

								<li><a href="blog.html">Blog</a></li>

								<li><a href="">行程規劃</a></li>

								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>

		<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m">
<!-- 							<div -->
<!-- 								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"> -->
<!-- 								<i class="zmdi zmdi-search"></i> -->
<!-- 							</div> -->

<!-- 							<div -->
<!-- 								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" -->
<!-- 								data-notify="2"> -->
<!-- 								<i class="zmdi zmdi-shopping-cart"></i> -->
<!-- 							</div> -->

<!-- 							<a href="#" -->
<!-- 								class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" -->
<!-- 								data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i> -->
<!-- 							</a> -->
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
<!-- 				<div class="wrap-icon-header flex-w flex-r-m m-r-15"> -->
<!-- 					<div -->
<!-- 						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search"> -->
<!-- 						<i class="zmdi zmdi-search"></i> -->
<!-- 					</div> -->

<!-- 					<div -->
<!-- 						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" -->
<!-- 						data-notify="2"> -->
<!-- 						<i class="zmdi zmdi-shopping-cart"></i> -->
<!-- 					</div> -->

<!-- 					<a href="#" -->
<!-- 						class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" -->
<!-- 						data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i> -->
<!-- 					</a> -->
<!-- 				</div> -->

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>


			<!-- Menu Mobile -->
			<div class="menu-mobile">


				<ul class="main-menu-m">
					<li><a href="<c:url value="/index18.jsp" />">Home</a> <span
						class="arrow-main-menu-m"> <i class="fa fa-angle-right"
							aria-hidden="true"></i>
					</span></li>

					<li><a href="product.html">Shop</a></li>

					<li><a href="<c:url value="/WebIndex18/flight18.jsp" />"
						class="label1 rs1">航班查詢</a></li>
					<li>
					<a href="blog.html">Blog</a>
					</li>

					<li><a href="/_21_/searchTA3.jsp">行程規劃</a></li>

					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>

			<!-- Modal Search -->


			<!-- Cart -->
            </header>
			<!-- Slider -->
			<section class="section-slide"  >
				<div class="wrap-slick1" >
					<div class="slick1" >
						<div class="item-slick1" style="background-image: url(../images/slide-11.jpg);" >
							<div class="container h-full">
								<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
									<div class="layer-slick1 animated visible-false"
										data-appear="fadeInDown" data-delay="0">
										<span class="ltext-101 cl2 respon2"> 景點搜尋 </span>
									</div>

									<div class="layer-slick1 animated visible-false"
										data-appear="fadeInUp" data-delay="800">
										<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1"> River Tourist </h2>
									</div>


								</div>
							</div>
						</div>

						<div class="item-slick1"
							style="background-image: url(../images/slide-12.jpg);">
							<div class="container h-full">
								<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
									<div class="layer-slick1 animated visible-false"
										data-appear="rollIn" data-delay="0">
										<span class="ltext-101 cl2 respon2">Wish You Have A Pleasant Journey </span>
									</div>

									<div class="layer-slick1 animated visible-false"
										data-appear="lightSpeedIn" data-delay="800">
										<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Fantastic Tourist</h2>
									</div>


								</div>
							</div>
						</div>

						<div class="item-slick1"
							style="background-image: url(../images/slide-13.jpg);">
							<div class="container h-full">
								<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
									<div class="layer-slick1 animated visible-false"
										data-appear="rotateInDownLeft" data-delay="0">
										<span class="ltext-101 cl2 respon2"> River Tourist
											2019 </span>
									</div>

									<div class="layer-slick1 animated visible-false"
										data-appear="rotateInUpRight" data-delay="800">
										<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">New
											arrivals</h2>
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


			<!-- Banner -->



			<!-- Product -->
	
	<section class="bg0 p-t-23 p-b-140">



		<div class="container">

			<!-- 切割網頁-->
			<div class="row no-gutters">
				<div class="col-6 col-md-4" >
					<form id="searchAT" action="<c:url value='/searchta' />"
						method="get">
						區域:<input id="touristarea"
							class="mtext-107 cl2 size-114 plh2 p-r-15" name="touristarea"
							type="text" placeholder="國家/城市" /><br /> 
						景點:<input id="address" class="mtext-107 cl2 size-114 plh2 p-r-15"
							name="address" type="text" placeholder="地名/地址" /><br/>
						<input id='searchbtn' type="button"  class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" value="搜尋">
					</form>
				</div>

				<div class="col-12 col-sm-6 col-md-8" id='pdiv' >

					<!-- 商品位置 -->
					<div class="row isotope-grid" >


						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item women">
							<!-- Block2 -->
							<div id="TA2" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA2.jpg" alt="IMG-PRODUCT">
									 <a  
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											元乃隅稻成神社 </a> <span class="stext-105 cl3">
											日本 山口 </span>
											<div  class="TAlng" hidden='true'>131.0625685</div>
											<div  class="TAlat" hidden='true'>34.4196287</div>
											<div  class="summary" hidden='true'>「元乃隅稻成神社」（もとのすみいなりじんじゃ）在1955年建立，傳說有一位船主人夢見了一隻白狐，白狐表示船主人能夠滿載而歸都是托他之福，請他們在此處祭祀祂，當地人從島根県津和野町太鼓谷稲成神社分靈，在此建立了神社。在日本約有4萬座稻荷神社，但「稻成」神社只有兩間，兩字也意味的願望實現的意思，因此吸引了許多香客朝拜。</div>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item men">
							<!-- Block2 -->
							<div id="TA3" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA3.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											高山稻荷神社 </a> <span class="stext-105 cl3">
											日本 青森 </span>
											<div  class="TAlng" hidden='true'>135.7726717</div>
											<div  class="TAlat" hidden='true'>34.9671402</div>
											<div  class="summary" hidden='true'>高山稻荷神社是設立於屏風山正中央的神社，在這裡可以一望岩木山、日本海和十三湖方向的美景。這裡同時也是祈求五穀豐收、海上安全與生意興隆相當靈驗的神社。高山稻荷神社所祭祀的神祇和全國稻荷神社的本社・伏見稻荷大社一樣，供奉著宇迦之御魂命、佐田彥命和大宮賣命三大神明。走進神社境內，登上百餘段的石階來到拜殿後，就能看見沿著曲線林立的紅色千本鳥居景觀。</div>
										</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
										</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item watches">
							<!-- Block2 -->
							<div id="TA4" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA4.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											太鼓谷稻成神社 </a> <span class="stext-105 cl3">
											日本 島根 </span>
											<div  class="TAlng" hidden='true'>131.7689333</div>
											<div  class="TAlat" hidden='true'>34.4653022</div>
									        <div  class="summary" hidden='true'>太鼓谷稻成神社位在島根縣的津和他是山陰地區最大的稻荷神社不同於出雲大社是結緣神社(祈求戀愛)太鼓谷稻成神社主要是祈求財運~生意興隆等所以太鼓谷稻成神社的神被人們當作“達成願望”之神而崇敬</div>
									     </div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item shoes">
							<!-- Block2 -->
							<div id="TA1" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA1.jpg" alt="IMG-PRODUCT"> <a
										href="#test"   
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html" 
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											伏見稻荷大社 </a> <span class="stext-105 cl3">
											日本 京都 </span>
											<div  class="TAlng" hidden='true'>135.7726717</div>
											<div  class="TAlat" hidden='true'>34.9671402</div>
									        <div  class="summary" hidden='true'>「稻荷神社」堪稱是最貼近日本人生活的神社。據說全國共有3萬座稻荷神社，在日本各地受到所有男女老幼的喜愛。其總本宮便是京都的伏見稻荷大社。自西元711年神明鎮座以來，長達1300年的期間匯集了人們的信仰，被尊崇為保佑五穀豐登、商業興盛、家庭安全、諸願望皆得實現之神。近年來除了日本人之外，也有許多外國參拜客、觀光客造訪，稻荷神社已成為代表京都與日本的名勝，聞名於世。</div>
											
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>

			</div>

			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="#"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					Load More </a>
			</div>
		</div>






	</section>



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

					<p class="stext-107 cl7 size-201">Any questions? Let us know in
						store at 8th floor, 379 Hudson St, New York, NY 10018 or call us
						on (+1) 96 716 6879</p>

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

<!-- Modal1 -->
	<div id ="modal1" class="wrap-modal1 js-modal1 p-t-60 p-b-20 ">
	
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img  src="../images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
				
				<!-- 地圖區塊-->
				<div  class="col-md-6 col-lg-7 p-b-30">  
						<div id="map">
						</div>
					</div>
	
				
				<!-- 圖片區塊 -->
					<div class="col-md-6 col-lg-5 p-b-30">  
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								

								<div class="slick3 gallery-lb" style="width:100% ;">
									<div class="item-slick3" data-thumb="../images/TAimages/TA1.jpg" >
										<div class="wrap-pic-w pos-relative" >
											<img name="imgmodal" src="../images/TAimages/TA1.jpg" alt="IMG-PRODUCT"style=" width:100%" >

											<a  class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/TAimages/TA1.jpg">
												<i class="fa fa-expand" ></i>
											</a>
										</div>
									</div>
								</div>
						<div class=" p-t-5 p-lr-0-lg" style="width:100%" >
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!-- 選單與Add to cart-->
<!-- 							<div class="p-t-33">   -->
<!-- 								<div class="flex-w flex-r-m p-b-10"> -->
<!-- 									<div class="size-203 flex-c-m respon6"> -->
<!-- 										Size -->
<!-- 									</div> -->
<!-- 									<div class="size-204 respon6-next"> -->
<!-- 										<div class="rs1-select2 bor8 bg0"> -->
<!-- 											<select class="js-select2" name="time"> -->
<!-- 												<option>Choose an option</option> -->
<!-- 												<option>Size S</option> -->
<!-- 												<option>Size M</option> -->
<!-- 												<option>Size L</option> -->
<!-- 												<option>Size XL</option> -->
<!-- 											</select> -->
<!-- 											<div class="dropDownSelect2"></div> -->
<!-- 										</div> -->
<!-- 									</div> -->	
<!-- 								</div> -->

								<div class="flex-w flex-r-m p-b-10">
<!-- 									<div class="size-204 flex-w flex-m respon6-next"> -->
<!-- 										<div class="wrap-num-product flex-w m-r-20 m-tb-10">										 -->
<!-- 										</div> -->
<!-- 										<button style="float:" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"> -->
<!-- 											加入收藏 -->
<!-- 										</button> -->
<!-- 									</div> -->

        							<div class="d-flex justify-content-center">
										<button style="float:" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											加入收藏
										</button>
									</div>
								</div>	
							</div>

						
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
     	<script >
	
	$("#searchbtn").click(function(){
			
		var ts=$("#touristarea").val()
		var addr=$("#address").val()
	$.post("searchta",{"touristarea":ts,"address":addr},function(taList){
		alert(taList)

		var json = $.parseJSON(taList)
		
		var txt ="<div class='row isotope-grid' >"
		json.forEach(function(TA){		
			txt += '<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item "><div class="block2"><div class="block2-pic hov-img0">'						
            txt += '<img name="TAimage" src="${pageContext.servletContext.contextPath}/getTAImage?id='+TA.id+'" alt="IMG-PRODUCT">'		
			txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">Quick View </a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
			txt +=TA.address
			txt += '</a> <span class="stext-105 cl3">'+TA.touristarea+'</span><div  class="TAlng" hidden="true">'+TA.lng+'</div><div  class="TAlat" hidden="true">'+TA.lat+'</div><div  class="summary" hidden="true">'+TA.summary+'</div></div><div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04"	src="../images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'	

		
		
		})
            txt+= '</div>'
            
       		$('#pdiv').empty()	
       		$('#pdiv').append(txt)	
		
		})

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
	$("#pdiv").on("click ", ".js-addwish-b2", function(e) {
			e.preventDefault();
		});
	
	$("#pdiv").on("click", ".js-addwish-b2", function() {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		swal(nameProduct, "is added to wishlist !", "success");
		$(this).removeClass("js-addwish-b2")
		$(this).addClass('js-addedwish-b2');
		
	});
	
	

// 	$("#pdiv").find('.js-addwish-b2').each(function(){   
// 			$(this).on('click', function(){
// 			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
// 				swal(nameProduct, "is added to wishlist !", "success");

// 				$(this).addClass('js-addedwish-b2');
// 				$(this).off('click');
// 			});
// 		});
		


			
              
		    $('#pdiv').on('click','.js-show-modal1',function(e){
		    	$('.js-modal1').addClass('show-modal1');
		        e.preventDefault();
		    });

		    $('#modal1').on('click','.js-hide-modal1',function(){
		        $('.js-modal1').removeClass('show-modal1');
		    });
		   

			
		
		
		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
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
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y&callback=initMap">
    </script>
       <script>    
// Initialize and add the map
var uluru = {lat: -25.344, lng: 131.036};
function initMap() {
  // The location of Uluru
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom:7, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
$("#pdiv").on("click",".isotope-item",function(){
	
	//取得資訊
	var titile= $(".isotope-item").find(".stext-104").html();
	var touristarea= $(".isotope-item").find(".stext-105").html();
	var summary = $(".isotope-item").find(".summary").html();

	$("#modal1").find(".mtext-105").html(titile)
	$("#modal1").find(".mtext-106").html(touristarea)
	$("#modal1").find(".stext-102").html(summary)
	//取得經緯度 輸入地圖
	var TAlng =Number($(".isotope-item").find(".TAlng").html());
	var TAlat =Number($(".isotope-item").find(".TAlat").html());
	var TAlatlng1 ={lat:TAlat ,lng:TAlng}
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center:TAlatlng1
      });
	 var marker = new google.maps.Marker({position: TAlatlng1, map: map});
    //取得圖片路徑 並放入 modal   
	var TAsrc = $(".isotope-item").find("img[name='TAimage']").attr("src");
	var TAsrc2=$("#modal1").find("img[name='imgmodal']").attr("src",TAsrc)
	$("#modal1").find(".wrap-pic-w").find("a").attr("href",TAsrc)
})
	
	
	

</script>


	<!--===============================================================================================-->
	<script src="../js/main.js"></script>



</body>
</html>