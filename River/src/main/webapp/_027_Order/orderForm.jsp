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
		<div style='padding: 7% 25% 8% 25%; background-color: white'>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" style="padding: 4% 2%">
						<h3>訂單明細表</h3>

					</div>
				</div>

				<form action="<c:url value="/Order/InsertOrder" />">

					<input type="hidden" name="product_Id" value="${bean.product_Id}">
					<input type="hidden" name="prod_Name" value="${bean.prod_Name}">
					<input type="hidden" name="country" value="${bean.country}">
					<input type="hidden" name="ticket_type_1"
						value="${bean.ticket_type_1}"> <input type="hidden"
						name="ticket_type_2" value="${bean.ticket_type_2}"> <input
						type="hidden" name="ticket_type_3" value="${bean.ticket_type_3}">
					<input type="hidden" name="ticket_type_4"
						value="${bean.ticket_type_4}"> <input type="hidden"
						name="unitPrice_1" value="${bean.unitPrice_1}"> <input
						type="hidden" name="unitPrice_2" value="${bean.unitPrice_2}">
					<input type="hidden" name="unitPrice_3" value="${bean.unitPrice_3}">
					<input type="hidden" name="unitPrice_4" value="${bean.unitPrice_4}">
					<input type="hidden" name="TicketQty1"
						value="${ticketType.Type1_Qty}"> <input type="hidden"
						name="TicketQty2" value="${ticketType.Type2_Qty}"> <input
						type="hidden" name="TicketQty3" value="${ticketType.Type3_Qty}">
					<input type="hidden" name="TicketQty4"
						value="${ticketType.Type4_Qty}"> <input type="hidden"
						name="Total_Amount" value="${Total_Amount}"> <input
						type="hidden" name="TravelDate"
						value="<fmt:formatDate value="${TravelDate}" pattern="yyyy-MM-dd" />">
					<input type="hidden" name="OrderDate" id="OrderDate" value="">

					<div class="row">

						<!-- 填表區塊1 start -->
						<div class="col-md-9">

							<div class="row">
								<div class="col-md-12"
									style="background-color: #D6E6E5; border: solid #387780 1px; padding: 15px">
									<!-- 								   <i class="icon-marker">1</i> -->
									<h4>
										<span>1. 填寫旅客資訊</span>
									</h4>
									<h6>
										<span style="color: orange"> ＊為必填 </span> 如欲修改會員資料，請至「會員中心」修改
									</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12"
									style="background-color: #EBFCFB; border: solid #387780 1px; padding: 15px">
									<c:if test="${ticketType.Type1_Qty>0}">
										<h5 class="text-dark-green"
											style="font-weight: bold; padding: 15px 59px 0 40px;">${bean.ticket_type_1}</h5>
										<div style="padding: 10px 25px 15px 35px;">
											<script>
										
										var i=1 ;
										
										for(i=1; i<=${ticketType.Type1_Qty}; i++){
											document.write("<h6 class='' style='margin-top: -10px; padding: 12px; font-weight: normal;'>旅客"+i+"</h6>");
											document.write("<h6>＊中文姓名: </h6>")
											document.write("<input type='text' name='Traveler_Name1_"+i+"' style='border:solid 1px'value=''>")
											document.write("<br><h6>＊出生年月日 (格式例: 2000-01-01): </h6>")
											document.write("<input type='text' name='birthday1_"+i+"' style='border:solid 1px'value='' pattern='\\d{4}-\\d{2}-\\d{2}'>")
											document.write("<br><br>")
										}
										</script>
										</div>
									</c:if>

									<c:if test="${ticketType.Type2_Qty>0}">
										<h5 class="text-dark-green"
											style="font-weight: bold; padding: 15px 59px 0 40px;">${bean.ticket_type_2}</h5>
										<div style="padding: 10px 25px 15px 35px;">
											<script>
										
										var i=1 ;
										
										for(i=1; i<=${ticketType.Type2_Qty}; i++){
											document.write("<h6 class='' style='margin-top: -10px; padding: 12px; font-weight: normal;'>旅客"+i+"</h6>");
											document.write("<h6>＊中文姓名: </h6>")
											document.write("<input type='text' name='Traveler_Name2_"+i+"' style='border:solid 1px'value=''>")
											document.write("<br><h6>出生年月日 (格式例: 2000-01-01): </h6>")
											document.write("<input type='text' name='birthday2_"+i+"' style='border:solid 1px'value='' pattern='\\d{4}-\\d{2}-\\d{2}'>")
											document.write("<br><br>")
										}
										</script>
										</div>
									</c:if>

									<c:if test="${ticketType.Type3_Qty>0}">
										<h5 class="text-dark-green"
											style="font-weight: bold; padding: 15px 59px 0 40px;">${bean.ticket_type_3}</h5>
										<div style="padding: 10px 25px 15px 35px;">
											<script>
										
										var i=1 ;
										
										for(i=1; i<=${ticketType.Type3_Qty}; i++){
											document.write("<h6 class='' style='margin-top: -10px; padding: 12px; font-weight: normal;'>旅客"+i+"</h6>");
											document.write("<h6>＊中文姓名: </h6>")
											document.write("<input type='text' name='Traveler_Name3_"+i+"' style='border:solid 1px'value=''>")
											document.write("<br><h6>出生年月日 (格式例: 2000-01-01): </h6>")
											document.write("<input type='text' name='birthday3_"+i+"' style='border:solid 1px'value='' pattern='\\d{4}-\\d{2}-\\d{2}'>")
											document.write("<br><br>")
										}
										</script>
										</div>
									</c:if>
									<c:if test="${ticketType.Type4_Qty>0}">
										<h5 class="text-dark-green"
											style="font-weight: bold; padding: 15px 59px 0 40px;">${bean.ticket_type_4}</h5>
										<div style="padding: 10px 25px 15px 35px;">
											<script>
										
										var i=1 ;
										
										for(i=1; i<=${ticketType.Type4_Qty}; i++){
											document.write("<h6 class='' style='margin-top: -10px; padding: 12px; font-weight: normal;'>旅客"+i+"</h6>");
											document.write("<h6>＊中文姓名: </h6>")
											document.write("<input type='text' name='Traveler_Name4_"+i+"' style='border:solid 1px'value=''>")
											document.write("<br><h6>＊出生年月日 (格式例: 2000-01-01): </h6>")
											document.write("<input type='text' name='birthday4_"+i+"' style='border:solid 1px'value='' pattern='\\d{4}-\\d{2}-\\d{2}'>")
											document.write("<br><br>")
										}
										</script>
										</div>
									</c:if>
									<!-- input 姓名生日end  -->


								</div>
							</div>

						</div>
						<!-- 填表區塊1 end -->
						<!-- 填表區塊2 start -->
						<div class="col-md-9">

							<div class="row">
								<div class="col-md-12"
									style="background-color: #D6E6E5; border: solid #387780 1px; padding: 15px">
									<!-- 								   <i class="icon-marker">1</i> -->
									<h4>
										<span>2. 行程聯絡人</span>
									</h4>
									<h6>
										<span style="color: orange"> ＊為必填 </span>
									</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12"
									style="background-color: #EBFCFB; border: solid #387780 1px; padding: 15px">
									<table>
										<tr>
											<td>
												<h6 class=''
													style='margin-top: -10px; padding: 12px; font-weight: normal;'>主要聯絡人</h6>
											</td>
										</tr>
										<tr>
											<td style='padding: 15px 65px 15px 30px'>
												<h6>＊中文姓名:</h6> <input type='text' name='Contact_Name'
												style='border: solid 1px' value=''>
											</td>
											<td>
												<h6>＊聯絡e-mail:</h6> <input type='text' name='Contact_Email'
												style='border: solid 1px' value=''>
											</td>
										</tr>
										<tr>
											<td style='padding: 15px 65px 15px 30px'>
												<h6>＊ 聯絡電話：手機:</h6> <input type='text' name='Contact_Phone'
												style='border: solid 1px' value=''>
											</td>
										</tr>
										<tr>
											<td style='padding: 15px 65px 15px 30px' colspan="2">
												<h6>＊聯絡地址:</h6> <input type='text' name='Contact_Address'
												style='border: solid 1px; width: 400px' value=''>
											</td>
										</tr>
										<tr>
											<td style='padding: 15px 65px 15px 30px' colspan="2">
												<h6>公司抬頭:</h6> <input type='text' name='InvoiceTitle'
												style='border: solid 1px; width: 400px' value=''>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<button type="submit" style="margin: 10px 5px 0px 0px"
								id='confirmBtn' class="btn btn-block btn-info">確認送出</button>
						</div>
						<!-- 填表區塊2 end -->


						<!-- 購買資訊佔存區塊 start -->
						<div class="col-md-3"
							style="position: fixed; right: 12%; top: 27%">


							<div class="row">
								<div class="col-md-12">
									<div id="card-129119">
										<div class="card">
											<div class="card-header">
												<a class="card-link" data-toggle="collapse"
													data-parent="#card-129119" href="#card-element-742160">檢視訂單明細
												</a>
											</div>
											<div id="card-element-742160" class="collapse"
												style="background-color: #F3FFBD; border: solid 1px">
												<div style='padding: 10px'>${bean.prod_Name}</div>
												<div style='padding: 10px'>
													使用日期:
													<fmt:formatDate value="${TravelDate}" pattern="yyyy/MM/dd " />
												</div>
												<hr>
												<div style='padding: 10px'>${bean.ticket_type_1}
													${bean.unitPrice_1} 元 x ${ticketType.Type1_Qty}</div>
												<c:if test="${ticketType.Type2_Qty>0}">
													<div style='padding: 10px'>${bean.ticket_type_2}
														${bean.unitPrice_2} 元 x ${ticketType.Type2_Qty}</div>
												</c:if>
												<c:if test="${ticketType.Type3_Qty>0}">
													<div style='padding: 10px'>${bean.ticket_type_3}
														${bean.unitPrice_3} 元 x ${ticketType.Type3_Qty}</div>
												</c:if>
												<c:if test="${ticketType.Type4_Qty>0}">
													<div style='padding: 10px'>${bean.ticket_type_4}
														${bean.unitPrice_4} 元 x ${ticketType.Type4_Qty}</div>
												</c:if>
												<div class="card-body" style="color: red">總計金額 :
													${Total_Amount} 元</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 購買資訊佔存區塊 end -->
					</div>



				</form>


			</div>
		</div>

		<!-- 產品顯示部分end -->

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
 
<!-- 修改張數start-->
function ticketQty() {
	$('#ticketQty').empty();
	var Type1_Qty = $('#Type1_Qty').val();
	var Type2_Qty = $('#Type2_Qty').val();
	var Type3_Qty = $('#Type3_Qty').val();
	var Type4_Qty = $('#Type4_Qty').val();
	var t1 = Number(Type1_Qty);
	var t2 = Number(Type2_Qty);
	
	var t3 = Number(Type3_Qty);
	if (!t3)
	t3 =Number('0');
	var t4 = Number(Type4_Qty);
	if (!t4)
	t4 =Number('0');
	
	var ticketQty =t1+t2+t3+t4;
	$('#ticketQty').html('共計 '+ ticketQty +' 張');
	$('#ticketQty').val(ticketQty);

}


function totalPrice() {
	$('#totalPrice').empty();
	var subTotal1 = $('#subTotal1').val();
	var subTotal2 = $('#subTotal2').val();
	var subTotal3 = $('#subTotal3').val();
	var subTotal4 = $('#subTotal4').val();
	var s1 = Number(subTotal1);
	var s2 = Number(subTotal2);
	
	var s3 = Number(subTotal3);
	if (!s3)
	s3 =Number('0');
	var s4 = Number(subTotal4);
	if (!s4)
	s4 =Number('0');
	
	var totalPrice =s1+s2+s3+s4;
	$('#totalPrice').html('應付總額 '+ totalPrice +' 元');
	$('#totalPrice').val(ticketQty);

}

function getDate(){
// alert("hi");
	$('#OrderDate').val(new Date());
};

</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
		getDate();
	}); 
	<!-- document).ready 結尾 -->
	
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