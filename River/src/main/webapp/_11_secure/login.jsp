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


		<div style='padding: 8% 10%'>

			<%-- 		<c:if test="${empty member_Id}">  這一段這樣寫，那我只要沒過Controller就會要login, 滿煩 --%>


			<%-- 		<c:redirect url="/_11_secure/login.jsp" /> --%>

			<%--        </c:if> --%>
			<%-- 			<c:set value="${member_Id}" var="member_Id" scope="session" /> --%>
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
										<h4>會員登入專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item active">
									<img class="d-block w-100" alt="Carousel Bootstrap Second"
										src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg" />
									<div class="carousel-caption">
										<h4>會員登入專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap Third"
										src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg" />
									<div class="carousel-caption">
										<h4>會員登入專區</h4>
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

						<div align="center"
							style="margin: 30px 400px; background-color: #F0F7F4; border-radius: 10px; border: solid 1px #99E1D9; padding: 30px">

							<form action="<c:url value="/_11_secure/login.controller" />"
								method="post" style="padding-top: 20px">
								<table>
									<tr>
										<td>會員帳號：</td>
										<td><input type="text" name="username"
											value="${param.username}"
											style="border: solid 1px; margin: 15px"></td>
										<td><span class="errors">${errors.IDerror}</span></td>
									</tr>
									<tr>
										<td>會員密碼：</td>
										<td><input type="password" name="password"
											value="${param['password']}"
											style="border: solid 1px; margin: 15px"></td>
										<td><span class="errors">${errors.PWerror}</span></td>
									</tr>
								</table>
								<button class="btn btn-block btn-primary" name="Login"
									value="Login" type="submit">登入</button>
							</form>
							<div style="margin: 20px">
								<span> <!-- 								<input type="button" value="Registered" onclick="Register();" /> -->
									<!-- 								<input type="button" value="Registered" --> <!-- 									onclick="Register();" style="background-image:url(../images/icons/Register.png);width:80px;height:80px;"> -->

									<!-- 									<button value="Registered" onclick="Register();" title="現在註冊"> -->
									<!-- 										<img src="../images/icons/Register.png" width="80" height="80"> -->
									<!-- 									</button> --> <!-- 									<button value="Registered" onclick="Register();" title="現在註冊"> -->
									<!-- 										<img src="../images/icons/Register.png" width="80" height="80"> -->
									<!-- 									</button> --> <a class="card-link"
									data-toggle="collapse" data-parent="#card-454342"
									href="#card-element-120895"><img
										src="../images/icons/Register.png" width="80" height="80">
										立刻註冊</a>

								</span> <span> <!-- 								Facebook登入：<input type="button" value="Facebook登入" -->
									<!-- 									onclick="FBLogin();" /> --> <!-- 								<input type="button" value="Facebook登入" -->
									<!-- 									onclick="FBLogin();" style="background-image:url(../images/icons/fb.png);width:80px;height:80px;"> -->
									<button value="Facebook登入" onclick="FBLogin();"
										title="Facebook帳號登入">
										<img src="../images/icons/fb.png" width="80" height="80">
									</button>
								</span> <span> <!-- 								Google登入：<input type="button" value="Google登入" -->
									<!-- 									onclick="GoogleLogin();" /> -->
									<button value="Facebook登入" onclick="GoogleLogin();"
										title="Google帳號登入">
										<img src="../images/icons/google.png" width="80" height="80">
									</button> <!-- 								 <input type="button" value="Google登入" onclick="GoogleLogin();" -->
									<!-- 								style="background-image: url(../images/icons/google.png); width: 80px; height: 80px;"> -->
								</span>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div id="card-454342">
									<div class="card">
										<div class="card-header">
											<a class="card-link" data-toggle="collapse"
												data-parent="#card-454342" href="#card-element-120895">快速註冊</a>
										</div>
										<div id="card-element-120895" class="collapse">
											<div class="card-body">

												<form
													action="<c:url value="/_11_memberpages/memberRegiste.controller" />"
													method="post">
													<table class="table table-hover table-bordered">
														<thead>
															<tr style="background-color: #3be8b0">
																<td>帳號</td>
																<td>密碼</td>
																<td>E-mail</td>
																<td>中文姓名</td>
																<td>英文姓名</td>
																
															</tr>
														</thead>
														<tbody>
															<tr class="table-Default">
																<td>${param.member_Id}<input type="text"
																	name="member_Id" value="${param.member_Id}"></td>
																	<td><input type="text" name ="password" value="${param.password}"></td>
																<td><input type="text" name="email"
																	value="${param.email}"><span class="errors">${param.email}</span></td>
																<td><input type="text" name="chinese_Name"
																	value="${param.chinese_Name}"></td>
																<td><input type="text" name="english_Name"
																	value="${param.english_Name}"></td>
																</tr>
														</tbody>



													</table>
													<hr>
													<table class="table table-hover table-bordered">
														<thead>
															<tr style="background-color: #3be8b0">
															    <td>身分證字號</td>
																<td>聯絡電話</td>
																<td>國籍</td>
																<td>生日</td>
																<td>性別</td>
															</tr>
														</thead>
														<tbody>
															<tr class="table-Default">
															<td><input type="text" name="ID_number"
																	value="${param.ID_number}" ><span
																	class="errors">${errors.ID_number}</span></td>
																<td><input type="text" name="telephone"
																	value="${param.telephone}"><span class="errors">${errors.telephone}</span></td>
															
																<td><input type="text" name="country"
																	value="${param.country}"></td>
																<td><input type="text" name="birthday"
																	value="${param.birthday}"><span class="errors">${errors.birthday}</span></td>
																<td><input type="text" name="sex"
																	value="${param.sex}"></td>


															</tr>
														</tbody>
													</table>
														<table class="table table-hover table-bordered">
														<thead>
															<tr style="background-color: #3be8b0">
																<td>地址</td>
																<td></td>
															</tr>
														</thead>
														<tbody>
															<tr class="table-Default">
																<td><input type="text" name="Address"
																	value="${param.address}"></td>
																<!-- 											<td><input type="submit" name="members" value="Update"></td> -->
																<td><button class="btn btn-warning" value="Insert"
																		name="members" type="submit">註冊</button></td>


															</tr>
														</tbody>
													</table>
												</form>


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
		function Register() {
			window.location = '<c:url value="/_11_memberpages/AccountRegister.jsp" />'
		}
	</script>


	<script type="text/javascript">
		//應用程式編號，進入 https://developers.facebook.com/apps/ 即可看到
		let FB_appID = "228035798120942";

		//FB Login 官方文件：https://developers.facebook.com/docs/facebook-login/web

		// Load the Facebook Javascript SDK asynchronously
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		window.fbAsyncInit = function() {
			FB.init({
				appId : FB_appID,//FB appID
				cookie : true, // enable cookies to allow the server to access the session

				xfbml : true, // parse social plugins on this page
				version : 'v3.0' // use graph api version
			});

		};

		//使用自己客製化的按鈕來登入
		function FBLogin() {

			FB.login(function(response) {
				//debug用
				console.log(response);
				if (response.status === 'connected') {
					//user已登入FB
					//抓userID
					let FB_ID = response["authResponse"]["userID"];
					console.log("userID:" + FB_ID);
					window.location = "http://localhost:8080//River";

				} else {
					// user FB取消授權
					alert("Facebook帳號無法登入");
				}
			}, {
				scope : 'public_profile,email'
			});

		}
	</script>

	<!--Google登入-->
	<script async defer src="https://apis.google.com/js/api.js"
		onload="this.onload=function(){};HandleGoogleApiLibrary()"
		onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>
	<script type="text/javascript">
		//進入 https://console.developers.google.com/，找「憑證」頁籤(記得先選對專案)，即可找到用戶端ID
		let Google_appId = "632974983145-ehaueuvi84jfn65uqq2bsvd8cocg7kdk.apps.googleusercontent.com";

		//參考文章：http://usefulangle.com/post/55/google-login-javascript-api 

		// Called when Google Javascript API Javascript is loaded
		function HandleGoogleApiLibrary() {
			// Load "client" & "auth2" libraries
			gapi
					.load(
							'client:auth2',
							{
								callback : function() {
									// Initialize client & auth libraries
									gapi.client
											.init(
													{
														clientId : Google_appId,
														scope : 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.me'
													})
											.then(
													function(success) {
														// Google Libraries are initialized successfully
														// You can now make API calls 
														console
																.log("Google Libraries are initialized successfully");
													}, function(error) {
														// Error occurred
														console.log(error);// to find the reason 
													});
								},
								onerror : function() {
									// Failed to load libraries
									console.log("Failed to load libraries");
								}
							});
		}

		function GoogleLogin() {
			// API call for Google login  
			gapi.auth2.getAuthInstance().signIn().then(function(success) {
				// Login API call is successful 
// 				alert("成功");
				let Google_ID = success["El"];
// 				alert("成功Google_ID"+Google_ID);
				txt = '<c:url value="/_11_secure/GoogleLogin?member_Id='+Google_ID+'" />'
// 				alert(txt);
				window.location=txt
// 				window.location = "http://localhost:8080/River";

			}, function(error) {
				// Error occurred
				// console.log(error) to find the reason
// 				alert("失敗");
				console.log(error);
			}

			);

		}
	</script>

	<!--有些網站會做帳號和user FB帳號的綁定/解除綁定，或你想讓使用者刪除你的FB App，讓使用者下次可以切換不同FB帳號登入你的網站-->
	<!--下面程式碼派得上用場-->
	<script type="text/javascript">
		//刪除使用者已授權你的FB App，好讓使用者下次重新授權你的FB App
		//參考：https://stackoverflow.com/questions/6634212/remove-the-application-from-a-user-using-graph-api/7741978#7741978
		function Del_FB_App() {
			FB.getLoginStatus(function(response) {//取得目前user是否登入FB網站
				//debug用
				console.log(response);
				if (response.status === 'connected') {
					// Logged into Facebook.
					//抓userID
					FB.api("/me/permissions", "DELETE", function(response) {
						console.log("刪除結果");
						console.log(response); //gives true on app delete success 
					});
				} else {
					// FB取消授權
					console.log("無法刪除FB App");
				}
			});

		}
	</script>

	<!--類似上面Delete FB App的效果，呼叫此function後，下次使用者想再Google登入你的網站就必須重新選擇帳號-->
	<script type="text/javascript">
		//參考：https://developers.google.com/identity/sign-in/web/disconnect

		function Google_disconnect() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.disconnect().then(function() {
				console.log('User disconnect.');
			});
		}
	</script>



	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
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
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>