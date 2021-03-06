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
	
	<title>confirm</title>
	
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
	
	<link rel="stylesheet" href="../css/amazeui.min.css">
	 
	<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="../css/order.min.css" />
	
<!--===============================================================================================-->	
		
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">
	
<!--===============================================================================================-->

<style>
	table.greenTable {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #CFEEBA;
  width: 100%;
  text-align: center;
}
table.greenTable td, table.greenTable th {
  border: 1px solid #5A9453;
  padding: 3px 2px;
}
table.greenTable tbody td {
  font-size: 13px;
  color: #000000;
}
table.greenTable tr:nth-child(even) {
  background: #CFEEBA;
}
table.greenTable thead {
  background: #24943A;
  background: -moz-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: -webkit-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: linear-gradient(to bottom, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  border-bottom: 0px solid #444444;
}
table.greenTable thead th {
  font-size: 15px;
  font-weight: normal;
 
  text-align: center;
  border-left: 2px solid #24943A;
}
table.greenTable thead th:first-child {
  border-left: none;
}

table.greenTable tfoot td {
  font-size: 13px;
}
table.greenTable tfoot .links {
  text-align: right;
}
table.greenTable tfoot .links a{
  display: inline-block;
  background: #FFFFFF;
  color: #24943A;
  padding: 2px 8px;
  border-radius: 5px;
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

								<button class="btn dropdown-toggle" type="button"
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

						<button class="btn dropdown-toggle" type="button"
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



<!-- ===================訂單順序中間==================== -->
<!-- container start -->
<div class="container">
  
	<div style="padding-left: 15px;">
	  <div class="step row">
	    <div class="bread flat">
	      <a href="#" class="">選擇航班</a>
	      <a href="#" class="active">填寫訂購單</a>
	      <a href="#" class="">選擇付款</a>
	      <a href="#" class="">完成訂購</a>
	    </div>
	  </div>
	</div>
<div class="col-sm-12 order-title">
    <div class="row">
        <i class="icon-marker indexCount"><i class="fa fa-eercast" aria-hidden="true" style="color:green;">&nbsp;</i></i>
        <h4>訂單明細</h4>
        
    </div>
</div>

<div class="table-line orderDetial_borderVertical">
	<div class="col-sm-12">
		<div class="form-padding">
			<table class="table-form table-form-full">
				<tbody>
					<tr>
						<th class="loginTable_detail_title">商品名稱</th>
						
							<td>${forderBean.f_start}/${forderBean.f_startend}/${forderBean.f_end}</td>
						
					</tr>
					<tr>
						<th class="loginTable_detail_title">航班資訊</th>
						<td class="orderDetail-tableWrapper">
							<table class='orderDetail-table'>
								<thead>
									<tr>
										<th>行程</th>
										<th>起迄時間</th>
										<th>起迄地點</th>
										<th class="orderDetail-airline">航班</th>
										<th class="orderDetail-baggage">託運行李</th>
									</tr>
								</thead>
								<tbody>
									<tr>
								  	  
								  	  	<td class='orderDetail-number' rowspan="1">1</td>
								  	<td>
										<fmt:formatDate value="${forderBean.f_goDateStart}" type="date" pattern="yyyy/MM/dd(E)"/><br>
								  	 	<fmt:formatDate value="${forderBean.f_goDateStart}" type="time" pattern="HH:mm"/> ~ 
								  		<fmt:formatDate value="${forderBean.f_goDateEnd}" type="time" pattern="HH:mm"/>
								  	</td>
								  	
							<!--轉換機場代號為中文名稱 -->
								<c:set var="airportStart" value="${forderBean.f_start}"/>
									<c:choose>
									 	<c:when test="${airportStart == 'TPE'}">
									      <c:set var="airportStart" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportStart == 'TSA'}">
									      <c:set var="airportStart" value="台北松山機場 (TSA)"/></c:when>
									 	<c:when test="${airportStart == 'HND'}">
									      <c:set var="airportStart" value="東京羽田機場 (HND)"/></c:when>
									 	<c:when test="${airportStart == 'NRT'}">
									      <c:set var="airportStart" value="東京成田機場 (NRT)"/></c:when>
									 	<c:when test="${airportStart == 'KIX'}">
									      <c:set var="airportStart" value="關西國際機場 (KIX)"/></c:when>
									 	<c:when test="${airportStart == 'FUK'}">
									      <c:set var="airportStart" value="福岡機場 (FUK)"/></c:when>
									 	<c:when test="${airportStart == 'CTS'}">
									      <c:set var="airportStart" value="新千歲機場 (CTS)"/></c:when>
									 	<c:when test="${airportStart == 'NGO'}">
									      <c:set var="airportStart" value="中部國際機場 (NGO)"/></c:when>
									 	<c:when test="${airportStart == 'OKA'}">
									      <c:set var="airportStart" value="那霸國際機場 (OKA)"/></c:when>
									      
									</c:choose>
									
								<c:set var="airportStartend" value="${forderBean.f_startend}"/>
									<c:choose>
									 	<c:when test="${airportStartend == 'TPE'}">
									      <c:set var="airportStartend" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportStartend == 'TSA'}">
									      <c:set var="airportStartend" value="台北松山機場 (TSA)"/></c:when>
									 	<c:when test="${airportStartend == 'HND'}">
									      <c:set var="airportStartend" value="東京羽田機場 (HND)"/></c:when>
									 	<c:when test="${airportStartend == 'NRT'}">
									      <c:set var="airportStartend" value="東京成田機場 (NRT)"/></c:when>
									 	<c:when test="${airportStartend == 'KIX'}">
									      <c:set var="airportStartend" value="關西國際機場 (KIX)"/></c:when>
									 	<c:when test="${airportStartend == 'FUK'}">
									      <c:set var="airportStartend" value="福岡機場 (FUK)"/></c:when>
									 	<c:when test="${airportStartend == 'CTS'}">
									      <c:set var="airportStartend" value="新千歲機場 (CTS)"/></c:when>
									 	<c:when test="${airportStartend == 'NGO'}">
									      <c:set var="airportStartend" value="中部國際機場 (NGO)"/></c:when>
									 	<c:when test="${airportStartend == 'OKA'}">
									      <c:set var="airportStartend" value="那霸國際機場 (OKA)"/></c:when>
									      
									</c:choose>
									
								<c:set var="airportEndback" value="${forderBean.f_endback}"/>
									<c:choose>
									 	<c:when test="${airportEndback == 'TPE'}">
									      <c:set var="airportEndback" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportEndback == 'TSA'}">
									      <c:set var="airportEndback" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportEndback == 'HND'}">
									      <c:set var="airportEndback" value="東京羽田機場 (HND)"/></c:when>
									 	<c:when test="${airportEndback == 'NRT'}">
									      <c:set var="airportEndback" value="東京成田機場 (NRT)"/></c:when>
									 	<c:when test="${airportEndback == 'KIX'}">
									      <c:set var="airportEndback" value="關西國際機場 (KIX)"/></c:when>
									 	<c:when test="${airportEndback == 'FUK'}">
									      <c:set var="airportEndback" value="福岡機場 (FUK)"/></c:when>
									 	<c:when test="${airportEndback == 'CTS'}">
									      <c:set var="airportEndback" value="新千歲機場 (CTS)"/></c:when>
									 	<c:when test="${airportEndback == 'NGO'}">
									      <c:set var="airportEndback" value="中部國際機場 (NGO)"/></c:when>
									 	<c:when test="${airportEndback == 'OKA'}">
									      <c:set var="airportEndback" value="那霸國際機場 (OKA)"/></c:when>
									      
									</c:choose>
									
								<c:set var="airportEnd" value="${forderBean.f_end}"/>
									<c:choose>
									 	<c:when test="${airportEnd == 'TPE'}">
									      <c:set var="airportEnd" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportEnd == 'TSA'}">
									      <c:set var="airportEnd" value="桃園國際機場 (TPE)"/></c:when>
									 	<c:when test="${airportEnd == 'HND'}">
									      <c:set var="airportEnd" value="東京羽田機場 (HND)"/></c:when>
									 	<c:when test="${airportEnd == 'NRT'}">
									      <c:set var="airportEnd" value="東京成田機場 (NRT)"/></c:when>
									 	<c:when test="${airportEnd == 'KIX'}">
									      <c:set var="airportEnd" value="關西國際機場 (KIX)"/></c:when>
									 	<c:when test="${airportEnd == 'FUK'}">
									      <c:set var="airportEnd" value="福岡機場 (FUK)"/></c:when>
									 	<c:when test="${airportEnd == 'CTS'}">
									      <c:set var="airportEnd" value="新千歲機場 (CTS)"/></c:when>
									 	<c:when test="${airportEnd == 'NGO'}">
									      <c:set var="airportEnd" value="中部國際機場 (NGO)"/></c:when>
									 	<c:when test="${airportEnd == 'OKA'}">
									      <c:set var="airportEnd" value="那霸國際機場 (OKA)"/></c:when>
									      
									</c:choose>
							<!--轉換機場代號為中文名稱結束 -->								  	
								  	
								  	  <td>
										<span>${airportStart}</span>
										&nbsp;→&nbsp;
										<span>${airportStartend}</span>
										
								  	  </td>
								  	  <td>
								  	  	<span>${forderBean.airLine_go}</span>
								  	  	<span>${forderBean.flight_numbergo}</span>
								  	  	<span class="orderDetail-cabinClass">${forderBean.f_cabin}</span>
								  	  	
								  	  </td>
								  	  <td>
								  	    <span>30公斤</span>/<span>人</span>
											  
								  	  </td>
									  </tr>
								  
								  <tr>
								  	  <td class='orderDetail-devieLine' colspan='5'>
									  	  <div class='hz-line'></div>
									  </td>
								  </tr>
										
								  
								  	  <tr>
								  	  	<td class='orderDetail-number' rowspan="1">2</td>
								  	  
								  	  <td>
								  	  	<fmt:formatDate value="${forderBean.f_backDateStart}" type="date" pattern="yyyy/MM/dd(E)"/><br>
								  	 	<fmt:formatDate value="${forderBean.f_backDateStart}" type="time" pattern="HH:mm"/> ~ 
								  		<fmt:formatDate value="${forderBean.f_backDateEnd}" type="time" pattern="HH:mm"/>
								  	  			
								  	  </td>
								  	  <td>
										<span>${airportEndback}</span>
										&nbsp;→&nbsp;
										<span>${airportEnd}</span>
										
								  	  </td>
								  	  <td>
								  	  	<span>${forderBean.airLine_back}</span>
								  	  	<span>${forderBean.flight_numberback}</span>
								  	  	<span class="orderDetail-cabinClass">${forderBean.f_cabin}</span>
								  	  	
								  	  </td>
								  	  <td>
								  	  	  	
										  	<span>30公斤</span>/<span>人</span>
										  
								  	  </td>
									  </tr>
								  
								  <tr>
								  	  <td class='orderDetail-devieLine' colspan='5'>
									  	  <div class='hz-line'></div>
									  </td>
								  </tr>
								
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<th>成行人數</th>
						 <td>
								成人票${forderBean.f_adult}人&nbsp;&nbsp;(每人${forderBean.f_priceAdult}元 + 參考稅金${forderBean.f_taxAdult}元)<br>
						 
						    <c:if test="${forderBean.f_child != 0}">
						    	孩童票${forderBean.f_child}人&nbsp;&nbsp;(每人${forderBean.f_priceChild}元 + 參考稅金${forderBean.f_taxChild}元)<br>   	
						    </c:if>
						
					 		<c:if test="${forderBean.f_baby != 0}">
						      	嬰兒票${forderBean.f_baby}人&nbsp;&nbsp;(每人${forderBean.f_priceBaby}元 + 參考稅金${forderBean.f_taxBaby}元)<br> 	
						    </c:if>
						</td>
						
					</tr>
					<tr>
						<th>應付總額</th>
						<td>
							NT$&nbsp;&nbsp;<span class='orange-dark'>${forderBean.f_total}</span>元含稅
						</td>
					</tr>
					<tr>
						
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
</div><!--訂單明細 end-->

<form action="<c:url value="/confirm.cntroller" />" method="post">

<!--  填寫旅客名單        -->     
<div class="col-sm-12 order-title">
    <div class="row">
        <i class="icon-marker indexCount"><i class="fa fa-eercast" aria-hidden="true" style="color:green;">&nbsp;</i></i>
        <h4>填寫旅客名單</h4>
        	<h6><span class="text-orange">*為必填</span>行程前確認相關事宜對象</h6>
        	
        		
		        <button style="float: right; padding-top: 10px" type="button" id="one-buttonOn" onclick="oneClick()">一鍵帶入</button>
		        
    </div>
</div>

<div class="table-line orderDetial_borderVertical">
    <div class="border-btm">
<!--  填寫旅客名單        -->        
    <div class="col-sm-11 col-sm-offset-1">

	<c:set var="adult" value="${forderBean.f_adult}"/>
	<c:if test="${adult != 0}">
		<c:forEach var="adultP" begin="1" end="${adult}"> 	
	 	
	        <div class="row form-padding">
		
            <div class="table-head pull-left">
                <h4 class="text-dark-green"><i class="icon-arrowLeft"></i>旅客&nbsp;成人<c:out value="${adultP}"/></h4>
            </div>
<!--  填寫旅客名單成人        -->
 			<table class="table-form">
                <tbody>
                    <tr>
                        <th class="required">中文姓名</th>
                        <td>
                            <input type="text" id="fchname${adultP}" name="fchname" value="${param.fchname}">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">稱 謂</th>
                        <td>
	                        <select id="fgender${adultP}" name="fgender">
								<option value="male">先生</option>
								<option value="female">女士</option>
							</select>
                        </td> 
                    </tr>
                    
                    <tr>
                        <th class="required">英文姓</th>
                        <td>
                            <input type="text" id="fenfirstname${adultP}" name="fenfirstname"  value="${param.fenfirstname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">英文名</th>
                        <td>
                            <input type="text" id="fenlastname${adultP}" name="fenlastname"  value="${param.fenlastname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">出生日期</th>
                        <td>
                            <input id="fbirth${adultP}" type="text" name="fbirth"  value="${param.fbirth}" placeholder="格式：yyyy-MM-dd">
                        </td>
                    </tr>
                    
                </tbody>
            </table>
            </div>
       	 
    </c:forEach>   
    </c:if>
    
	<c:set var="child" value="${forderBean.f_child}"/>
	<c:if test="${child != 0}">
		<c:forEach var="childP" begin="1" end="${child}"> 	
	 	
	        <div class="row form-padding">
		
            <div class="table-head pull-left">
                <h4 class="text-dark-green"><i class="icon-arrowLeft"></i>旅客&nbsp;孩童<c:out value="${childP}"/></h4>
            </div>
<!--  填寫旅客名單孩童        -->
 			<table class="table-form">
                <tbody>
                    <tr>
                        <th class="required">中文姓名</th>
                        <td>
                            <input type="text" id="cchname${childP}" name="fchname" value="${param.fchname}">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">稱 謂</th>
                        <td>
	                        <select id="cgender${childP}" name="fgender">
								<option value="male">先生</option>
								<option value="female">女士</option>
							</select>
                        </td> 
                    </tr>
                    
                    <tr>
                        <th class="required">英文姓</th>
                        <td>
                            <input type="text" id="cenfirstname${childP}" name="fenfirstname" value="${param.fenfirstname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">英文名</th>
                        <td>
                            <input type="text" id="cenlastname${childP}" name="fenlastname" value="${param.fenlastname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">出生日期</th>
                        <td>
                            <input id="cbirth${childP}" type="text" name="fbirth" value="${param.fbirth}" placeholder="格式：yyyy-MM-dd">
                        </td>
                    </tr>
                    
                </tbody>
            </table>
            </div>
       	 
    </c:forEach>   
    </c:if>
    
	<c:set var="baby" value="${forderBean.f_baby}"/>
	<c:if test="${baby != 0}">
		<c:forEach var="babyP" begin="1" end="${baby}"> 	
	 	
	        <div class="row form-padding">
		
            <div class="table-head pull-left">
                <h4 class="text-dark-green"><i class="icon-arrowLeft"></i>旅客&nbsp;嬰兒<c:out value="${babyP}"/></h4>
            </div>
<!--  填寫旅客名單嬰兒        -->
 			<table class="table-form">
                <tbody>
                    <tr>
                        <th class="required">中文姓名</th>
                        <td>
                            <input type="text" id="bchname${babyP}" name="fchname" value="${param.fchname}">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">稱 謂</th>
                        <td>
	                        <select id="bgender${babyP}" name="fgender">
								<option value="male">先生</option>
								<option value="female">女士</option>
							</select>
                        </td> 
                    </tr>
                    
                    <tr>
                        <th class="required">英文姓</th>
                        <td>
                            <input type="text" id="benfirstname${babyP}" name="fenfirstname" value="${param.fenfirstname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">英文名</th>
                        <td>
                            <input type="text" id="benlastname${babyP}" name="fenlastname" value="${param.fenlastname}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">出生日期</th>
                        <td>
                            <input id="bbirth${babyP}" type="text" name="fbirth" value="${param.fbirth}" placeholder="格式：yyyy-MM-dd">
                        </td>
                    </tr>
                    
                </tbody>
            </table>
            </div>
       	 
    </c:forEach>   
    </c:if>
    
	</div>


    </div>
</div>


<!-- 填寫旅客名單 END -->      




<!-- 填寫旅客名單 start -->  
   
<div class="col-sm-12 order-title">
    <div class="row">
        <i class="icon-marker indexCount"><i class="fa fa-eercast" aria-hidden="true" style="color:green;">&nbsp;</i></i>
        <h4>行程聯絡人</h4>
        	<h6><span class="text-orange">*為必填</span></h6>
    </div>
</div>

<div class="table-line orderDetial_borderVertical">
    <div class="border-btm">
        
    <div class="col-sm-11 col-sm-offset-1">
        <div class="row form-padding">
        		
            <div class="table-head pull-left">
                <h4 class="text-dark-green"><i class="icon-arrowLeft"></i>主要聯絡人</h4>
            </div>
<!--  聯絡人資料表單        -->
 			<table class="table-form">
                <tbody>
                    <tr>
                        <th class="required">中文姓名</th>
                        <td>
                            <input type="text" id="chnameCTT" name="chnameCTT" value="${param.chnameCTT}">
                        </td>
                    </tr>
                    
                  	<tr>
                        <th class="required">稱 謂</th>
                        <td>
	                        <select name="genderCTT" id="genderCTT">
								<option value="male">先生</option>
								<option value="female">女士</option>
							</select>
                        </td> 
                    </tr>
                    
                    <tr>
                        <th class="required">英文姓</th>
                        <td>
                            <input type="text" id="enfirstnameCTT" name="enfirstnameCTT" value="${param.enfirstnameCTT}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="required">英文名</th>
                        <td>
                            <input type="text" id="enlastnameCTT" name="enlastnameCTT" value="${param.enlastnameCTT}" style="text-transform:uppercase;">
                        </td>
                    </tr>
                             
                    <tr>
                        <th class="required">手　機</th>
                        <td>
                       		<input type="text" id="phoneCTT" name="phoneCTT" value="${param.phoneCTT}"  placeholder="格式：0933123123">
                    	</td>
                    </tr>
                    
                    <tr>
                        <th class="required">e-mail</th>
                        <td>
                            <input type="text" id="mailCTT" name="mailCTT" value="${param.mailCTT}" size="40">  
                        </td>
                    </tr>
                                        
                </tbody>
            </table>           
                   
        </div>
    </div>

        
    </div>
</div>

<!-- 傳送forderBean資料專區 -->

<input type="hidden" name="F_start" value="${forderBean.f_start}">
<input type="hidden" name="F_startend" value="${forderBean.f_startend}">
<input type="hidden" name="F_endback" value="${forderBean.f_endback}">
<input type="hidden" name="F_end" value="${forderBean.f_end}">
<input type="hidden" name="Cn_start" value="${airportStart}">
<input type="hidden" name="Cn_startend" value="${airportStartend}">
<input type="hidden" name="Cn_endback" value="${airportEndback}">
<input type="hidden" name="Cn_end" value="${airportEnd}">
<input type="hidden" name="F_goDateStart" value="<fmt:formatDate value="${forderBean.f_goDateStart}" pattern="yyyy-MM-dd HH:mm:ss"/>">
<input type="hidden" name="F_goDateEnd" value="<fmt:formatDate value="${forderBean.f_goDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>">
<input type="hidden" name="F_backDateStart" value="<fmt:formatDate value="${forderBean.f_backDateStart}" pattern="yyyy-MM-dd HH:mm:ss"/>">
<input type="hidden" name="F_backDateEnd" value="<fmt:formatDate value="${forderBean.f_backDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>">
<input type="hidden" name="F_toatalTimeGo" value="${forderBean.f_toatalTimeGo}分">
<input type="hidden" name="F_toatalTimeEnd" value="${forderBean.f_toatalTimeEnd}分">
<input type="hidden" name="AirLine_go" value="${forderBean.airLine_go}">
<input type="hidden" name="AirLine_back" value="${forderBean.airLine_back}">
<input type="hidden" name="Flight_numbergo" value="${forderBean.flight_numbergo}">
<input type="hidden" name="Flight_numberback" value="${forderBean.flight_numberback}">
<input type="hidden" name="F_cabin" value="${forderBean.f_cabin}">

<input type="hidden" name="F_adult" value="${adult}">
<input type="hidden" name="F_child" value="${child}">
<input type="hidden" name="F_baby" value="${baby}">

<input type="hidden" name="F_total" value="${forderBean.f_total}">
<input type="hidden" name="F_taxAdult" value="${forderBean.f_taxAdult}">
<input type="hidden" name="F_priceAdult" value="${forderBean.f_priceAdult}">

<input type="hidden" name="F_taxChild" value="${forderBean.f_taxChild}">
<input type="hidden" name="F_priceChild" value="${forderBean.f_priceChild}">

<input type="hidden" name="F_taxBaby" value="${forderBean.f_taxBaby}">
<input type="hidden" name="F_priceBaby" value="${forderBean.f_priceBaby}">

<input type="hidden" name="Forder_No" value="${forder_No}">
<input type="hidden" name="Booking_code" value="${booking_code}">
<input type="hidden" name="Member_Id" value="${member_Id}">


<!-- 		<input type="submit" class="order-submit" name="prodaction" value="送出訂單">	 -->



<button type="button" class="order-submit am-btn am-btn-success" name="prodaction" id="doc-prompt-toggle">送出訂單</button>

<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
  <div class="am-modal-dialog" style="width:50%">
    <div class="am-modal-hd" style="color:red;">請確認資料無誤</div>
    <div class="am-modal-bd">
    
<!--     內容區域 -->
	訂單編號:${forder_No}<br>
	
<!-- 連略人資料區 -->
	<table class="greenTable">
		<thead >
		<tr>
		<th colspan="6" style="background-color: #CCEEFF; color:red;">主要聯絡人</th>
		</tr>
		</thead>
		<thead>
		<tr>
		<th>中文姓名</th>
		<th>稱 謂</th>
		<th>英文姓</th>
		<th>英文名</th>
		<th>手　機</th>
		<th>e-mail</th>
		</tr>
		</thead>
		
		<tbody>
		<tr>
		<td><span id="chnameCTT2"></span></td>
		<td><span id="genderCTT2"></span></td>
		<td><span id="enfirstnameCTT2"></span></td>
		<td><span id="enlastnameCTT2"></span></td>
		<td><span id="phoneCTT2"></span></td>
		<td><span id="mailCTT2"></span></td>
		</tr>
		</tbody>
	</table>


	
		
		
		
		


<!-- 旅客資料區 -->

<c:set var="adult" value="${forderBean.f_adult}"/>
	<c:if test="${adult != 0}">
		<c:forEach var="adultP" begin="1" end="${adult}">

	<table class="greenTable">
		<thead >
		<tr>
		<th colspan="6" style="background-color: #CCEEFF; color:red;">旅客&nbsp;成人<c:out value="${adultP}"/></th>
		</tr>
		</thead>
		<thead>
		<tr>
		<th>中文姓名</th>
		<th>稱 謂</th>
		<th>英文姓</th>
		<th>英文名</th>
		<th>出生日期</th>
		</tr>
		</thead>
		
		<tbody>
		<tr>
		<td><span id="fchname${adultP}a"></span></td>
		<td><span id="fgender${adultP}a"></span></td>
		<td><span id="fenfirstname${adultP}a"></span></td>
		<td><span id="fenlastname${adultP}a"></span></td>
		<td><span id="fbirth${adultP}a"></span></td>
		</tr>
		</tbody>
	</table>

	</c:forEach>
</c:if>

<c:set var="child" value="${forderBean.f_child}"/>
	<c:if test="${child != 0}">
		<c:forEach var="childP" begin="1" end="${child}">

	<table class="greenTable">
		<thead >
		<tr>
		<th colspan="6" style="background-color: #CCEEFF; color:red;">旅客&nbsp;孩童<c:out value="${childP}"/></th>
		</tr>
		</thead>
		<thead>
		<tr>
		<th>中文姓名</th>
		<th>稱 謂</th>
		<th>英文姓</th>
		<th>英文名</th>
		<th>出生日期</th>
		</tr>
		</thead>
		
		<tbody>
		<tr>
		<td><span id="fchname${childP}c"></span></td>
		<td><span id="fgender${childP}c"></span></td>
		<td><span id="fenfirstname${childP}c"></span></td>
		<td><span id="fenlastname${childP}c"></span></td>
		<td><span id="fbirth${childP}c"></span></td>
		</tr>
		</tbody>
	</table>

	</c:forEach>
</c:if>

<c:set var="baby" value="${forderBean.f_baby}"/>
	<c:if test="${baby != 0}">
		<c:forEach var="babyP" begin="1" end="${baby}">

	<table class="greenTable">
		<thead >
		<tr>
		<th colspan="6" style="background-color: #CCEEFF; color:red;">旅客&nbsp;嬰兒<c:out value="${babyP}"/></th>
		</tr>
		</thead>
		<thead>
		<tr>
		<th>中文姓名</th>
		<th>稱 謂</th>
		<th>英文姓</th>
		<th>英文名</th>
		<th>出生日期</th>
		</tr>
		</thead>
		
		<tbody>
		<tr>
		<td><span id="fchname${babyP}b"></span></td>
		<td><span id="fgender${babyP}b"></span></td>
		<td><span id="fenfirstname${babyP}b"></span></td>
		<td><span id="fenlastname${babyP}b"></span></td>
		<td><span id="fbirth${babyP}b"></span></td>
		</tr>
		</tbody>
	</table>

	</c:forEach>
</c:if>
	 	





<!--     內容區域結束 -->
    
    
      
      
    </div>
    <div class="am-modal-footer">
      <span class="am-modal-btn" data-am-modal-cancel>取    消</span>
      <input type="submit" id="AmModalSP" name="prodaction" value="確    認">
      
    </div>
  </div>
</div>







								  	
		


		
		

</form>

</div><!-- container end -->



<!-- ===================訂單相關表單結束==================== -->



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
	
	
<!--====城市用=＝====================================================＝＝＝＝＝＝================================-->
<!-- ============================================選項卡1========================================================== -->	
	<script type="text/javascript">
			//点击弹出div框
			$("#zt_country").focus(function() {
				var div = document.getElementById('zt_countryTabs');
				if(div.style.display == "none") {
					div.style.display = "block";
					div.style.position = "absolute";
					div.style.zIndex = "3",
						div.style.top = document.getElementById('zt_country').style.top + 36 + "px";
					div.style.left = "224px";
				} else {
					div.style.display = "none";
				}
			});
 
			//当点击a标签以后赋值给input框
			$(".country").click(function() {
				var zt_country = $(this).data('id') +' '+ $(this).data('code');
				$("#zt_country").val(zt_country);
				var div = document.getElementById('zt_countryTabs');
				div.style.display = "none";
				$("#zt_country").blur();
				//赋值给全局变量
				consigneeCountry = zt_country;
				//每次选择都清空input的值
				$("#transport").val("");
			});
 
			//失去焦点时间，隔100毫秒执行，不然失去焦点会把上面的点击事件覆盖掉，导致赋值不上去
			$("#zt_country").blur(function() {
				setTimeout(function() {
					var div = document.getElementById('zt_countryTabs');
					div.style.display = "none";
				}, 100);
			});
			$(".zt_li").mousedown(function(event) {
				event.preventDefault();
			})
		</script>
		
		
<!-- ============================================選項卡2==========================================================	 -->

<script type="text/javascript">
			//点击弹出div框
			$("#zt_country02").focus(function() {
				var div = document.getElementById('zt_countryTabs02');
				if(div.style.display == "none") {
					div.style.display = "block";
					div.style.position = "absolute";
					div.style.zIndex = "3",
						div.style.top = document.getElementById('zt_country02').style.top + 36 + "px";
					div.style.left = "224px";
				} else {
					div.style.display = "none";
				}
			});
 
			//当点击a标签以后赋值给input框
			$(".country02").click(function() {
				var zt_country02 = $(this).data('id') +' '+ $(this).data('code');
				$("#zt_country02").val(zt_country02);
				var div = document.getElementById('zt_countryTabs02');
				div.style.display = "none";
				$("#zt_country02").blur();
				//赋值给全局变量
				consigneeCountry = zt_country02;
				//每次选择都清空input的值
				$("#transport").val("");
			});
 
			//失去焦点时间，隔100毫秒执行，不然失去焦点会把上面的点击事件覆盖掉，导致赋值不上去
			$("#zt_country02").blur(function() {
				setTimeout(function() {
					var div = document.getElementById('zt_countryTabs02');
					div.style.display = "none";
				}, 100);
			});
			$(".zt_li02").mousedown(function(event02) {
				event02.preventDefault();
			})
</script>




<!-- 輸入欄變色 -->
<script type="text/javascript">
			$("input[name='zt_country']").focus(function(){
				$("input[name='zt_country']").css("background-color","#FFFFBB");
			});
			$("input[name='zt_country']").blur(function(){
				$("input[name='zt_country']").css("background-color","#FFFFFF");
			});
			 
			$("input[name='zt_country02']").focus(function(){
				$("input[name='zt_country02']").css("background-color","#FFFFBB");
			});
			$("input[name='zt_country02']").blur(function(){
				$("input[name='zt_country02']").css("background-color","#FFFFFF");
			});
			
			$("input[name='godate']").focus(function(){
				$("input[name='godate']").css("background-color","#FFFFBB");
			});
			$("input[name='godate']").blur(function(){
				$("input[name='godate']").css("background-color","#FFFFFF");
			});
			
			$("input[name='backdate']").focus(function(){
				$("input[name='backdate']").css("background-color","#FFFFBB");
			});
			$("input[name='backdate']").blur(function(){
				$("input[name='backdate']").css("background-color","#FFFFFF");
			});
			
			$("select[name='people']").focus(function(){
				$("select[name='people']").css("background-color","#FFFFBB");
			});
			$("select[name='people']").blur(function(){
				$("select[name='people']").css("background-color","#FFFFFF");
			});

</script>

<!-- 訂單表單相關方法 -->
<script src="../js/amazeui.min.js"></script>


<script type="text/javascript">
$(function() {
	  $('#doc-prompt-toggle').on('click', function() {
	    $('#my-prompt').modal({
	      relatedTarget: this,
	    
	      
	    });
	  });
	});


</script>

<script>
    
  $("#doc-prompt-toggle").on("click",function(){
	  
// 	  聯絡人資料區域
	  $('#chnameCTT2').text($('#chnameCTT').val());
	  $('#genderCTT2').text($('#genderCTT').val());
	  $('#enfirstnameCTT2').text($('#enfirstnameCTT').val());
	  $('#enlastnameCTT2').text($('#enlastnameCTT').val());
	  $('#phoneCTT2').text($('#phoneCTT').val());
	  $('#mailCTT2').text($('#mailCTT').val());
	  
	 	 
// 	  旅客名單區域	  
	  $('#fchname1a').text($('#fchname1').val());
	  $('#fgender1a').text($('#fgender1').val());
	  $('#fenfirstname1a').text($('#fenfirstname1').val());
	  $('#fenlastname1a').text($('#fenlastname1').val());
	  $('#fbirth1a').text($('#fbirth1').val());
	 
	  $('#fchname2a').text($('#fchname2').val());
	  $('#fgender2a').text($('#fgender2').val());
	  $('#fenfirstname2a').text($('#fenfirstname2').val());
	  $('#fenlastname2a').text($('#fenlastname2').val());
	  $('#fbirth2a').text($('#fbirth2').val());
	 
	  $('#fchname1c').text($('#cchname1').val());
	  $('#fgender1c').text($('#cgender1').val());
	  $('#fenfirstname1c').text($('#cenfirstname1').val());
	  $('#fenlastname1c').text($('#cenlastname1').val());
	  $('#fbirth1c').text($('#cbirth1').val());
	 
	  $('#fchname1b').text($('#bchname1').val());
	  $('#fgender1b').text($('#bgender1').val());
	  $('#fenfirstname1b').text($('#benfirstname1').val());
	  $('#fenlastname1b').text($('#benlastname1').val());
	  $('#fbirth1b').text($('#bbirth1').val());
	 
  })
    
</script>

<script>
// 一鍵帶入用
    function oneClick(){
// 旅客名單區域	  	
    	$("input[id='fchname1']").val('林小明');
		$("select[id='fgender1']").val('male');
		$("input[id='fenfirstname1']").val('LIN');
		$("input[id='fenlastname1']").val('XIAO-MING');
		$("input[id='fbirth1']").val('1990-01-01');
		
    	$("input[id='fchname2']").val('陳小美');
		$("select[id='fgender2']").val('female');
		$("input[id='fenfirstname2']").val('CHEN');
		$("input[id='fenlastname2']").val('XIAO-MEI');
		$("input[id='fbirth2']").val('1991-02-02');
		
    	$("input[id='cchname1']").val('林阿明');
		$("select[id='cgender1']").val('male');
		$("input[id='cenfirstname1']").val('LIN');
		$("input[id='cenlastname1']").val('A-MING');
		$("input[id='cbirth1']").val('2014-04-04');
		
    	$("input[id='bchname1']").val('林明美');
		$("select[id='bgender1']").val('female');
		$("input[id='benfirstname1']").val('LIN');
		$("input[id='benlastname1']").val('MING-MEI');
		$("input[id='bbirth1']").val('2018-03-03');
		
//聯絡人資料
		$("input[id='chnameCTT']").val('林小明');
		$("select[id='genderCTT']").val('male');
		$("input[id='enfirstnameCTT']").val('LIN');
		$("input[id='enlastnameCTT']").val('XIAO-MING');
		$("input[id='fbirth1']").val('1990-01-01');
		$("input[id='phoneCTT']").val('0940499499');
		$("input[id='mailCTT']").val('LINLIN@Amail.com');
		
    }
    
</script>
	
<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>