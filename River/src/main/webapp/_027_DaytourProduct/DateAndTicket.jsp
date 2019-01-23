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
		<div style='padding: 7% 25% 8% 25%; background-color: white'>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12" style="padding: 4% 2%">
						<h3>${bean.prod_Name}</h3>
					</div>
				</div>

				<form action="<c:url value="/Order/IntoOrderPage" />">

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
					<input type="hidden" name="Total_Amount" id="Total_Amount" value="">


					<div class="row">
						<div class="col-md-12">
							<div class="card text-white bg-info">

								<h5 class="card-header">選擇日期與票種</h5>
								<div class="card-body">
									<p class="card-text ">
										使用日期 <input id="datePicker" type="date" name="TravelDate"
											value="" min="2019-02-01">



									</p>
									<p class="card-text " align="right">單位: 新台幣/元</p>

									<table class="table table-hover table-sm table-bordered">
										<thead>
											<tr>
												<th>票別</th>
												<th>單價</th>
												<th>數量</th>
												<th>小計</th>
											</tr>
										</thead>
										<tbody>
											<tr class="table-active">
												<td>${bean.ticket_type_1}</td>
												<td>${bean.unitPrice_1}</td>
												<td><select id="Type1_Qty" name="Type1_Qty">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
												</select></td>
												<td><span id='subTotal1'>0</span></td>
											</tr>
											<c:if test="${not empty bean.ticket_type_2}">
												<tr class="table-active">
													<td>${bean.ticket_type_2}</td>
													<td>${bean.unitPrice_2}</td>
													<td><select id="Type2_Qty" name="Type2_Qty">
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
													</select></td>
													<td><span id='subTotal2'>0</span></td>
												</tr>
											</c:if>
											<c:if test="${not empty bean.ticket_type_3}">
												<tr class="table-active">
													<td>${bean.ticket_type_3}</td>
													<td>${bean.unitPrice_3}</td>
													<td><select id="Type3_Qty" name="Type3_Qty">
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
													</select></td>
													<td><span id='subTotal3'>0</span></td>
												</tr>
											</c:if>
											<c:if test="${not empty bean.ticket_type_4}">
												<tr class="table-active">
													<td>${bean.ticket_type_4}</td>
													<td>${bean.unitPrice_4}</td>
													<td><select id="Type4_Qty" name="Type4_Qty">
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
													</select></td>
													<td><span id='subTotal4'>0</span></td>
												</tr>
											</c:if>
										</tbody>
									</table>
								</div>
								<div class="card-footer" align="right">
									<span id='ticketQty'>共計 0 張</span> <span id='totalPrice'>應付總額
										0 元</span>
								</div>
							</div>


							<div class="card bg-default">
								<h5 class="card-header">訂購須知</h5>
								<div class="card-body">

									<p class="card-text"></p>
									<DIV
										style="OVERFLOW: scroll; HEIGHT: 300px; background-color: white">

										<h4 class="text-logo-green">敬請詳閱商品頁內容</h4>
										<br>
										<div>
											<ul class="ul-default">
												<li>票券和部分活動，預定成功後不接受取消與更改，敬請留意，並詳閱商品頁中相關使用和限制說明。</li>
												<li>部分活動因性質特殊，受天候或當地特別條件影響，在出發當天或前一天有取消或變更行程內容的狀況。敬請詳閱商品頁中相關說明。謝謝。</li>
											</ul>
										</div>
										<br>
										<div>
											．<b>◆退改須知</b><br>．此票券一經出券開票，即不可退票或更改，敬請見諒。<br>．請於指定時間提前至集合點等候，逾時未抵達現場，巴士公司將不會主動連絡。<br>．因個人因素未準時抵達或未攜帶預約確認書，視同放棄，恕無法退費<br>．所選日期若滿團，將建議其他日期出發，若無法配合將退還全額費用。<br>．在日本當地若因個人因素自行取消參加時，視同放棄，恕無法退費。<b>◆適用對象</b><br>．成人票(12歲以上)<br>．兒童票(6-11歲)<br>．兒童票(3-5歲)註：未滿3歲孩童免費，也不含巴士座位、餐食。(如需佔位請訂購兒童票)<b>◆適用日期</b>2018/12/20~2019/4/19，可出發日期請參考日曆<b>◆回覆工作天</b>3-5個工作天
											<b>◆訂購所需資訊</b><br>．旅客護照中英文姓名<br>．出發日期<br>．西元出生年月日<br>．前一天住宿酒店名稱<br>．在日本可連絡的手機號碼、E-MAIL
											<br> <br> <br>
										</div>
										<br>
										<div>
											．<b>◆注意事項</b><br>．會因季節關係報名人數眾多可能出現滿團，請儘早預訂。<br>．原本設定的可預約日期，可能受設施的營業狀況或休息日等影響而臨時取消可預約日期。<br>．水果成熟期會因天氣影響而有變化，亦可能食用事先所採好的水果<br>．請自行準備玩雪用手套、禦寒衣物、輕便的服裝與鞋子<br>．因交通、天氣等不可抗力因素所引起的時間延誤、行程變更或景點取消等，不另退費敬請理解。<br>．若遇台風/暴風雪等天候不佳的情況，於出發前一天15:00(日本時間)，決定是否取消出發，之後將隨時以電子郵件形式通知。<br>
										</div>


									</div>
									<!-- 							<div class="card-footer">Card footer</div> -->
								</div>
								<div style="padding: 5%" align="center">
									<input type="checkbox" class="css-checkbox" id="checkbox">
									<label for="checkbox" class="css-label">我已完整閱讀本服務訂購須知，並接受所有規定</label>
								</div>
								<!-- 								<a href="#" class="btn btn-lg btn-secondary btn-warning" -->
								<!-- 									type="submit"  >確認送出</a> -->
								<button type="submit"
									class="btn btn-lg btn-secondary btn-warning">確認送出</button>
							</div>
						</div>
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
	Date.prototype.toDateInputValue = (function() {
	    var local = new Date(this);
	    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
	    return local.toJSON().slice(0,10);
	});
// $(document).ready( function() {
// 	alert(new Date());
// 	alert(new Date().toDateInputValue());
    $('#datePicker').val(new Date().toDateInputValue());
    $('#datePicker').attr('min',new Date().toDateInputValue());
// })​

</script>
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
	$('#Type3_Qty').val(t3);
	var t4 = Number(Type4_Qty);
	if (!t4)
	t4 =Number('0');
	$('#Type4_Qty').val(t4);
	
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
	$('#Total_Amount').val(totalPrice);

}

$('#Type1_Qty').change(function() {
	$('#subTotal1').empty();
	var unitPrice_1 = ${bean.unitPrice_1};
	var Type1_Qty = $('#Type1_Qty').val();
	var subTotal1 = unitPrice_1*Type1_Qty;
	$('#subTotal1').html(subTotal1);
	$('#subTotal1').val(subTotal1);
	ticketQty();
	totalPrice();
	

});
$('#Type2_Qty').change(function() {
	$('#subTotal2').empty();
	var unitPrice_2 = ${bean.unitPrice_2};
	var Type2_Qty = $('#Type2_Qty').val();
	var subTotal2 = unitPrice_2*Type2_Qty;
	$('#subTotal2').html(subTotal2);
	$('#subTotal2').val(subTotal2);
	ticketQty();
	totalPrice();

});
$('#Type3_Qty').change(function() {
	$('#subTotal3').empty();
	var unitPrice_3 = ${bean.unitPrice_3};
	var Type3_Qty = $('#Type3_Qty').val();
	var subTotal3 = unitPrice_3*Type3_Qty;
	$('#subTotal3').html(subTotal3);
	$('#subTotal3').val(subTotal3);
	ticketQty();
	totalPrice();

});
$('#Type4_Qty').change(function() {
	$('#subTotal4').empty();
	var unitPrice_4 = ${bean.unitPrice_4};
	var Type4_Qty = $('#Type4_Qty').val();
	var subTotal4 = unitPrice_4*Type4_Qty;
	$('#subTotal4').html(subTotal4);
	$('#subTotal4').val(subTotal4);
	ticketQty();
	totalPrice();

});
		

</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
		
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