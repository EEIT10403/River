<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Historylist</title>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="stylesheet" href="../css/amazeui.min.css">
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

<style type="text/css">
table.blueTable {
	border: 1px solid #3BE8B0;
	background-color: #D0E4F5;
	width: 100%;
	text-align: center;
	border-collapse: collapse;
}

table.blueTable td, table.blueTable th {
	border: 2px solid #95A3AF;
	padding: 3px 2px;
}

table.blueTable tbody td {
	font-size: 15px;
}

table.blueTable tr:nth-child(even) {
	background: #D0E4F5;
}

table.blueTable thead {
	background: #3BE8B0;
	background: -moz-linear-gradient(top, #6ceec4 0%, #4eeab8 66%, #3BE8B0 100%);
	background: -webkit-linear-gradient(top, #6ceec4 0%, #4eeab8 66%, #3BE8B0 100%);
	background: linear-gradient(to bottom, #6ceec4 0%, #4eeab8 66%, #3BE8B0 100%);
	border-bottom: 2px solid #444444;
}

table.blueTable thead th {
	font-size: 18px;
	font-weight: bold;
	color: #000000;
	text-align: center;
	border-left: 1px solid #7D8993;
}

table.blueTable thead th:first-child {
	border-left: none;
}

table.blueTable tfoot td {
	font-size: 14px;
}

table.blueTable tfoot .links {
	text-align: right;
}

table.blueTable tfoot .links a {
	display: inline-block;
	background: #1C6EA4;
	color: #FFFFFF;
	padding: 2px 8px;
	border-radius: 5px;
}


.modal-dialog {
  position: relative;
  display: inline-block;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 270px;
  max-width: 100%;
  border-radius: 0;
  background: #f8f8f8;
  /*@media @large-up {
    width: @modal-lg;
    margin-left: -@modal-lg/2;
  }*/
}

.am-modal-footer {
  height: 44px;
  overflow: hidden;
  display: table;
  width: 100%;
  border-collapse: collapse;
  margin-left: -46%;
}

.am-modal-btn {
  display: table-cell !important;
  padding: 0 5px;
  height: 44px;
  -webkit-box-sizing: border-box !important;
          box-sizing: border-box !important;
  font-size: 1.6rem;
  line-height: 44px;
  text-align: center;
  color: #0e90d2;
  display: block;
  word-wrap: normal;
  /* for IE */
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  cursor: pointer;
  border-right: 1px solid #dedede;
}






</style>



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
										src="../images/member3.jpg" />
									<div class="carousel-caption">
										<h4>會員管理專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item active">
									<img class="d-block w-100" alt="Carousel Bootstrap Second"
										src="../images/member1.jpg" />
									<div class="carousel-caption">
										<h4>會員管理專區</h4>
										<p></p>
									</div>
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap Third"
										src="../images/member2.jpg" />
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
									type="button">訂單查詢及付款</a> 
								<a class="btn btn-info" type="button"
									href="<c:url value="/histroy.cntroller?member_Id=${member_Id}" />">機票查詢及付款</a>
								<a class="btn btn-secondary" type="button"
									href="<c:url value="/Member/IntoMemberAcount?member_Id=${member_Id}" />">管理帳戶</a>
								<a class="btn btn-secondary" type="button"
									href="<c:url value="/Comment/IntoComment?member_Id=${member_Id}" />">產品評鑑
								</a> <a class="btn btn-secondary" type="button"
									href="<c:url value="/Member/Logout" />">登出 </a>
							</div>
						</div>
						<%-- 						${orderList} --%>
						<div class="row">
							<div class="col-md-12">
								<hr>
								<table class="table table-hover table-bordered">
									<thead>
										<tr style="background-color: #3be8b0">
											<td>#訂單編號</td>
											<td>商品名稱</td>
											<td>航程目標</td>
											<td>出發日期</td>
											<td>回程日期</td>
											<td>訂單明細</td>
											<td>商品金額</td>
											<td>其他選項</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach varStatus="stVar" var="anOrder"
											items="${orderList}">
											<tr class="table-Default">
												<td>${anOrder.forder_No}</td>
												<td>${anOrder.f_start}/${anOrder.f_startend}/${anOrder.f_end}</td>
												<td>${anOrder.cn_start}<br>${anOrder.cn_startend}</td>
												<td><fmt:formatDate value="${anOrder.f_goDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/></td>
												<td><fmt:formatDate value="${anOrder.f_backDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/></td>
								
<%-- href="#${anOrder.forder_No}"  id="${anOrder.forder_No}" 可利用這兩者之間 互相交替比對訂單編號 --%>
											<td>
													<a id="modal-3864" href="#${anOrder.forder_No}"
													role="button" class="btn btn-primary prompt" data-toggle="modal">查看明細</a> 
													<!-- 		查看明細MODAL		 --> 
											
													<div class="am-modal modal-prompt fade" tabindex="-1" id="${anOrder.forder_No}"
														role="dialog" aria-labelledby="myModalLabel"
														aria-hidden="true">
														
														<div class="modal-dialog" style="width: 70%; padding: 20px;">
															<div class="modal-hd"> 
																<div class="modal-body">
																<!--  迴圈判定比對資料 -->
																	<c:forEach varStatus="stVar" var="aContact"
																		items="${ContactBeans}">
																		<c:if test="${anOrder.forder_No==aContact.forder_No}">
																			<table class="blueTable">
																				<thead>
																					<tr>
																						<th colspan="10" style="background-color: #FFCCCC">聯絡人資料</th>
																					</tr>
																				</thead>

																				<thead>
																					<tr>
																						<th>中文姓名</th>
																						<th>稱 謂</th>
																						<th>英文姓</th>
																						<th>英文名</th>
																						<th>手 機</th>
																						<th>e-mail</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>${aContact.chnameCTT}</td>
																						<td>${aContact.genderCTT}</td>
																						<td>${aContact.enfirstnameCTT}</td>
																						<td>${aContact.enlastnameCTT}</td>
																						<td>${aContact.phoneCTT}</td>
																						<td>${aContact.mailCTT}</td>
																					</tr>
																				</tbody>
																			</table>
																		</c:if>
																	</c:forEach>
																	
																	<br>
																	<c:forEach varStatus="stVar" var="aContact"
																		items="${ContactBeans}">
																		<c:if test="${anOrder.forder_No==aContact.forder_No}">
																			<table class="blueTable">
																				<thead>
																					<tr>
																						<th colspan="10" style="background-color: #FFCCCC">航班資訊  </th>
																					</tr>
																				</thead>

																				<thead>
																					<tr>
																						<th>行程</th>
																						<th>起迄時間</th>
																						<th>起迄地點</th>
																						<th>航空公司</th>
																						<th>航班</th>
																						<th>託運行李</th>
																						<th>訂位代號</th>
																						
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>去程</td>
																						<td><fmt:formatDate value="${anOrder.f_goDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/>&nbsp;~&nbsp;
																						<fmt:formatDate value="${anOrder.f_goDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/></td>
																						
																						<td>${anOrder.cn_start}&nbsp;✈&nbsp;${anOrder.cn_startend}</td>
																						<td>${anOrder.airLine_go}</td>
																						<td>${anOrder.flight_numbergo}</td>
																						<td>30公斤/人</td>
																						<td>${anOrder.booking_code}</td>
																				
																					</tr>
																				</tbody>
																			</table>
																			
																			
																		</c:if>
																	</c:forEach>
																	<c:forEach varStatus="stVar" var="aContact"
																		items="${ContactBeans}">
																		<c:if test="${anOrder.forder_No==aContact.forder_No}">
																			<table class="blueTable">
																				<thead>
																					<tr></tr>
																				</thead>

																				<thead>
																					<tr>
																						<th>行程</th>
																						<th>起迄時間</th>
																						<th>起迄地點</th>
																						<th>航空公司</th>
																						<th>航班</th>
																						<th>託運行李</th>
																						<th>訂位代號</th>
																						
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>回程</td>
																						<td><fmt:formatDate value="${anOrder.f_backDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/>&nbsp;~&nbsp;
																						<fmt:formatDate value="${anOrder.f_backDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/></td>
																						
																						<td>${anOrder.cn_endback}&nbsp;✈&nbsp;${anOrder.cn_end}</td>
																						<td>${anOrder.airLine_back}</td>
																						<td>${anOrder.flight_numberback}</td>
																						<td>30公斤/人</td>
																						<td>${anOrder.booking_code}</td>
																				
																					</tr>
																				</tbody>
																			</table>
																			
																			
																			
																			
																		</c:if>
																	</c:forEach>
																	
																	
																	
																	
																	

																</div>
															
															 <div class="am-modal-footer">
														      												      
														      <button type="button" class="close am-modal-btn" data-dismiss="modal">
																		<span aria-hidden="true">取    消</span>
															  </button>
														      
														      
														     </div>
															
															
																</div>
															</div>

														</div>

													</td>




												<td>NT$ ${anOrder.f_total}元</td>

												<td>
												
												<c:if test="${anOrder.f_Unpaid eq 0}">
												
													<a class="btn btn-primary"
													style="background-color: red" type="button">尚未付款</a>
													
												</c:if>	
												<c:if test="${anOrder.f_Unpaid eq 1}">
												
													<p>(已付款)</p>
													
												</c:if>	
													
												
													</td>



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
// $('#buynow').click(function(){
// 	window.location='<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />'
// });
	
		
<!-- 立即訂購 end -->

</script>

	<script>
	<!--讀出產品的功能 start -->
	$(document).ready(function() {	
// 		window.location='<c:url value="/Order/IntoMemberOrderPage?member_Id=${member_Id}" />'
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
	<!-- 	詳細資料modal	 -->
	<script src="../js/amazeui.min.js"></script>



	<!--===============================================================================================-->
	<script src="../js/main.js"></script>






</body>
</html>