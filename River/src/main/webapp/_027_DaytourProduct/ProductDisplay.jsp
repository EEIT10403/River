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


</head>
<body class="animsition">
	<div class="container-fluid">
		<!-- Header -->
		<header>
			<!-- Header desktop -->
			<div class="container-menu-desktop">
				<!-- Topbar -->


				<div class="wrap-menu-desktop">
					<nav class="limiter-menu-desktop container">

						<!-- Logo desktop -->
						<a class="logo"> <img src="../images/icons/logo-01.png"
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

								<li><a href="about.html">About</a></li>

								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>

						<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m">
							<div
								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
								<i class="zmdi zmdi-search"></i>
							</div>

							<div
								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
								data-notify="2">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>

							<a href="#"
								class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
								data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
							</a>
						</div>
					</nav>
				</div>
			</div>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile">
					<a href="<c:url value="/index18.jsp" />"><img
						src="../images/icons/logo-01.png" alt="IMG-LOGO"></a>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m m-r-15">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>

					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
						data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>

					<a href="#"
						class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
						data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
					</a>
				</div>

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

					<li><a href="blog.html">Blog</a></li>

					<li><a href="about.html">About</a></li>

					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>

			<!-- Modal Search -->
			<div
				class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
				<div class="container-search-header">
					<button
						class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
						<img src="../images/icons/icon-close2.png" alt="CLOSE">
					</button>

					<form class="wrap-search-header flex-w p-l-15">
						<button class="flex-c-m trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<input class="plh3" type="text" name="search"
							placeholder="Search...">
					</form>
				</div>
			</div>
		</header>

		<!-- Cart -->
		<div class="wrap-header-cart js-panel-cart">
			<div class="s-full js-hide-cart"></div>

			<div class="header-cart flex-col-l p-l-65 p-r-25">
				<div class="header-cart-title flex-w flex-sb-m p-b-8">
					<span class="mtext-103 cl2"> Your Cart </span>

					<div
						class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
						<i class="zmdi zmdi-close"></i>
					</div>
				</div>

				<div class="header-cart-content flex-w js-pscroll">
					<ul class="header-cart-wrapitem w-full">
						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="../images/item-cart-01.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									White Shirt Pleat </a> <span class="header-cart-item-info">
									1 x $19.00 </span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="../images/item-cart-02.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Converse All Star </a> <span class="header-cart-item-info">
									1 x $39.00 </span>
							</div>
						</li>

						<li class="header-cart-item flex-w flex-t m-b-12">
							<div class="header-cart-item-img">
								<img src="../images/item-cart-03.jpg" alt="IMG">
							</div>

							<div class="header-cart-item-txt p-t-8">
								<a href="#"
									class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									Nixon Porter Leather </a> <span class="header-cart-item-info">
									1 x $17.00 </span>
							</div>
						</li>
					</ul>

					<div class="w-full">
						<div class="header-cart-total w-full p-tb-40">Total: $75.00
						</div>

						<div class="header-cart-buttons flex-w w-full">
							<a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
								View Cart </a> <a href="shoping-cart.html"
								class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
								Check Out </a>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- Slider -->


		<!-- Banner -->



		<!-- 為了秀出header的不得已div-->
		<!-- Product 主體-->
		<div style='margin: 10%'>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="page-header">
							<h1>${bean.prod_Name}</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7" style='padding:30px'>
						<img alt="Bootstrap Image Preview" style='width: 500px'
							src='<%=request.getContextPath()%>/getProductMainImage?Product_Id=${bean.product_Id}' />
					</div>
					<div class="col-md-5">
						<!-- 						<h2>Heading</h2> -->
						<p>${bean.features}
						<p>
							<a class="btn" href="#">View details »</a>
						</p>
						<button type="button"
							class="btn btn-block active btn-outline-primary">
										立即訂購
									</button>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm table-bordered">
							<thead>
								<tr>
									<th>票種名稱</th>
									<th>特價</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-active">
									<td>${bean.ticket_type_1}</td>
									<td>${bean.unitPrice_1}</td>
									<td><a
										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
									</td>
								</tr>
								<tr class="table-active">
									<td>${bean.ticket_type_2}</td>
									<td>${bean.unitPrice_2}</td>
									<td><a
										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
									</td>
								</tr>
								<tr class="table-active">
									<td>${bean.ticket_type_3}</td>
									<td>${bean.unitPrice_3}</td>
									<td><a
										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
									</td>
								</tr>
								<tr class="table-active">
									<td>${bean.ticket_type_4}</td>
									<td>${bean.unitPrice_4}</td>
									<td><a
										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="row">
							<div class="col-md-9">
								<div class="tabbable" id="tabs-916421">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="nav-link active show" href="#tab1"
											data-toggle="tab">詳細介紹</a></li>
										<li class="nav-item"><a class="nav-link "
											href="#tab2" data-toggle="tab">權益說明</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="panel-573698">
											<p>${bean.detail}</p>
										</div>
										<div class="tab-pane active" id="tab2">
											<p>${bean.rights}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		bbb
		<!-- 產品大區塊end -->

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
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>


	<script>
<!--讀出產品的功能 start -->
function loadProduct(region){
	$.getJSON('DisplayByRegion',{region:region},function(getdata){
		var docFrag =$(document.createDocumentFragment());
		console.log("我回來了"+getdata);
		$.each(getdata,function(index,product){
			console.log("產品"+product.product_Id);
			console.log("產品"+product.prod_Name);
			console.log("產品"+product.unitPrice_1);
<%-- 			  docFrag.append('<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women"><div class="block2"><div class="block2-pic hov-img0"><img src="<%=request.getContextPath()%>/getProductMainImage?Product_Id='+product.product_Id+'"><a href="<c:url value="/DaytourProduct/Display?Product_Id='+product.product_Id+'" />" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">購買</a></div>	<div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="<c:url value="/DaytourProduct/Display?Product_Id='+product.product_Id+'" />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'+product.prod_Name+'</a><span class="stext-105 cl3">NTD'+product.unitPrice_1+'元 起</span></div>	<div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'); --%>
			  docFrag.append('<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women"><div class="block2"><div class="block2-pic hov-img0"><img src="<%=request.getContextPath()%>/getProductMainImage?Product_Id='+product.product_Id+'"><a href="<c:url value="/DaytourProduct/Display?Product_Id='+product.product_Id+'" />" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">購買</a></div>	<div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="<c:url value="/DaytourProduct/Display?Product_Id='+product.product_Id+'" />" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'+product.prod_Name+'</a><span class="stext-105 cl3">NTD'+product.unitPrice_1+'元 起</span></div>	<div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>');
<%-- 原版 	    	   docFrag.append('<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women"><div class="block2"><div class="block2-pic hov-img0"><img src="<%=request.getContextPath()%>/getProductMainImage?Product_Id=K1000001"><a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">靠背</a></div>	<div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">靠杯</a><span class="stext-105 cl3">$16.64</span></div>	<div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'); --%>
    	 		
		});
		$('#ProductFrame').html(docFrag); <!--塞進去 在528行附近-->
	});
};<!--讀出產品的功能 end -->

function changesize(){
	 $('#frame').css({'height':'300px'});
}
</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
		loadProduct('Kan');
		changesize();
		
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