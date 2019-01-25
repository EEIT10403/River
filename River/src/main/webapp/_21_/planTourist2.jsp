<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>行程規劃♥</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css" >
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<!--===============================================================================================-->
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
<!--======CSS資料夾==============================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link type="text/css" rel="stylesheet" href="../css/Tstyle.css" />
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="../css/jquery-ui.css" />
<!--===============================================================================================-->


<!--===============================================================================================-->


<style type="text/css">
input, textarea ,.titiledate{
	background-color: #E6CFE6;
	border-radius: 10px;
	padding-left: 20px;
	margin-top: 5px;
}
 #map1 {
 border:solid 5px gray;
        height: 650px;
        width: 95%;
        margin-left:35px;
      }

#map {
	height: 300px;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
	border: double 5px #009FCC;
}

.item-slick1 {
padding-bottom;
	height: 350px;
}
.btn  {
margin-right:15px;
width:100px;
height:40px
}
.badge-pill{
width:100%;
height:50px;
font-size:25px;
text-align:center;
line-height:43px;
background-color:#E8CCFF;
}

.icon-maker{
background-image:url('../images/icons/placeholder/placeholder1.png');
background-repeat:no-repeat;
background-size:contain;
height:50px;
width:50px;
text-align:center;
padding-top: 5px;
font-size: 20px;
margin: 5px 0px;
}
.icon-maker-default{
background-image:url('../images/icons/placeholder/placeholder-default.png');
background-repeat:no-repeat;
background-size:contain;
height:50px;
width:50px;
text-align:center;
padding-top: 5px;
font-size: 20px;
margin: 5px 0px;
}
#TAtext{
scrollbar-face-color:#00ffff;
 overflow-y: auto;
 overflow-x: hidden;
 width:100%;
 height: 90%;
	
}
#TAtext .btn{
text-align:center;
    margin: 5px ;
    width: 90%;
    height:50px;
background-color:	#5599FF;

}
.col-sm-2{
margin-top:15px ;
margin-bottom:15px ;
}
.col-sm-9{
background-color:	#77FFEE;
border-radius:15px;
margin-top:15px ;
margin-bottom:15px ;
margin-left:15px ;
OVERFLOW: HIDDEN;


}
.col-sm-9 h3{
font-size:25px;
margin-top:5px;
margin-bottom:5px;

}
.TLarea{
text-align:right;
padding-right: 5px;
}
.oneTA{
white-space:nowrap;
text-overflow: ellipsis;
}
.justify-content-center{
font-family: 'Noto Serif TC', serif;
height:50px;
font-size: 25px;
font-weight:600;
margin: 25px 0;
}
.ttitile{
line-height: 50px;
}
.xxx{
	position : absolute;
	top : 0px;
	right : 0px;
	width : 20px;
	height : 20px;
/* 	background-color:white; */
}
.dropdown-item{
text-align:center;


}

</style>

</head>
<body class="animsition">

	<div class="container-fluid"  style='width:100%' >
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
									href="<c:url value='/index18.jsp'/>">Home</a></li>

								<li><a href="product.html">Shop</a></li>

								<li class="label1"><a
									href="<c:url value="/WebIndex18/flight18.jsp" />">航班查詢</a></li>

								<li><a href="blog.html">Blog</a></li>

								<li><a href="about.html">About</a></li>

								<li><a href="contact.html"></a></li>
							</ul>
						</div>

						<!-- Icon header -->
						<div class="wrap-icon-header flex-w flex-r-m">
							<!-- 							<div -->
							<!-- 								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"> -->
							<!-- 								<i class="zmdi zmdi-search"></i> -->
							<!-- 							</div> -->

							<!-- 							<div -->
							<!-- 								class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" -->
							<!-- 								data-notify="2"> -->
							<!-- 								<i class="zmdi zmdi-shopping-cart"></i> -->
							<!-- 							</div> -->

							<!-- 							<a href="#" -->
							<!-- 								class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" -->
							<!-- 								data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i> -->
							<!-- 							</a> -->

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
				<!-- 				<div class="wrap-icon-header flex-w flex-r-m m-r-15"> -->
				<!-- 					<div -->
				<!-- 						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search"> -->
				<!-- 						<i class="zmdi zmdi-search"></i> -->
				<!-- 					</div> -->

				<!-- 					<div -->
				<!-- 						class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" -->
				<!-- 						data-notify="2"> -->
				<!-- 						<i class="zmdi zmdi-shopping-cart"></i> -->
				<!-- 					</div> -->

				<!-- 					<a href="#" -->
				<!-- 						class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" -->
				<!-- 						data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i> -->
				<!-- 					</a> -->
				<!-- 				</div> -->

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

		</header>
		<!-- Cart -->

		<!-- Slider -->
		<section class="section-slide">
			<div class="wrap-slick1">
				<div class="slick1">
					<div class="item-slick1"
						style="background-image: url(../images/slide-11.jpg);">
						<div class="container h-full">
							<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInDown" data-delay="0">
									<span class="ltext-101 cl2 respon2"> 景點搜尋 </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="fadeInUp" data-delay="800">
									<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">River
										Tourist</h2>
								</div>


							</div>
						</div>
					</div>

					<div class="item-slick1"
						style="background-image: url(../images/slide-12.jpg);">
						<div class="container h-full">
							<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="rollIn" data-delay="0">
									<span class="ltext-101 cl2 respon2">Wish You Have A
										Pleasant Journey </span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="lightSpeedIn" data-delay="800">
									<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Fantastic
										Tourist</h2>
								</div>


							</div>
						</div>
					</div>

					<div class="item-slick1"
						style="background-image: url(../images/slide-13.jpg);">
						<div class="container h-full">
							<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
								<div class="layer-slick1 animated visible-false"
									data-appear="rotateInDownLeft" data-delay="0">
									<span class="ltext-101 cl2 respon2"> River Tourist 2019
									</span>
								</div>

								<div class="layer-slick1 animated visible-false"
									data-appear="rotateInUpRight" data-delay="800">
									<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">New
										arrivals</h2>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- Banner -->



		<!-- Product -->
	</div>
			<div class="d-flex justify-content-center " id="tititle">

	
				<button class="ltext-101 cl0 size-101 bg1 bor2 hov-btn1 m-lr-50 m-t-15 trans-02" id="goshowtibtn"  style="float:right;padding:0"><i class="zmdi zmdi-check"></i>規劃完成</button>

				<span class="ltext-201 cl2  p-b-43">${tibean.t_name}</span>
				
			
				<button class="ltext-101 cl0 size-101 bg1 bor2 hov-btn1 m-lr-50 m-t-15 trans-02"   style="float:right"><i class="zmdi zmdi-edit"></i>修改內容</button>
				<form action="showTI" method="post" class="tiid" hidden='true'>
				<input type="text" name="id" value="${tibean.id}">
				
				</form>
			 </div>
		<div class="d-flex justify-content-center ttitile">
		
		
	

<fmt:formatDate var="firstday" value="${tibean.firstday}" pattern="yyyy-MM-dd " ></fmt:formatDate>
<fmt:formatDate var="lastday" value="${tibean.lastday}" pattern="yyyy-MM-dd " ></fmt:formatDate>
		
			<label for="from">起始日</label>
			<span class="titiledate" style="width:155px" id="from" >${firstday}</span>
			<label for="to">結束日</label>
			<span class="titiledate" style="width:155px" id="to" >${lastday}</span>
			<label for="to">共計</label>
			<input type="text" id="tday" style="width:100px" name="tday" value="${tibean.touristday}" readonly="readonly">
			<label for="to">日</label>
 		</div>


	<div class="container">
		<div class="row">
			<div class="col-sm-4">
					<ul class="nav nav-pills">
					  <li class="nav-item">
					    <a class="nav-link active" data-toggle="tab"  href="#allTA">行程總覽</a>
					  </li>
					  <li class="nav-item dropdown">
					    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">每日行程</a>
					    <div class="dropdown-menu">
					      <a class="dropdown-item font-weight-bold" data-toggle="tab" href="#day1">第一天</a>
					    
					    </div>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#allTAmap">地圖總覽</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" data-toggle="tab" href="#TAmap">單日地圖</a>
					  </li>
					</ul>
	    
  <!-- 導覽列的位置唷唷唷 -->      
    <div class="tab-content" id="TAtext">
        <div id="allTA" class="tab-pane fade in active">
            <h3>行程總覽</h3>
  
  <!-- 依天數產生標籤 -->
  
  <c:forEach var='day' begin='1' end='${tibean.touristday}'>
  <c:out escapeXml="false" value="<span  class='badge badge-pill badge-secondary' >"></c:out>
  <c:out escapeXml="false" value="第${day}天</span><div class='draggableti' id='day${day}'>"></c:out>
  <c:out escapeXml="false" value=' <div class="row oneTA nodrag"> <div class="col-sm-2" ><div class="icon-maker-default"></div></div><div class="col-sm-9" style="background-color:white;border:gray 1px solid"><h3 style="text-align:center;line-height:50px"> <img alt="" src="../images/icons/placeholder/add.png"></h3></div></div></div>'></c:out>
  </c:forEach>
  
  
 
 


  
  
  
  
  
  
  
  
   
    
  </div>
    
  

           
     
        <div id="allTAmap" class="tab-pane fade">
            <h3>地圖行程總覽</h3>
            <p>Some content in menu 1.</p>
        </div>
        <div id="TAmap" class="tab-pane fade">
            <h3>單日地圖行程</h3>
            <p>Some content in menu 2.</p>
        </div>
        <div id="day1" class="tab-pane fade">
            <h3>第一天</h3>
            <p>Some content in menu 2.</p>
        </div>
    </div>
			
			
			
			
			</div>
			<div class="col-sm-8" >
				<ul   class="nav nav-pills"  >
					  <li class="nav-item">
					    <a class="nav-link active" data-toggle="tab"  href="#newoneta">新增景點</a>
					  </li>
					  <li class="nav-item" id="findtabar">
					    <a class="nav-link" data-toggle="tab" href="#searchta">搜尋景點</a>
					  </li>
				</ul>
				
		<div class="tab-content" >
        <div id="newoneta" class="tab-pane fade in active">
            <h3>新增景點</h3>			
				<div class="row">
					<div class="col-md-6">
						<section class="bg0 p-t-23 p-b-140">
							<div class="row">
								<div class="col-md-12">

									<!-- Form -->

									<form  id="insertTAform"  action='<c:url value='/insertta'/>' method='post'
										role="form" enctype='multipart/form-data'>
										<!--欄位  -->
										<div class="form-group">

											<label for="exampleInputEmail1"> 城市/區域: </label> <input
												id='touristarea' class="mtext-107 cl2 size-114 plh2 p-r-15"
												name='touristarea' type='text' placeholder='國家/城市'>
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1"> 景點/地址: </label> <input
												id='pacinput' name='address'
												class="mtext-107 cl2 size-114 plh2 p-r-15" type='text'
												placeholder='景點搜尋'>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1"> 經度/緯度: </label>

											
												<div class="row">
													<div class="col-md-6">
														<input id='lat' name='lat' type='text'
															class="mtext-107 cl2 size-114 plh2 p-r-15"
															style="height:32px"
															readonly="readonly" placeholder='緯度'>
													</div>
													<div class="col-md-6">
														<input id='lng' name='lng' type='text'
															class="mtext-107 cl2 size-114 plh2 p-r-15"
															style="height:32px"
															readonly="readonly" placeholder='經度'>
													</div>
												</div>
											

										</div>
										<div class="form-group ">
											<label for="exampleInputEmail1"> 景點概述 : </label>
											<textarea  id='summary' placeholder='景點簡介/營業時間' 
												class="mtext-107 cl2 size-114 plh2 p-r-15"
												style="resize: none; height: 100px;padding-top:15px" name='summary'></textarea>
										</div>

										<div class="form-group" >
											<label for="exampleInputFile"> 圖片上傳: </label>
											
											 <input
												type='file' id='imageinput'  style="text-align:center;height:32px" name="img"
												class="mtext-107 cl2 size-114 plh2 p-r-15 "
												accept='image/gif, image/jpeg, image/png' />
											
										</div>

                                           <div class="d-flex justify-content-center" style="line-height:50px">
                                           	新增到:<select class="fortaday" style="margin:0 20px ">
                                             
                                           <c:forEach var="i" begin='1' end='${tibean.touristday}' >
                                            <c:out value="<option value='${i}' >第${i}天</option>" escapeXml='false'></c:out>
                                           </c:forEach>
                                           </select>
										<button id="addnewTA" type="button" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1  trans-04" style="width:100px;margin-right:50px">新增景點</button>
                                           </div>
									</form>
								</div>
							</div>
						
						</section>
					</div>
					<div class="col-md-6">
						<div id='map'></div>
						<img id='preview_progressbarTW_img' src='../images/preview.jpg' alt='預覽圖片'
							width='100%' height='300px' style="border: double 5px #009FCC" />
					</div>
				</div>
   		</div>
   		
   		
        <div id="searchta" class="tab-pane fade">
            <h3>搜尋景點</h3>
  

			<!-- 切割網頁-->
			
				<div>
					<form id="searchAT" action="<c:url value='/searchta' />"
						method="get">
					 <div class="row">
						 <div class="col-md-6">
							區域:<input id="touristarea"
								class="mtext-107 cl2 size-114 plh2 p-r-15" name="touristarea"
								type="text" placeholder="國家/城市" /><br /> 
							</div>
							<div class="col-md-6">
							
							景點:<input id="address" class="mtext-107 cl2 size-114 plh2 p-r-15"
								name="address" type="text" placeholder="地名/地址" /><br/>
							<input id='searchbtn' type="button" style="float:right;margin-right:50px;margin-bottom:50px"  class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" value="搜尋">
						   </div>
				 	     </div>
					 </form>
				</div>

				<div  id='pdiv' >

					
				</div>

			

			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="#"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					Load More </a>
			</div>
		</div>







        </div>
  
    </div>
			
			
			</div>
		</div>










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

					<p class="stext-107 cl7 size-201">Any questions? Let us know in
						store at 8th floor, 379 Hudson St, New York, NY 10018 or call us
						on (+1) 96 716 6879</p>

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
					<script>
						document.write(new Date().getFullYear());
					</script>
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

	
<!-- Modal1 -->
	<div id ="modal1" class="wrap-modal1 js-modal1 p-t-60 p-b-20 ">
	
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img  src="../images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
				
				<!-- 地圖區塊-->
				<div  class="col-md-6 col-lg-7 p-b-30">  
						<div id="map1">
						</div>
					</div>
	
				
				<!-- 圖片區塊 -->
					<div class="col-md-6 col-lg-5 p-b-30">  
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								

								<div class="slick3 gallery-lb" style="width:100% ;">
									<div class="item-slick3" data-thumb="../images/TAimages/TA1.jpg" >
										<div class="wrap-pic-w pos-relative" >
											<img name="imgmodal" src="../images/TAimages/TA1.jpg" alt="IMG-PRODUCT"style=" width:100%" >

											<a  class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="../images/TAimages/TA1.jpg">
												<i class="fa fa-expand" ></i>
											</a>
										</div>
									</div>
								</div>
						<div class=" p-t-5 p-lr-0-lg" style="width:100%" >
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!-- 選單與Add to cart-->
<!-- 							<div class="p-t-33">   -->
<!-- 								<div class="flex-w flex-r-m p-b-10"> -->
<!-- 									<div class="size-203 flex-c-m respon6"> -->
<!-- 										Size -->
<!-- 									</div> -->
<!-- 									<div class="size-204 respon6-next"> -->
<!-- 										<div class="rs1-select2 bor8 bg0"> -->
<!-- 											<select class="js-select2" name="time"> -->
<!-- 												<option>Choose an option</option> -->
<!-- 												<option>Size S</option> -->
<!-- 												<option>Size M</option> -->
<!-- 												<option>Size L</option> -->
<!-- 												<option>Size XL</option> -->
<!-- 											</select> -->
<!-- 											<div class="dropDownSelect2"></div> -->
<!-- 										</div> -->
<!-- 									</div> -->	
<!-- 								</div> -->

								<div class="flex-w flex-r-m p-b-10">
<!-- 									<div class="size-204 flex-w flex-m respon6-next"> -->
<!-- 										<div class="wrap-num-product flex-w m-r-20 m-tb-10">										 -->
<!-- 										</div> -->
<!-- 										<button style="float:" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"> -->
<!-- 											加入收藏 -->
<!-- 										</button> -->
<!-- 									</div> -->

        							<div class="d-flex justify-content-center">
										<button style="float:" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											加入收藏
										</button>
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

	




	



	<!--===============================================================================================-->
	<script src="../js/jquery-3.3.1.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script>
		$("#searchbtn").click(function() {				
							
				var ts = $("#touristarea").val()
				var addr = $("#address").val()

				
				$.post("searchta",{"touristarea":ts,"address":addr},function(taList){

					var txt1 ="<div class='row isotope-grid' id='isotope-grid'></div>"
					$('#isotope-grid').empty();
					
					
                              
					var json = $.parseJSON(taList)
					
					var txt =""
					json.forEach(function(TA){		
						txt += '<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item" name="fromsearch" "><div class="block2"><div class="block2-pic hov-img0">'						
			            txt += '<img name="TAimage" src="${pageContext.servletContext.contextPath}/getTAImage?id='+TA.id+'" alt="IMG-PRODUCT">'		
						txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">Quick View </a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
						txt +=TA.address
						txt += '</a> <span class="stext-105 cl3">'+TA.touristarea+'</span><div  class="TAlng" hidden="true">'+TA.lng+'</div><div  class="TAlat" hidden="true">'+TA.lat+'</div><div  class="summary" hidden="true">'+TA.summary+'</div></div><div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04"	src="../images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'	

					})
	       		
			       		$('#isotope-grid').append(txt)	
			       		$( '#isotope-grid' ).sortable( "refresh" );
					
					})
				

			})
	</script>














	<!-- 	googleMap  -->
	<script
		src='https://maps.googleapis.com/maps/api/js?key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y&libraries=places&callback=initAutocomplete'
		async defer></script>


	<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/slick/slick.min.js"></script>
	<script src="../js/slick-custom.js"></script>
	<!--===============================================================================================-->
  <script type="text/javascript">
  
	$("#pdiv").on("click ", ".js-addwish-b2", function(e) {
		e.preventDefault();
	});

$("#pdiv").on("click", ".js-addwish-b2", function() {
	var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
	swal(nameProduct, "is added to wishlist !", "success");
	$(this).removeClass("js-addwish-b2")
	$(this).addClass('js-addedwish-b2');
	
});
  
  
  
  
  
  
	//新增景點
	//新增景點
	//新增景點
	//新增景點
	$("#addnewTA").click(function(){

	$.ajax({
	    url: 'insertta',
	    type: 'POST',
	    cache: false,
	    data: new FormData($('#insertTAform')[0]),
	    processData: false,
	    contentType: false
	}).done(function(res) {
		var TAresult = $.parseJSON(res)
		var day="#day"+$(".fortaday").val()
		
	
		var txt=""
		 txt+='<div class="row oneTA countta"><div class="col-sm-2"><div class="icon-maker"></div></div><div class="col-sm-9"><h3>'
		 txt+= TAresult.address
		 txt+= '</h3><i class="fas fa-times-circle xxx" hidden="true"></i><div class="TLarea">'
		 txt+= TAresult.touristarea
		 txt+='</div><div class="TAid" hidden="true">'+TAresult.id+'</div>'				
		 txt+='<div  class="TAlng" hidden="true">'+TAresult.lng+'</div>'
		 txt+='<div  class="TAlat" hidden="true">'+TAresult.lat+'</div>'
		 txt+='<div  class="summary" hidden="true">'+TAresult.summary+'</div></div></div>'		
		
		 $(day).append(txt);
        
		 
		 
		 
		//刪除原有展示標籤
  		if($(day).find(".nodrag")){
  			$(day).find(".nodrag").remove()
  		}
		 
  		//重新計算行程順序 
  		var num = 1;			
  		$(".countta").each(function(){
  			$(this).find(".icon-maker").html(num++)

  		})
		
		
		

		
		 //初始化form和圖片
		$('#insertTAform')[0].reset();
		$("#preview_progressbarTW_img").attr("src","../images/preview.jpg")
		

		//更新TIBean
		updateti()
	}).fail(function(res) {});

})
     
       function changeTI(){
    	   
	
	 
         
  		
	
    	   
    	   
    	   
       }
       
       


       </script>
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
	<script>
		//預覽圖片
		$('#imageinput').change(function() {
			readURL(this);
		});

		function readURL(input) {

			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#preview_progressbarTW_img')
							.attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}

		}
		function initAutocomplete() {
			var map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : 25.0329694,
					lng : 121.5654177
				},
				zoom : 13,
				mapTypeId : 'roadmap',

				fullscreenControl : false,
				mapTypeControl : false,
				streetViewControl : false,

			});

			// Create the search box and link it to the UI element.
			var input = document.getElementById('pacinput');
			var searchBox = new google.maps.places.SearchBox(input);

			// Bias the SearchBox results towards current map's viewport.
			map.addListener('bounds_changed', function() {

				searchBox.setBounds(map.getBounds());

			});

			var markers = [];
			// Listen for the event fired when the user selects a prediction and retrieve
			// more details for that place.

			searchBox.addListener('places_changed', function() {

				
				
				
				
				//位置變換時取得經緯度

				var pacinputv = $("#pacinput").val()
				$.get('LoadTALatLng', {
					"address" : pacinputv
				}, function(taLatLng) {
					var location = $.parseJSON(taLatLng);
					$('#lat').val(location.lat)
					$('#lng').val(location.lng)

				})

				var places = searchBox.getPlaces();

				if (places.length == 0) {
					return;
				}

				// Clear out the old markers.
				markers.forEach(function(marker) {
					marker.setMap(null);
				});
				markers = [];

				// For each place, get the icon, name and location.
				var bounds = new google.maps.LatLngBounds();

				places.forEach(function(place) {
					if (!place.geometry) {
						console.log('Returned place contains no geometry');
						return;
					}
					var icon = {
						url : place.icon,
						size : new google.maps.Size(71, 71),
						origin : new google.maps.Point(0, 0),
						anchor : new google.maps.Point(17, 34),
						scaledSize : new google.maps.Size(25, 25)
					};

					// Create a marker for each place.
					markers.push(new google.maps.Marker({
						map : map,
// 						icon : icon,
						title : place.name,
						position : place.geometry.location
					}));

					if (place.geometry.viewport) {
						// Only geocodes have viewport.
						bounds.union(place.geometry.viewport);
					} else {
						bounds.extend(place.geometry.location);
					}
				});
				map.fitBounds(bounds);
			});
		}
	</script>
	<!--===============================================================================================-->
	
	
  
       <script>    
// Initialize and add the map
var uluru = {lat: -25.344, lng: 131.036};
function initMap() {
  // The location of Uluru
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map1'), {zoom:7, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
$("#pdiv").on("click",".isotope-item",function(){
	
	
	//取得資訊
	var titile= $(this).find(".stext-104").html();
	var touristarea= $(this).find(".stext-105").html();
	var summary = $(this).find(".summary").html();

	$("#modal1").find(".mtext-105").html(titile)
	$("#modal1").find(".mtext-106").html(touristarea)
	$("#modal1").find(".stext-102").html(summary)
	//取得經緯度 輸入地圖
	var TAlng =Number($(this).find(".TAlng").html());
	var TAlat =Number($(this).find(".TAlat").html());

	var TAlatlng1 ={lat:TAlat ,lng:TAlng}
    var map = new google.maps.Map(document.getElementById('map1'), {
        zoom: 10,
        center:TAlatlng1
      });
	 var marker = new google.maps.Marker({position: TAlatlng1, map: map});
    //取得圖片路徑 並放入 modal   
	var TAsrc = $(this).find("img[name='TAimage']").attr("src");
	var TAsrc2=$("#modal1").find("img[name='imgmodal']").attr("src",TAsrc)
	$("#modal1").find(".wrap-pic-w").find("a").attr("href",TAsrc)
})
	

     //讓modal正常做動
	    $('#pdiv').on('click','.js-show-modal1',function(e){
		    	$('.js-modal1').addClass('show-modal1');
		        e.preventDefault();
		    });

		    $('#modal1').on('click','.js-hide-modal1',function(){
		        $('.js-modal1').removeClass('show-modal1');
		    });
	
		    
		    
		    
		</script>  
		
		<!-- ONReady --> 
		<script>   
		    
		    
		    
		   //第一次查詢讀取
		    $(document).ready(function(){

		    	var txt1="<div class='row isotope-grid' id='isotope-grid'></div>"
		    	$("#pdiv").empty();
		    	$("#pdiv").append(txt1)
		    	
		    	var txt=""
		    	$.get("firstselect",function(result){
		    	
		    	  	var taresult =$.parseJSON(result)
// 		    		txt +="<div class='row isotope-grid' id='isotope-grid'>"
		    	  	taresult.forEach(function(TA){
		    	  		console.log(TA)
								txt += '<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item " name="fromsearch"><div class="block2"><div class="block2-pic hov-img0">'						
					            txt += '<img name="TAimage" src="${pageContext.servletContext.contextPath}/getTAImage?id='+TA.id+'" alt="IMG-PRODUCT">'		
								txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">Quick View </a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
								txt +=TA.address
								txt += '</a> <span class="stext-105 cl3">'+TA.touristarea+'</span><div  class="TAlng" hidden="true">'+TA.lng+'</div><div  class="TAlat" hidden="true">'+TA.lat+'</div><div  class="summary" hidden="true">'+TA.summary+'</div></div><div class="block2-txt-child2 flex-r p-t-3"><a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><img class="icon-heart1 dis-block trans-04"	src="../images/icons/icon-heart-01.png" alt="ICON"><img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/icons/icon-heart-02.png" alt="ICON"></a></div></div></div></div>'	
		    	  	     })
// 		    	    txt+= '</div>'
			    		
			    })
	
		  		    $("#findtabar").one("click",function(e){
		  		        $("#isotope-grid").append(txt)
		  		    	
		  		        draggable_searchTA();
		  		    })
		    	  
		  		  draggableTA(); 
		    	
   	    	      //mouseover，出現XX
		    	$("#allTA").on("mouseover",".oneTA",function(){

		    		$(this).find(".xxx").removeAttr("hidden")

		    	})
		    	//mouseout，xx消失
		    	$("#allTA").on("mouseout",".oneTA",function(){

		    		$(this).find(".xxx").prop("hidden",true)

		    	})
		    	$("#allTA").on("click",".xxx",function(){
                      var oneta=$(this).parent().parent()
                      var onedraggable=$(this).parent().parent().parent()
		    		oneta.remove()
		    		updateti()
		    		
		    	    //沒有任何景點時,增加空白行程
		    	    console.log(oneta.attr("class"))
		    	    console.log(onedraggable.attr("class"))
			  		if(onedraggable.find(".oneTA").length===0){
			  			onedraggable.append('<div class="row oneTA nodrag"> <div class="col-sm-2" ><div class="icon-maker-default"></div></div><div class="col-sm-9" style="background-color:white;border:gray 1px solid"><h3 style="text-align:center;line-height:50px"> <img alt="" src="../images/icons/placeholder/add.png"></h3></div></div></div>')
			  		}

		    	})
		    		
		    		
		    		
		    		
		    	
		    	$("#goshowtibtn").on("click",function(){
		    		updateti();
		    		
		    		$(".tiid").submit();
		    		
		    		
		    	})
		    	
		    	
		    	$(".draggableti").on("click",".dropdown-item",function(){
		    		var iclass =$(this).find("i").attr("class")+"fa-3x"
		    		var ihtml=$(this).find("i").html()
// 		    		alert(ihtml)
		    		$(this).parent().parent().find(".btn i").attr("class",iclass)
		    	    $(this).parent().parent().find(".btn").attr("name",ihtml)
		    	    
		    	  
		    	    var dayti=[]
		    	    $(this).parents(".draggableti").find(".countta").each(function(){
					 
						//取得景點名稱
						var taname= $(this).find("h3").html()
						dayti.push(taname)
						})
						console.log(dayti)
	
						//取得旅遊模式
						var mode=[]
						$(this).parents(".draggableti").find(".dropdown").each(function(){
							
							var modename=$(this).find("button").attr('name')
							mode.push(modename)
						})
							console.log(mode)
						
			       var thisfake=$(this).parents(".draggableti").find(".dropdown")
							
				$.ajax({
			        url: "getdad",                   
			        type: 'POST',                   
			        traditional: true,             
			        data: {"ti":dayti,"mode":mode}, 
			        cache: false, 
			        async: true,
			        success: function (res) { 
// 			        	console.log("66666")
// 			        	console.log(thisfake)
			        	var answer = $.parseJSON(res)
			        	
			        	
// 			        		console.log(thisfake)
			        		var x=0;
			        	thisfake.each(function(res){
			        	
			        		var ansparse =$.parseJSON(answer[x])
			        		x++;
// 			        		console.log(ansparse.duration/60)
			        		var time='';
			        		if(ansparse.duration/(60*60)>1){
			        			var hr = Math.floor(ansparse.duration/(60*60))
			        			var min =Math.round((ansparse.duration/60)%60);
			        			
// 			        			console.log("hr="+hr);
// 			        			console.log("min="+min);
			        			time= hr+"時"+min+"分鐘"
			        			
			        		}else{
			        			
			        			var min =Math.round(ansparse.duration/60);
// 			        			console.log("min="+min);
			        			time= min+"分鐘";
			        		}
			        		    		
			        		$(this).find(".duration").html(time)

			        		
			        		var path=""
			        		if((ansparse.distance/1000)>1){
			        			
			        			path =  Math.floor(ansparse.distance/1000) +"公里"
			        		}else{
			        			
			        			path = (ansparse.distance%1000)+"公尺"
			        		}
			        		
			        		
			        		$(this).find(".distance").html(path)
			        		
			        		
			        	   })     	
			           }
	
		    	})

		    	
		    })
		    	
		    	
		    	
		    	
		    	
		    	
		    	
		    	
		    })
		  		    
		       //更新 function()
		   function updateti(){
		    	
			   
			   //計算每天行程的數量
				  var taamount =[]
				  $(".draggableti").each(function(){
					var dlen = $(this).find(".countta").length  
					taamount.push(dlen)	
			   //紀錄每日超過一個以上行程的景點名字	
			    var ta=[]   
				
			    var txt2 ='<div class="dropdown"><button  style="pagging:5px 0;margin:0 10px;width:100%"  class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="driving"><span class="distance"></span><i class="fa fa-car fa-3x "></i><span class="duration"></span></button><div class="dropdown-menu " aria-labelledby="dropdownMenuButton"><div class="dropdown-item Walking"  ><i class="fa fa-walking " aria-hidden="true">walking</i></div><div class="dropdown-item Driving"  ><i class="fa fa-car " >driving</i></div><div class="dropdown-item Transit"  ><i class="fa fa-bus " aria-hidden="true">transit</i></div></div></div>'
					if(dlen>1){
						//旅遊模式全部刪除再排列一次
						$(this).find(".dropdown").each(function(){

							$(this).remove();
						})
						 var dayti =[]
						$(this).find(".countta").each(function(){
					    //塞入旅遊模式的標籤
							$(this).after(txt2)
						//取得景點名稱
						var taname= $(this).find("h3").html()
						dayti.push(taname)
						})
						console.log(dayti)
						
						
						//刪除最後一個旅遊MODE
						$(this).find(".dropdown:last-child").remove()
						//取得旅遊模式
						var mode=[]
						$(this).find(".dropdown").each(function(){
							
							var modename=$(this).find("button").attr('name')
							mode.push(modename)
						})
							console.log(mode)
						
			       var thisfake=$(this).find(".dropdown")
							
				$.ajax({
			        url: "getdad",                   
			        type: 'POST',                   
			        traditional: true,             
			        data: {"ti":dayti,"mode":mode}, 
			        cache: false, 
			        async: true,
			        success: function (res) { 
			        	console.log("66666")
			        	console.log(thisfake)
			        	var answer = $.parseJSON(res)
			        	
			        	
// 			        		console.log(thisfake)
			        		var x=0;
			        	thisfake.each(function(res){
			        	
			        		var ansparse =$.parseJSON(answer[x])
			        		x++;
// 			        		console.log(ansparse.duration/60)
			        		var time='';
			        		if(ansparse.duration/(60*60)>1){
			        			var hr = Math.floor(ansparse.duration/(60*60))
			        			var min =Math.round((ansparse.duration/60)%60);
			        			
// 			        			console.log("hr="+hr);
// 			        			console.log("min="+min);
			        			time= hr+"時"+min+"分鐘"
			        			
			        		}else{
			        			
			        			var min =Math.round(ansparse.duration/60);
// 			        			console.log("min="+min);
			        			time= min+"分鐘";
			        		}
			        		    		
			        		$(this).find(".duration").html(time)

			        		
			        		var path=""
			        		if((ansparse.distance/1000)>1){
			        			
			        			path =  Math.floor(ansparse.distance/1000) +"公里"
			        		}else{
			        			
			        			path = (ansparse.distance%1000)+"公尺"
			        		}
			        		
			        		
			        		$(this).find(".distance").html(path)
			        		
			        		
			        	   })
     	
			           }
			      });
							
						
						

					}else{
						$(this).find(".dropdown").each(function(){
							$(this).remove()})
						
					}
						
						
						
					
					
					
					
					
				  })
			  
				  //算出起始日到結束日共幾天
				  
			  		var from = $("#from").html()
			  		var to  =$("#to").html()
			  		var tday=$("#tday").val()
			  		
			  		
			  	 //重新計算行程順序 並將形成順序的ID裝成陣列
			  		var num = 1;	
		  			var idary = []
			  		$(".countta").each(function(){
			  			$(this).find(".icon-maker").html(num++)
			  		    var eachid = $(this).find(".TAid").html();
			  		    idary.push(eachid)
			  			
			  		})
			  		
    
				  //取得TI的id跟name
				    var tname = $("#tititle").children("span").html()	
	                var tiid=$(".tiid").find("input[name='id']").val();
				 
	                   
				  	var data={"id":tiid,"memberid":1,"t_name":tname,"touristday":tday,"firstday":from
				  		,"lastday":to,"dailyitinerary":taamount,"sequence":idary}
				  	
				  	
				  		$.ajax({
				  		  type: 'POST',
				  		  url: "updateTI",
				  		  data: data,
				  		  traditional:true
				  		 
				  		});
				  	
	   
			   
		   }
		   
		    
		    
		    
		  		    
		  		    
		  		//拖拉
		  		
		  		function  draggableTA(){
			   
    		$( ".draggableti" ).sortable({
		    	connectWith: ".draggableti",
	  		    cancel:"span,h3,.nodrag,.dropdown",
	  		    scroll:false,
	  		    cursor:"grab",
	  		    revert: true,
	  		    receive: function( event, ui ) {   
	  		    	
	  		    	var uiclass=  ui.item.attr("class")
	  		    	console.log(uiclass)
	  		    	if(uiclass==="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item ui-sortable-handle"){
	  		    		
	  		    	
	  		    	ui.item.removeClass(uiclass)
	  		    	ui.item.addClass("row oneTA countta")
			  		    	
			  	  var titile= ui.item.find(".stext-104").html();
		       	  var touristarea= ui.item.find(".stext-105").html();
		       	  var summary = ui.item.find(".summary").html();
		       	  var TAlng =Number(ui.item.find(".TAlng").html());
		       	  var TAlat =Number(ui.item.find(".TAlat").html());    
		       	  //透過img裡的標籤找出id
		       	  var imgsrc=  String(ui.item.find("img[name='TAimage']").attr("src"))
		       	  var n =Number(imgsrc.indexOf("id="));
		          var TAid = imgsrc.substring(n+3);
		          var TAnum = Number($("#allTA").find(".oneTA:last").find(".icon-maker").html())+1;		
		          
		          
		   	var txt=""
		   		 txt+='<div class="col-sm-2"><div class="icon-maker">'+TAnum+'</div></div><div class="col-sm-9"><h3>'
		   		 txt+= titile
		   		 txt+= '</h3><i class="fas fa-times-circle xxx" hidden="true"></i><div class="TLarea">'
		   		 txt+= touristarea
		   		 txt+='</div><div class="TAid" hidden="true">'+TAid+'</div>'				
		   		 txt+='<div  class="TAlng" hidden="true">'+TAlng+'</div>'
		   		 txt+='<div  class="TAlat" hidden="true">'+TAlat+'</div>'
		   		 txt+='<div  class="summary" hidden="true">'+summary+'</div></div>'	  		    	
			  		    	ui.item.empty();
			  		    	ui.item.append(txt)
			  		    	
	  		    	}	    	
			  		    	
			  		    	
			  		    	
	    	
// 			  		    	$( '#isotope-grid' ).sortable( "refresh" );
			  		    	
// 		  			       $( "#isotope-grid" ).sortable( "refreshPositions" );
			  		    	
			  	},
			  	
			  	
			  	update: function( event, ui ) {
  				
			  		//刪除原有展示標籤
			  		if($(this).find(".nodrag")){
			  			$(this).find(".nodrag").remove()
			  		}
		  	        //沒有任何景點時,增加空白行程
			  		if($(this).find(".oneTA").length===0){
			  			$(this).append('<div class="row oneTA nodrag"> <div class="col-sm-2" ><div class="icon-maker-default"></div></div><div class="col-sm-9" style="background-color:white;border:gray 1px solid"><h3 style="text-align:center;line-height:50px"> <img alt="" src="../images/icons/placeholder/add.png"></h3></div></div></div>')
			  		}
                     
			  		
					updateti();
			  	
			  	
			  	
			  	}
			  	
			  	
			  	
			  	


			  		    });

			  		    $( "div, h3" ).disableSelection();			    	
			    }	    
  	
		//搜尋的拖拉    	

		  		function  draggable_searchTA(){
			  
			  		    $( "#isotope-grid" ).sortable({
			  		      connectWith: ".draggableti",
			  		      delay: 100,
			  		      helper:  "original",
			  		      revert :"invalid",
			  		      scroll:false,
			  		      cursor:"grab",
// 			  		      dropOnEmpty: false,
			  		      
			  		    });
			  		    $( "div, h3" ).disableSelection();			    	
			    }	    
			      
   
			    
		    		
		    		
		    	
		  		
		  		
		  		var DateDiff = function (sDate1, sDate2) { // sDate1 和 sDate2 是 2016-06-18 格式
		  		  var aDate, oDate1, oDate2, iDays
		  		  aDate = sDate1.split("-")
		  		  oDate1 = new Date(aDate[1] + '/' + aDate[2] + '/' + aDate[0]) // 轉換為 06/18/2016 格式
		  		  aDate = sDate2.split("-")
		  		  oDate2 = new Date(aDate[1] + '/' + aDate[2] + '/' + aDate[0])
		  		  // 把相差的毫秒數轉換為天數
		  		  iDays = parseInt(Math.abs(oDate1 - oDate2)/ 1000 / 60 / 60 / 24);
		  		  return iDays;
		  		};

		  		    
		    
		  
		 
		  		
		    
		    
		  
		    
		    
</script>
	
<!--===============================================================================================-->
	
	<script type="text/javascript">
//日期格式初始化

// $( function() {

//     var dateFormat = "yy-mm-dd",
//       from = $( "#from" )
//         .datepicker({
//           defaultDate: "+1w",
//           changeMonth: true,
          
//         },"option", "dateFormat", dateFormat )
//         .on( "change", function() {
//           to.datepicker( "option", "minDate", getDate( this ) );
//         }),
        
//       to = $( "#to" ).datepicker({
//         defaultDate: "+1w",
//         changeMonth: true,
//         numberOfMonths: 3
//       },"option", "dateFormat", dateFormat )
//       .on( "change", function() {
//         from.datepicker( "option", "maxDate", getDate( this ) );
//       });
// 	 $( "#from" ).datepicker( "option", "dateFormat", "yy-mm-dd D" );
//      $( "#to" ).datepicker( "option", "dateFormat", "yy-mm-dd D" );
	
	
//     function getDate( element ) {
//       var date;
//       try {
//         date = $.datepicker.parseDate( dateFormat, element.value );
//       } catch( error ) {
//         date = null;
//       }
 
//       return date;
//     }
//   } );



</script>
	
	
	
	
	
	
	
	
	
	
	<script src="../js/main.js"></script>


</body>
</html>