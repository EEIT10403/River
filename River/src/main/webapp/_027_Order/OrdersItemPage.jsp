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

<script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/html2pdf@0.0.11/html2pdf.node.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

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
									<li><a id="modal-193880" href="#partnerLogin"
										role="button" class="btn" data-toggle="modal">管理員專區</a></li>

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
												<table style="margin-left: 20%">
													<tr>
														<td>登入帳號 :</td>
														<td><input type="text" name="staff_Id"
															value="${param.staff_Id}"
															style="border: solid 1px; margin: 5px"></td>
														<td><span class="error">${errors.xxx1}</span></td>
													</tr>
													<tr">
														<td>登入密碼 :</td>
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
									<table style="margin-left: 20%">
										<tr>
											<td>登入帳號 :</td>
											<td><input type="text" name="staff_Id"
												value="${param.staff_Id}"
												style="border: solid 1px; margin: 5px"></td>
											<td><span class="error">${errors.xxx1}</span></td>
										</tr>
										<tr">
											<td>登入密碼 :</td>
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


		<!-- Banner -->



		<!-- 為了秀出header的不得已div-->
		<!-- 產品顯示部分 start-->


		<div style='padding: 8% 18%'>

			<div class="container" id="container">


				<c:set value="${member_Id}" var="member_Id" scope="session" />
				<%-- 			<h1>${member_Id}</h1> --%>

				<div class="container-fluid">


					<div class="row">
						<div class="col-md-12">
							<div style="text-align: center; margin: 30px">
								<div class="btn-group btn-group-lg " role="group">

									<a class="btn btn-info"
										href="<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />"
										type="button">訂單查詢及付款</a> <a class="btn btn-secondary"
										type="button"
										href="<c:url value="/histroy.cntroller?member_Id=${member_Id}" />">機票查詢及付款</a>
									<a class="btn btn-secondary" type="button"
										href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">管理帳戶</a>
									<a class="btn btn-secondary" type="button"
										href="<c:url value="/Comment/IntoComment?member_Id=${member_Id}" />">產品評鑑
									</a> <a class="btn btn-secondary" type="button"
										href="<c:url value="/Member/Logout" />">登出 </a>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<hr>
									<div style="padding: 20px">
										<h3>${order.prod_Name}</h3>
									</div>
									<div class="row">
										<div class="col-md-5">
											<img alt="Bootstrap Image Preview" style='width: 400px'
												src='<%=request.getContextPath()%>/images/_027_Pimage/${pBean.product_Id}.jpg' />
										</div>
										<div class="col-md-7">
											<ul>
												<li class="list-item">訂單編號：${order.order_No}</li>
												<li class="list-item" style="color: gray">
													(為能更快速服務，與客服人員洽詢時，請提示您的訂單編號)</li>
												<li class="list-item">
													訂購日期：${fn:substring(order.orderDate, 0, 19)}</li>
												<li class="list-item">出發日期：${order.travelDate}</li>
												<li class="list-item">客服人員：白三 聯絡電話：02-26335862 分機 585</li>
												<li class="list-item">傳真電話：02-66183587</li>
												<li class="list-item"><a
													href="<c:url value="/DaytourProduct/Display?Product_Id=${pBean.product_Id}" />"
													rel="external nofollow" class="btn">產品詳細</a></li>

												<li class="list-item"><a href="javascript:;"
													rel="external nofollow" class="btn" id="download">訂單快照下載</a></li>

											</ul>
											<c:if test="${empty order.canceltag}">
												<a class="btn btn-warning " style="margin: 0% 60%"
													href="<c:url value="/Order/Payment?Order_No=${order.order_No}" />"
													type="button" style="margin-bottom:3px">立即付款</a>
											</c:if>
											<c:if test="${order.canceltag}">

											</c:if>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<hr>
									<div class="tabbable" id="tabs-75706">
										<ul class="nav nav-tabs">
											<li class="nav-item"><a class="nav-link active"
												href="#tab1" data-toggle="tab">交易管理</a></li>
											<li class="nav-item"><a class="nav-link" href="#tab2"
												data-toggle="tab">訂單內容</a></li>
											<!-- 											<li class="nav-item"><a class="nav-link" href="#tab3" -->
											<!-- 												data-toggle="tab">客服訊息</a></li> -->
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab1">
												<table class="table table-hover table-bordered">
													<thead>
														<tr style="background-color: #3be8b0">
															<td>票券種類</td>
															<td>商品單價</td>
															<td>總金額</td>
															<td>已付金額</td>
															<td>未付金額</td>
														</tr>
													</thead>
													<tbody>
														<c:forEach varStatus="stVar" var="anItem"
															items="${orderItems}">
															<tr class="table-Default">
																<td>${anItem.ticket_type}x${anItem.quantity}</td>
																<td>${anItem.unitPrice}</td>
																<td>${anItem.total_Amount}</td>
																<td>${anItem.paid_Amount}</td>
																<td>${anItem.unpaid_Amount}</td>
															</tr>


														</c:forEach>
													</tbody>

												</table>
												<hr>
											</div>
											<div class="tab-pane" id="tab2">
												<table class="table table-hover table-bordered">
													<thead>
														<tr style="background-color: #3be8b0">
															<td>旅客名稱</td>
															<td>生日</td>
															<td>使用票種</td>
														</tr>
													</thead>
													<tbody>
														<c:forEach varStatus="stVar" var="aTraveler"
															items="${travelers}">
															<tr class="table-Default">
																<td>${aTraveler.traveler_Name}</td>
																<td>${fn:substring(aTraveler.birthday, 0, 10)}</td>
																<td>${aTraveler.ticket_Type}</td>

															</tr>


														</c:forEach>
													</tbody>

												</table>
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

		<!-- 產品顯示部分end -->



		<!-- Load more -->


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
	
	
	
	$("#download").click(function() {	
		
		 html2canvas($("#container"), { 
		      onrendered: function(canvas) { 
		    	  var doc = new jsPDF();
		    	  var image = canvas.toDataURL("image/png");
//		          doc.addImage(image, 'JPEG', 0, 0, canvas.width, canvas.height);
		          doc.addImage(image, 'JPEG', 0, 0, 200, 150);
		          doc.save('YourOrder.pdf');
		    	  
		        //把截取到的图片替换到a标签的路径下载 
//		        $("#download").attr('href',canvas.toDataURL()); 
//		        //下载下来的图片名字 
//		        $("#download").attr('download','share.png') ;  
//		        document.body.appendChild(canvas); 
		      } 
		//可以带上宽高截取你所需要的部分内容 
//		     , 
//		     width: 300, 
//		     height: 300 
		    }); 
	})
	
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