<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	
	<title>fpay</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--======CSS資料夾==============================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
	<link type="text/css" rel="stylesheet" href="../css/Tstyle.css" />
	
	 
	<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="../css/selPmtMeth.min.css" />
	<link type="text/css" rel="stylesheet" href="../css/order.min.css" />
<!--===============================================================================================-->	
		
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">
	
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

								<button class="btn dropdown-toggle" type="button" style="color:black;"
							id="dropdownMenuButton" data-toggle="dropdown">會員專區 ▾</button>

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

						<button class="btn dropdown-toggle" type="button" style="color:black;
							id="dropdownMenuButton" data-toggle="dropdown">會員專區 ▾</button>

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
	<div style="margin:60px;">
		
	
	
	</div>



<!-- ===================付款頁面==================== -->
<!-- container start -->
<div class="container">
  
	<div style="padding-left: 15px;">
	  <div class="step row">
	    <div class="bread flat">
	      <a href="#" class="">選擇航班</a>
	      <a href="#" class="">填寫訂購單</a>
	      <a href="#" class="active">選擇付款</a>
	      <a href="#" class="">完成訂購</a>
	    </div>
	  </div>
	</div>
	
	
	<div class="topInfo clearfix">
			<div class="orderNo"><h2>訂單編號：${forderBean.forder_No}&nbsp;</h2></div>
			
		 
		<!--================ 選擇訂金或應付總額 ================-->

		<!-- 國際機票：航班訂位狀態 -->
			<div id="selPmtMeth-flightOrdStatus" class="tableSpace">
				  <h2><i class="fa fa-eercast" aria-hidden="true" style="color:green;">&nbsp;&nbsp;</i>航班訂位狀態</h2>
			</div>
			<!--航班訂位狀態-->
			<table class="greenThTable flightOrderStatus hide-pad-2 ">
			  <tr>
			    <th>
			    	<span class="rwdItem-pad">起飛 - 抵達</span>
			    	<span class="rwdItem-pc">起飛</span>
			    </th>
			    <th><span>抵達</span></th>
			    <th><span>航班</span></th>
			    
			      <th><span>全球訂位系統代號</span></th>
			      <th><span>處理進度</span></th>
			    
			  </tr>
			  
			    <tr>
			      <td>
			    <!-- for pc-->
			        <div class="rwdItem-pc"><fmt:formatDate value="${forderBean.f_goDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_start}</div>
				<!-- for pad-->
			        <div class="rwdItem-pad">
			          <div class="side">
			            <div class="c-999 mg-r-7">起飛</div>
			            <div><fmt:formatDate value="${forderBean.f_goDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_start}</div>
			          </div>
			          <div class="side">
			            <div class="c-999 mg-r-7">抵達</div>
			            <div><fmt:formatDate value="${forderBean.f_goDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_startend}</div>
			          </div>
			        </div>
			
			      </td>
			      <td><span style="font-size: 15px"><fmt:formatDate value="${forderBean.f_goDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_startend}</span></td>
			      <td>
			       	 ${forderBean.airLine_go} ${forderBean.flight_numbergo} <div>${forderBean.f_cabin}</div>
			     </td>
			
			          <td rowspan="2">${forderBean.booking_code}</td>
			        
			        <td>&nbsp;&nbsp;&nbsp;OK</td>
			      
			    </tr>
			  
			    <tr>
			      <td>
			    <!-- for pc-->
			        <div class="rwdItem-pc"><fmt:formatDate value="${forderBean.f_backDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_endback}</div>
				<!-- for pad-->
			        <div class="rwdItem-pad">
			          <div class="side">
			            <div class="c-999 mg-r-7">起飛</div>
			            <div><fmt:formatDate value="${forderBean.f_backDateStart}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_endback}</div>
			          </div>
			          <div class="side">
			            <div class="c-999 mg-r-7">抵達</div>
			            <div><fmt:formatDate value="${forderBean.f_backDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_end}</div>
			          </div>
			        </div>
			
			      </td>
			      <td><span style="font-size: 15px"><fmt:formatDate value="${forderBean.f_backDateEnd}" type="date" pattern="yyyy/MM/dd(E) HH:mm"/><br>${forderBean.cn_end}</span></td>
			      <td>
			       	 ${forderBean.airLine_back} ${forderBean.flight_numberback} <div>${forderBean.f_cabin}</div>
			      </td>
			
			        <td>&nbsp;&nbsp;&nbsp;OK</td>
			      
			    </tr>
			  
			  <tr>
			    <td colspan="5">
			      <ul class="tableUlInfo">
			        <li>起飛和抵達時間皆為當地時間，且為24小時制</li>
			      </ul>
			    </td>
			  </tr>
			</table>
			
			
			
			
			
			
			
			
			
		<!--旅客基本資料與價錢 -->
			<div id="selPmtMeth-flightOrdStatus" class="tableSpace">
				  <h2><i class="fa fa-eercast" aria-hidden="true" style="color:green;">&nbsp;&nbsp;</i>款項明細</h2>
			</div>
			<!--航班訂位狀態-->
			
			
			
			<table class="greenThTable flightOrderStatus hide-pad-2 ">
			  <tr>
			    <th>
			    	<span class="rwdItem-pc">旅客姓名</span>
			    </th>
			    <th><span>商品名稱</span></th>
			    <th><span>機票金額</span></th>
			    
			      <th><span>稅金</span></th>
			      <th><span>票券類別</span></th>
			    
			  </tr>
			  
			  <c:set var="adult" value="${forderBean.f_adult}"/>
			  <c:set var="child" value="${forderBean.f_child}"/>
			  <c:set var="baby" value="${forderBean.f_baby}"/>
			  
				<c:if test="${adult != 0}">
				<c:forEach var="adultP" begin="0" end="${adult-1}"> 
			  	 <!-- 這裡開始是成人旅客姓名-->
			    <tr>
			      <td>
			        <div class="rwdItem-pc">${fpassengerListBean.fchname[adultP]}</div>
			        <div style="font-size: 15px">${fpassengerListBean.fenfirstname[adultP]}&nbsp;${fpassengerListBean.fenlastname[adultP]}</div>
			      </td>
				  
			      <td>
			      <span style="font-size: 15px">${forderBean.f_start}/${forderBean.f_startend}/${forderBean.f_end}</span>
			      </td>
			      
			      <td>
			       	 ${forderBean.f_priceAdult}&nbsp;元<div></div>
			     </td>
			
			        <td>${forderBean.f_taxAdult}&nbsp;元</td>
			        
			        <c:choose>
					    <c:when test="${adult != 0}">
					       <td>成人票</td>
					    </c:when>
			        </c:choose>
			        
			    </tr>
			   </c:forEach> 
			   </c:if>  
			   
				<c:if test="${child != 0}">
				<c:forEach var="childP" begin="${adult}" end="${adult+child-1}"> 
			  	 <!-- 這裡開始是成人旅客姓名-->
			    <tr>
			      <td>
			        <div class="rwdItem-pc">${fpassengerListBean.fchname[childP]}</div>
			        <div style="font-size: 15px">${fpassengerListBean.fenfirstname[childP]}&nbsp;${fpassengerListBean.fenlastname[childP]}</div>
			      </td>
				  
			      <td>
			      <span style="font-size: 15px">${forderBean.f_start}/${forderBean.f_startend}/${forderBean.f_end}</span>
			      </td>
			      
			      <td>
			       	 ${forderBean.f_priceChild}&nbsp;元<div></div>
			     </td>
			
			        <td>${forderBean.f_taxChild}&nbsp;元</td>
			        
			        <c:choose>
					    <c:when test="${child != 0}">
					       <td>孩童票</td>
					    </c:when>
			        </c:choose>
			        
			    </tr>
			   </c:forEach> 
			   </c:if>  
			   
				<c:if test="${baby != 0}">
				<c:forEach var="babyP" begin="${child+adult}" end="${baby+child+adult-1}"> 
			  	 <!-- 這裡開始是成人旅客姓名-->
			    <tr>
			      <td>
			        <div class="rwdItem-pc">${fpassengerListBean.fchname[babyP]}</div>
			        <div style="font-size: 15px">${fpassengerListBean.fenfirstname[babyP]}&nbsp;${fpassengerListBean.fenlastname[babyP]}</div>
			      </td>
				  
			      <td>
			      <span style="font-size: 15px">${forderBean.f_start}/${forderBean.f_startend}/${forderBean.f_end}</span>
			      </td>
			      
			      <td>
			       	 ${forderBean.f_priceBaby}&nbsp;元<div></div>
			     </td>
			
			        <td>${forderBean.f_taxBaby}&nbsp;元</td>
			        
			        <c:choose>
					    <c:when test="${baby != 0}">
					       <td>嬰兒票</td>
					    </c:when>
			        </c:choose>
			        
			    </tr>
			   </c:forEach> 
			   </c:if>  
			 
    		   
    		   
    		   
    		   
    		   
    		   
			<!--  應付總額  -->
			  
			  <tr>
			    <td colspan="10">
			      <ul style="float: right;">
			        <li style="color: black;">
			        	<span style="font-size: 15px"></span>應付總額&nbsp;NT$&nbsp;&nbsp;
			        	<span style="color:orange; font-size: 25px"><fmt:parseNumber integerOnly="true" value="${forderBean.f_total}"/></span>元
			        </li>
			      </ul>
			    </td>
			  </tr>
			</table>			
			
			
			
			
			
			
			
		<!--按鈕區域 -->
			<div class="formorderBtns">

			<div style="float:left;">
	   			<a class="button grayBtn left"
				href="<c:url value="/histroy.cntroller?member_Id=${member_Id}" />"
				type="button">回訂單明細</a> 
			</div>
		
			<span style="float:right;">
			 <button class="greenBtn submit-btn">進行付款</button>
			 </span>
			 
			</div>
			
			
			
				  
		  </div>
		
	</div>
	
	
	
	

</div><!-- container END -->
<!-- ===================付款頁面結束==================== -->



	<!-- Footer -->
	<footer class="bg4 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Women
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Men
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shoes
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Watches
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
					</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="../images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="../images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="../images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-01.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="../images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-02.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="../images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="../images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/product-detail-03.jpg">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
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
	
	
<!--====支付相關用=＝====================================================＝＝＝＝＝＝================================-->


	
	
	
	
<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>