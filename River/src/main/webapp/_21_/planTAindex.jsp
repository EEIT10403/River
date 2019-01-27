<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>行程規劃♥</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css" >
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
<link type="text/css" rel="stylesheet" href="../css/jquery-ui.css" />
<!--===============================================================================================-->


<!--===============================================================================================-->


<style type="text/css">
input, textarea {
	background-color: #E6CFE6;
	border-radius: 10px;
	padding-left: 20px;
	margin-top: 5px;
}


.item-slick1{
height:350px;
margin:0;
padding:0;
}
#center1{
margin: 150px 0;

}
.newTI{
color:pink;
height:300px;
margin-right: 15px;
border: blue solid 1px;
font-size:50px;
}
.selectTI{
color:pink;
height:300px;
margin-left: 15px;
border: blue solid 1px;
font-size:50px;


}
#goplanti{
border:blue solid 1px;
float:right;

}
.newTIform{
font-size:25px;

}


</style>

</head>
<body class="animsition">

	<div class="container-fluid"  style='width:100%' >
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
									<li><a id="modal-193880" href="#partnerLogin" role="button"
										class="btn" data-toggle="modal">管理員專區</a></li>
									
								</c:if>
								<c:if test="${not empty staff_id}">
									<li><a href="<c:url value="/Order/GetSalesSum" />">管理員專區</a></li>
								</c:if>
							</ul>

							<div class="modal fade" id="partnerLogin" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="myModalLabel">夥伴登入</h5>
											<button type="button" class="close" data-dismiss="modal">
												<span aria-hidden="true">×</span>
											</button>
										</div>
										<div class="modal-body">
											<form action="<c:url value="/partner/login" />"
												style="padding-top: 20px" method="get">
												<table style="margin-left:20%">
													<tr>
														<td>登入帳號 :</td>
														<td><input type="text" name="staff_Id"
															value="${param.staff_Id}"
															style="border: solid 1px; margin: 5px"></td>
														<td><span class="error">${errors.xxx1}</span></td>
													</tr>
													<tr ">
														<td >登入密碼 :</td>
														<td><input type="password" name="password"
															value="${param['password']}"
															style="border: solid 1px; margin: 5px"></td>
														<td><span class="error">${errors.xxx2}</span></td>
													</tr>
													<tr>
														<td></td>
														<td align="right" style="padding: 20px"><button
																type="submit" id='confirmBtn' type="button"
																class="btn btn-block btn-info">登入</button></td>
													</tr>
												</table>
											</form>

										</div>
									</div>

								</div>

							</div>
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
											href="<c:url value="/histroy.cntroller?member_Id=${member_Id}" />">機票查詢及付款</a>
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
									href="<c:url value="/histroy.cntroller?member_Id=${member_Id}" />">機票查詢及付款</a>
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
									<li><a id="modal-193880" href="#partnerLogin" role="button"
										class="btn" data-toggle="modal">管理員專區</a></li>
									
								</c:if>
								<c:if test="${not empty staff_id}">
									<li><a href="<c:url value="/Order/GetSalesSum" />">管理員專區</a></li>
								</c:if>
							</ul>

							<div class="modal fade" id="partnerLogin" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="myModalLabel">夥伴登入</h5>
											<button type="button" class="close" data-dismiss="modal">
												<span aria-hidden="true">×</span>
											</button>
										</div>
										<div class="modal-body">
											<form action="<c:url value="/partner/login" />"
												style="padding-top: 20px" method="get">
												<table style="margin-left:20%">
													<tr>
														<td>登入帳號 :</td>
														<td><input type="text" name="staff_Id"
															value="${param.staff_Id}"
															style="border: solid 1px; margin: 5px"></td>
														<td><span class="error">${errors.xxx1}</span></td>
													</tr>
													<tr ">
														<td >登入密碼 :</td>
														<td><input type="password" name="password"
															value="${param['password']}"
															style="border: solid 1px; margin: 5px"></td>
														<td><span class="error">${errors.xxx2}</span></td>
													</tr>
													<tr>
														<td></td>
														<td align="right" style="padding: 20px"><button
																type="submit" id='confirmBtn' type="button"
																class="btn btn-block btn-info">登入</button></td>
													</tr>
												</table>
											</form>

										</div>
									</div>

								</div>

							</div>
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
					<div class="item-slick1"
						style="background-image: url(../images/slide-11.jpg);">
						<div class="container h-full">
							<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInDown" data-delay="0">
									<span class="ltext-101 cl2 respon2"> 景點搜尋 </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInUp" data-delay="800">
									<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">River
										Tourist</h2>
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
									<span class="ltext-101 cl2 respon2">Wish You Have A
										Pleasant Journey </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="lightSpeedIn" data-delay="800">
									<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Fantastic
										Tourist</h2>
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
									<span class="ltext-101 cl2 respon2"> River Tourist 2019
									</span>
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



	</div>
		<!-- Product -->
			
			
			
		<div id="maind" >
		    <div class="d-flex justify-content-center"  id="center2">
		    </div>
		   
		   
		   <div class="d-flex justify-content-center"  id="center1">

							 <button type="button" class="btn text-center newTI">開始規劃新的旅程</button>
							 <button type="button" class="btn text-center selectTI">我先前規劃的行程</button>
						
						<form action="plannewtourist" method="post" class="newTIform" style="display:none">
								<div class="d-flex justify-content-center" style="margin-top:0">
								<h2 class="ltext-201"  style="margin-bottom:30px">準備開始規劃新的旅程</h2>
							
								</div>
								
								行程名稱:<input type="text" name="t_name">
								旅程的開始:<input type="text" id="from" name="firstday">
								旅程最終日:<input type="text" id="to" name="lastday">
								旅程共計天數:<input type="text" id="tday" name="touristday">
						<button type="submit" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" id="goplanti">建立新的行程</button>
						</form>  
						
						   
						<form action="showTI" method="post" class="centerform" >
						<input name='id' type="text" style="display:none" >
						</form>
		      </div>

		</div>	
			
			
			
			
			
			









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
						<div id="map1">
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

	




	



	<!--===============================================================================================-->
	<script src="../js/jquery-3.3.1.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script>
		$("#searchbtn").click(function() {				
							
				var ts = $("#touristarea").val()
				var addr = $("#address").val()

				
				$.post("/_21_/searchta",{"touristarea":ts,"address":addr},function(taList){

					var txt1 ="<div class='row isotope-grid' id='isotope-grid'></div>"
					$('#isotope-grid').empty();
					
					
                              
					var json = $.parseJSON(taList)
					
					var txt =""
					json.forEach(function(TA){		
						txt += '<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item name="fromsearch" "><div class="block2"><div class="block2-pic hov-img0">'						
			            txt += '<img name="TAimage" src="${pageContext.servletContext.contextPath}/getTAImage?id='+TA.id+'" alt="IMG-PRODUCT">'		
						txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">Quick View </a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
						txt +=TA.address
						txt += '</a> <span class="stext-105 cl3">'+TA.touristarea+'</span><div  class="TAlng" hidden="true">'+TA.lng+'</div><div  class="TAlat" hidden="true">'+TA.lat+'</div><div  class="summary" hidden="true">'+TA.summary+'</div></div><div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04"	src="../images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'	

					})
	       		
			       		$('#isotope-grid').append(txt)	
			       		$( '#isotope-grid' ).sortable( "refresh" );
					
					})
				

			})
	</script>














	
	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	
	<!-- 回傳舊行程規劃表 -->
	<script type="text/javascript">
	
	$(document).ready(function(){
		

		
		
 $(".newTI").one("click",function(){
	 
	 $( ".newTI" ).hide( "fold",{direction:"down"},2000,showform );
	 $( ".selectTI" ).hide( "slide",{direction:"right"},2000 );
	 
	
	 
	 
	})
	
 $(".selectTI").one("click",function(){
		 
		 $( ".selectTI" ).hide( "fold",{direction:"down"},2000 );
		 $( ".newTI" ).hide( "slide",{direction:"right"},2000,loadMemberTI);
		})	

 });
 
 function loadMemberTI(){
	 
	 
	 $.post("tiget",{"id":1},function(result){
		 var txt =""
		 var TIlist =$.parseJSON(result)
		 
			var txt1="<div class='container'><div class='row isotope-grid' id='isotope-grid'></div></div>"
					$(".centerform").append(txt1)
			$('#center2').append("<div class='row'><div class='col'style='padding-bottom:0;margin-bottom:0' ><h1>之前規劃好的行程</h1></div></div>")
			 
			
		        TIlist.forEach(function(TI){
							
			var radmID=Math.floor(Math.random()*4)+1;
				txt += '<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item name="fromsearch" "><div class="block2"><div class="block2-pic hov-img0">'						
	            txt += '<img name="TAimage" src="../images/TAimages/TA'+radmID+'.jpg" alt="IMG-PRODUCT">'		
				txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">觀看行程</a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
				txt +=TI.t_name
				txt += '</a> <span class="stext-105 cl3">'+TI.firstday+'</span><div  class="id" hidden="true">'+TI.id+'</div></div><div class="block2-txt-child2 flex-r p-t-3"></div></div></div></div>'	
			})
		       		$('#isotope-grid').append(txt)	
		 })
		 

		 $( "#container1" ).show( "fold", {direction:"right"}, 1500 );
 }
	
	 

	
	
function showform(){
	 $( ".newTIform" ).show( "explode", {}, 1500 );
}
	
	
	
	
$("#goplanti").one("click",function(){	
	

// 	$.ajax({
// 	    url: 'newtourist',
// 	    type: 'POST',
// 	    cache: false,
// 	    data: new FormData($('.newTIform')[0]),
// 	    processData: false,
// 	    contentType: false
// 	}).done(function(res) {
		
// 			alert("123")
	
	
// 	})
	
	
	
	})
	
	
	
	
	
	
	
	
	
	
	</script>
	
	
	
<!-- 日期格式初始化 -->
	
	<script type="text/javascript">

	//日期格式初始化

$( function() {

    var dateFormat = "yy-mm-dd",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          
        },"option", "dateFormat", dateFormat )
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
        
      to = $( "#to" ).datepicker({
        defaultDate: "-1mm",
        changeMonth: true,
        numberOfMonths: 2
      },"option", "dateFormat", dateFormat )
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
	 $( "#from" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
     $( "#to" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
	
	
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  
  //計算兩日日期
$("#from,#to").on("change",function(){
	
	
  var form =$("#from").val().substring(0,11)
  var to =$("#to").val().substring(0,11)

var touristday=DateDiff(form,to)+1
	
  if(touristday)
$("#tday").val(touristday)	
})
  
  
  
  
  
  
  
  
  
var DateDiff = function (sDate1, sDate2) { // sDate1 和 sDate2 是 2016-06-18 格式
	  var aDate, oDate1, oDate2, iDays
	  aDate = sDate1.split("-")
	  oDate1 = new Date(aDate[1] + '/' + aDate[2] + '/' + aDate[0]) // 轉換為 06/18/2016 格式
	  aDate = sDate2.split("-")
	  oDate2 = new Date(aDate[1] + '/' + aDate[2] + '/' + aDate[0])
	  // 把相差的毫秒數轉換為天數
	  iDays = parseInt(Math.abs(oDate1 - oDate2)/ 1000 / 60 / 60 / 24)   
	  return iDays;
	};
  
  



</script>





	<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/slick/slick.min.js"></script>
	<script src="../js/slick-custom.js"></script>
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
	
	<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/sweetalert/sweetalert.min.js"></script>
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
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});

		
		
		
	</script>
	
	<!-- 設定已經規劃好的跳轉頁面 -->
	<script type="text/javascript">
	$("#center1").on("click",".js-show-modal1",function(e){
		
		e.preventDefault();
		var id=$(this).parent().parent().find(".id").html()
		$(".centerform").find("input[name=id]").val(id)
		$(".centerform").submit()
		
		
	})
	
	
	
	
	</script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>

	

</body>
</html>