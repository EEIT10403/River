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



		<!-- Slider -->


		<!-- Banner -->



		<!-- 為了秀出header的不得已div-->
		<!-- 產品顯示部分 start-->


		<div style='padding: 8% 10%'>

			<%-- 		<c:if test="${empty member_Id}">  這一段這樣寫，那我只要沒過Controller就會要login, 滿煩 --%>


			<%-- 		<c:redirect url="/_11_secure/login.jsp" /> --%>

			<%--        </c:if> --%>
			<c:set value="${member_Id}" var="member_Id" scope="session" />
			<%-- 			<h1>${member_Id}</h1> --%>



			<h1></h1>

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="carousel slide" id="carousel-151068">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-151068"></li>
								<li data-slide-to="1" data-target="#carousel-151068"
									class="active"></li>
								<li data-slide-to="2" data-target="#carousel-151068"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap First"
										src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg" />
									<div class="carousel-caption">
										<h4>會員管理專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item active">
									<img class="d-block w-100" alt="Carousel Bootstrap Second"
										src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg" />
									<div class="carousel-caption">
										<h4>會員管理專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap Third"
										src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg" />
									<div class="carousel-caption">
										<h4>會員管理專區</h4>
										<p></p>
									</div>
								</div>
							</div>
							<a class="carousel-control-prev" href="#carousel-151068"
								data-slide="prev"><span class="carousel-control-prev-icon"></span>
								<span class="sr-only">Previous</span></a> <a
								class="carousel-control-next" href="#carousel-151068"
								data-slide="next"><span class="carousel-control-next-icon"></span>
								<span class="sr-only">Next</span></a>
						</div>
						<div style="text-align: center; margin: 30px">
							<div class="btn-group btn-group-lg " role="group">

								<a class="btn btn-secondary"
									href="<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />"
									type="button">訂單查詢及付款</a> <a class="btn btn-secondary"
									href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">管理帳戶</a>
								<a class="btn btn-secondary"
									href="<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />">我的機票</a>
								<a class="btn btn-secondary"
									href="<c:url value="/Comment/IntoComment?member_Id=${member_Id}" />">產品評鑑
								</a> <a class="btn btn-secondary"
									href="<c:url value="/Member/Logout" />">登出 </a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<hr>
								<table class="table table-hover table-bordered">
									<thead>
										<tr style="background-color: #3be8b0">
											<td>#訂單編號</td>
											<td>訂單日期</td>
											<td>商品名稱</td>
											<td>出發日期</td>
											<td>查看明細</td>
											<td>商品金額</td>
											<td>其他選項</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach varStatus="stVar" var="anOrder"
											items="${CanCommentList}">
											<tr class="table-Default">
												<td>${anOrder.order_No}</td>
												<td>${fn:substring(anOrder.orderDate, 0,11)}</td>
												<td>${anOrder.prod_Name}</td>
												<td>${anOrder.travelDate}</td>

												<td>
												<a class="btn btn-primary"
													href="<c:url value="/Order/OrdersItemPage?Order_No=${anOrder.order_No}" />"
													type="button">查看明細</a>
												</td>
												<td>${anOrder.total_Amount}</td>
												<td><a class="btn btn-warning"
													href="#comment${anOrder.order_No}" type="button"
													data-toggle="modal">評價此產品</a>
													<form
														action="<c:url value="/_Comment/insert?Order_No=${anOrder.order_No}" />">
														<input type="hidden" name="Order_No"
															value="${anOrder.order_No}"> 
														<input type="hidden"
															name="Prod_Name" value="${anOrder.prod_Name}"> <input
															type="hidden" name="Member_Id"
															value="${anOrder.member_Id}" >

														<div class="modal fade" id="comment${anOrder.order_No}"
															role="dialog" aria-labelledby="myModalLabel"
															aria-hidden="true">
															<div class="modal-dialog" role="document">
																<div class="modal-content" style="margin-top: 100px">
																	<div class="modal-header">
																		<h5 class="modal-title" id="myModalLabel">
																			${anOrder.prod_Name} 使用日期：${anOrder.travelDate}</h5>
																		<button type="button" class="close"
																			data-dismiss="modal">
																			<span aria-hidden="true">×</span>
																		</button>
																	</div>
																	<div class="modal-body">
																		<input type="text" name="Chinese_Name"
																			placeholder="請輸入留言人名稱" style="border: solid 1px"  >
																		<hr>
																		<textarea placeholder="請輸入對這個產品的一些感想"  rows="10" cols="63"
																			style="border: solid 1px gray" wrap="hard"
																			name="Content"  style="margin:5px"></textarea>
																	</div>
																	<div class="modal-footer">
																		<button id="sending" class="btn btn-warning" type="submit">確定送出</button>
																		<button type="button" class="btn btn-secondary"
																			data-dismiss="modal">取消</button>
																	</div>
																</div>

															</div>

														</div>
													</form> <!-- Modal end --></td>

												<!-- Modal start -->


											</tr>


										</c:forEach>
									</tbody>

								</table>
								<hr>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 產品顯示部分end -->
<div id="forModal"></div>


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

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>

	<script type="text/javascript">

	</script>

	<!-- 立即訂購 start-->


	<!-- 立即訂購 end -->

	</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
// 		window.location='<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />'
	
	}); <!-- document).ready 結尾-->
	
	</script>

	<script>

	$("#sending").click(function() {
			var strContent = $("textarea").val();
			
// 			alert("前的strContent \r\n"+strContent);
			strContent = strContent.replace(/\r\n/g, '<br/>'); //IE9、FF、chrome
			strContent = strContent.replace(/\n/g, '<br/>'); //IE7-8
			strContent = strContent.replace(/\s/g, ' '); //空格处理
// 			alert("转换之后的html代码为\r\n"+strContent);
			$("textarea").val(strContent);
		});
	
	
	$("#show").click(function(){
// 		alert("hihi");
// 		alert($(this).val());
   var contextPath = "${pageContext.request.contextPath}";
// 	   alert(contextPath)
		  $.getJSON(contextPath+'/_Comment/show',{Prod_Name:$(this).val()},function(data){
			   var docFragment=$(document.createDocumentFragment());
			   var txt ='';
			   $.each(data,function(i,comment){
				   alert(comment.Content)
				  
// 				   txt +='<div class="modal fade" id="activeModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-dialog" role="document"><div class="modal-content" style="margin-top: 100px"><div class="modal-header"><h5 class="modal-title" id="myModalLabel">'+${comment.Prod_Name}+' 出發日：'+${comment.TravelDate}+'</h5><button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button></div><div class="modal-body">'+${comment.Chinese_Name}${comment.Content}+'</div><div class="modal-footer"><button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button></div></div></div></div>';
				   docFragment.append(txt);
			   });
			   $('#forModal').html(docFragment);
		   })
		$('#activeModal').removeClass("modal fade");
		$('#activeModal').addClass("modal fade show")
	})
			
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