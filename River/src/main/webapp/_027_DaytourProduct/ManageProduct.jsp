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
						src="../images/icons/logo-11.png" alt="IMG-LOGO"></a>
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
		<!-- 產品顯示部分 start-->
		<form name="insert" ENCTYPE="multipart/form-data"
		action="<c:url value="/pages/product.controller" />" method="post">
		<div style='padding: 10% 20%'>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="jumbotron">
							<h2>產品管理平台</h2>
							<p>${staff.chinese_Name}，早安， 好好賣阿。</p>
							<hr>
							<a class="btn btn-primary btn-large" href="#checkId"
								data-toggle="modal" style="padding:20px">輸入產品代號</a>
						</div>
						<div class="page-header">
						<h2>
							<span id="ShowProduct_Id">產品編號: </span>	
							</h2>
							<h2>
								產品名稱: <input type="text" name="Prod_Name"
									value=""
									style="border: solid 1px; width: 900px">
							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7" style='padding: 30px'>
						<img alt="Bootstrap Image Preview" style='width: 500px'
							id='productImage'
							src='<%=request.getContextPath()%>/images/_027_Pimage/white.jpg' />
						<span>上傳新圖檔</span><input type="file" name="Main_Image"
							value="${param.Main_Image}">
					</div>

					<div class="col-md-5">

						<hr>
						<span>國家: <select name="Country">
								<option value="JA">日本</option>
								<option value="KO">韓國</option>
								<option value="SA">東南亞</option>
								<option value="AU">紐澳</option>
								<option value="EU">歐洲</option>
								<option value="AM">美加</option>
						</select></span> <span>地區: <select name="Region">
								<option value="Kan">關西</option>
								<option value="Tok">關東</option>
								<option value="Kyu">九州</option>
								<option value="Oki">沖繩</option>
								<option value="Hok">北海道</option>
						</select></span>
						<hr>
						<textarea id="summernote3" name="Features"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table table-hover table-sm table-bordered">
							<thead>
								<tr>
									<th>票種名稱</th>
									<th>特價</th>
<!-- 									<th></th> -->
								</tr>
							</thead>
							<tbody>
								<tr class="table-active">
									<td><input type="text" name="Ticket_type_1" value=""
										placeholder="01. 票種名稱" style="border: solid 1px; width: 500px"></td>
									<td><input type="text" name="UnitPrice_1" value=""
										placeholder="01. 票價"></td>
<!-- 									<td><a -->
<%-- 										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />"></a> --%>
<!-- 									</td> -->
								</tr>

								<tr class="table-active">
									<td><input type="text" name="Ticket_type_2" value=""
										placeholder="02. 票種名稱" style="border: solid 1px; width: 500px"></td>
									<td><input type="text" name="UnitPrice_2" value=""
										placeholder="02. 票價"></td>
<!-- 										<td><a -->
<%-- 											href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />"></a> --%>
<!-- 										</td> -->
									</tr>

								<tr class="table-active">
									<td><input type="text" name="Ticket_type_3" value=""
										placeholder="03. 票種名稱" style="border: solid 1px; width: 500px"></td>
									<td><input type="text" name="UnitPrice_3" value=""
										placeholder="03. 票價"></td>
<!-- 									<td><a -->
<%-- 										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />"></a> --%>
<!-- 									</td> -->
								</tr>
								<tr class="table-active">
									<td><input type="text" name="Ticket_type_4" value=""
										placeholder="04. 票種名稱" style="border: solid 1px; width: 500px"></td>
									<td><input type="text" name="UnitPrice_4" value=""
										placeholder="04. 票價"></td>
<!-- 									<td><a -->
<%-- 										href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />"></a> --%>
<!-- 									</td> -->
								</tr>
							</tbody>
						</table>
						<div class="row" id="viewdetails">
							<!-- 頁面內瞬移有點被header擋到 -->
							<div class="col-md-9">
								<div class="tabbable" id="tabs-916421">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="nav-link active show"
											href="#tab1" data-toggle="tab">詳細介紹</a></li>
										<li class="nav-item"><a class="nav-link " href="#tab2"
											data-toggle="tab">權益說明</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="tab1">
											<textarea id="summernote" name="Detail"></textarea>
										</div>
										<div class="tab-pane " id="tab2">
											<textarea id="summernote2" name="Rights"></textarea>
										</div>
									</div>
								</div>
<!-- 								<div class="btn-group btn-group-lg" role="group" style="margin:30px; padding:20px"> -->

<!-- 									<button class="btn btn-secondary" type="submit" name="prodaction" value="Update">儲存修改</button> -->
<%-- 									<a class="btn btn-secondary" type="button" id="refresh" href="<c:url value="/_027_DaytourProduct/ManageProduct.jsp" />" > --%>
<!-- 										重新填寫</a> -->
								<a id="modal-786743" href="#doubleConfirm1" role="button"   
								class="btn-lg btn-primary" data-toggle="modal" style="margin:30px; padding:20px">儲存修改</a>
								<a id="modal-786743" href="#doubleConfirm2" role="button"   
								class="btn btn-secondary" data-toggle="modal" style="margin:30px; padding:20px">重新填寫</a>
										
<!-- 								</div> -->
								
							</div>
							<div class="col-md-3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 產品顯示部分end -->

		<!-- Modal 產品代號輸入區塊start-->
		<div class="modal fade" id="checkId" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content" style="margin-top: 100px">
					<div class="modal-header">
						<h5 class="modal-title" id="myModalLabel">輸入產品代號</h5>
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="text" name="Product_Id" value="${param.Product_Id}"
							style="border: solid 1px; width: 450px">
					</div>
					<span class="error">${errors.Product_Id}</span>
					<div class="modal-footer">

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" id="getInfo">取得明細</button>
					</div>
				</div>

			</div>

		</div>
		
		<div class="modal fade" id="doubleConfirm1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content" style="margin-top:100px">
								<div class="modal-header">
									<h5 class="modal-title" id="myModalLabel">確認儲存</h5>
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="modal-body">確認要儲存嗎?</div>
								<div class="modal-footer">
									<button type="submit" id='confirmBtn' type="button" name="prodaction" value="Update" class="btn btn-primary">送出</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">退回修改</button>
								</div>
							</div>

						</div>

					</div>
		<div class="modal fade" id="doubleConfirm2" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content" style="margin-top:100px">
								<div class="modal-header">
									<h5 class="modal-title" id="myModalLabel">清除重來</h5>
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="modal-body">確認要清除重來嗎?</div>
								<div class="modal-footer">
									<a class="btn btn-primary" type="button" id="refresh" href="<c:url value="/_027_DaytourProduct/ManageProduct.jsp" />" >
										重新填寫</a>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">取消</button>
								</div>
							</div>

						</div>

					</div>
									
		</form>
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
		$('#summernote').summernote('code', '請輸入詳細介紹');
		$('#summernote2').summernote('code', '請輸入權益說明:');
		$('#summernote3').summernote('code', '請輸入商品特色:');
		
	});
	
	var contextPath = "${pageContext.request.contextPath}";
	$(document).ready(function() {
		$('#getInfo').click(function() {
			$.ajax({
				method : "GET",
				url : contextPath + "/pages/products.view",
				data : "Product_Id=" + $('input[name="Product_Id"]').val(),
				dataType : "json",
				cache : false,
				async : true,
				success : function(json) {
					$(".error").first().append(json[0].text);
					if (json[0].hasMoreData) {
						$("#ShowProduct_Id").html("產品編號: <br>"+json[1].Product_Id);
						$("input[name='Prod_Name']").val(json[1].Prod_Name);
						$("#productImage").attr("src","<%=request.getContextPath()%>/images/_027_Pimage/"+json[1].Product_Id+".jpg");
						$('#summernote3').summernote('code', json[1].Features);
//想要秀出內容大概是這樣 		$('#Features1').html(json[1].Features);
						$("input[name='Ticket_type_1']").val(json[1].Ticket_type_1);
						$("input[name='UnitPrice_1']").val(json[1].UnitPrice_1);
						$("input[name='Ticket_type_2']").val(json[1].Ticket_type_2);
						$("input[name='UnitPrice_2']").val(json[1].UnitPrice_2);
						$("input[name='Ticket_type_3']").val(json[1].Ticket_type_3);
						$("input[name='UnitPrice_3']").val(json[1].UnitPrice_3);
						$("input[name='Ticket_type_4']").val(json[1].Ticket_type_4);
						$("input[name='UnitPrice_4']").val(json[1].UnitPrice_4);
						$("input[name='Discount_Rate']").val(json[1].Discount_Rate);
						$("input[name='Acceptable_Discount_Rate']").val(json[1].Acceptable_Discount_Rate);
						$("input[name='Region']").val(json[1].Region);
						$("input[name='Country']").val(json[1].Country);
						$('#summernote').summernote('code', json[1].Detail);
						$('#summernote2').summernote('code', json[1].Rights);
						
					}
				}
			});
		});
		$("input[name='id']").focus(function() {
			clearForm();
			$(".error").first().html("");
		});
	});
	
		
	function clearForm() {
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].type == "text") {
				inputs[i].value = "";
			}
		}
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