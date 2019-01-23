<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
input, textarea {
	background-color: #E6CFE6;
	border-radius: 10px;
	padding-left: 20px;
	margin-top: 5px;
}
.am-bottom-fixed {
  position: fixed;
/*   top: 0; */
  left: 0;
  right: 0;
  bottom:0;
  width: 100%;
  z-index: 1010;
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
			<div class="d-flex justify-content-center">
				<h1>日本九州三日遊</h1>
			 </div>
		<div class="d-flex justify-content-center">
			<label for="from">起始日</label>
			<input type="date" id="from" name="from" value="2019-01-31">
			<label for="to">結束日</label>
			<input type="date" id="to" name="to" value="2019-02-02">
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
            <span  class="badge badge-pill badge-secondary" id="day1">第1天</span>
  
    <div id="draggable">
    <!-- 單個景點元素1 -->  
	     <div class="row oneTA">
	   
				 <div class="col-sm-2" >
					  	 <div class="icon-maker">1</div>  
		    	</div>
				<div class="col-sm-9">
					      <h3>太鼓谷稻成神社</h3>
                          <div class="TLarea">日本 島根</div>
                          <div class="TAid" hidden='true'>1</div>				
				          <div  class="TAlng" hidden='true'>131.7689333</div>
						  <div  class="TAlat" hidden='true'>34.4653022</div>
					      <div  class="summary" hidden='true'>太鼓谷稻成神社位在島根縣的津和他是山陰地區最大的稻荷神社不同於出雲大社是結緣神社(祈求戀愛)太鼓谷稻成神社主要是祈求財運~生意興隆等所以太鼓谷稻成神社的神被人們當作“達成願望”之神而崇敬</div>
		    	</div>
	    </div>
	
    <!-- 單個景點結尾 --> 
     
     <!-- 單個景點元素2 -->
   
	    <div class="row oneTA">
				<div class="col-sm-2">
					  	 <div class="icon-maker">2</div>  
		    	</div>
				<div class="col-sm-9">
					      <h3>伏見稻荷大社</h3>
                          <div class="TLarea">日本 京都</div>
                          <div class="TAid" hidden='true'>22</div>				
				          <div  class="TAlng" hidden='true'>135.7726717</div>
						  <div  class="TAlat" hidden='true'>34.9671402</div>
					      <div  class="summary" hidden='true'>「稻荷神社」堪稱是最貼近日本人生活的神社。據說全國共有3萬座稻荷神社，在日本各地受到所有男女老幼的喜愛。其總本宮便是京都的伏見稻荷大社。自西元711年神明鎮座以來，長達1300年的期間匯集了人們的信仰，被尊崇為保佑五穀豐登、商業興盛、家庭安全、諸願望皆得實現之神。近年來除了日本人之外，也有許多外國參拜客、觀光客造訪，稻荷神社已成為代表京都與日本的名勝，聞名於世。</div>
		    	</div>
	    </div>
	

    <!-- 單個景點結尾 --> 
   
    
   <span class="badge badge-pill badge-secondary" id="day2">第2天</span>

  
  
    
    
    
    <!-- 單個景點元素3 -->
  
	    <div class="row oneTA">
				<div class="col-sm-2">
					  	 <div class="icon-maker">3</div>  
		    	</div>
				<div class="col-sm-9">
					      <h3>三號神社</h3>
                          <div class="TLarea">日本 島根</div>
                          <div class="TAid" hidden='true'>333</div>				
				          <div  class="TAlng" hidden='true'>131.7689333</div>
						  <div  class="TAlat" hidden='true'>34.4653022</div>
					      <div  class="summary" hidden='true'>太鼓谷稻成神社位在島根縣的津和他是山陰地區最大的稻荷神社不同於出雲大社是結緣神社(祈求戀愛)太鼓谷稻成神社主要是祈求財運~生意興隆等所以太鼓谷稻成神社的神被人們當作“達成願望”之神而崇敬</div>
		    	</div>
	    </div>
	

    <!-- 單個景點結尾 --> 
        <!-- 單個景點元素4 -->
  
	    <div class="row oneTA">
				<div class="col-sm-2">
					  	 <div class="icon-maker">4</div>  
		    	</div>
				<div class="col-sm-9">
					      <h3>四號神社</h3>
                          <div class="TLarea">日本 島根</div>
                          <div class="TAid" hidden='true'>4444</div>				
				          <div  class="TAlng" hidden='true'>131.7689333</div>
						  <div  class="TAlat" hidden='true'>34.4653022</div>
					      <div  class="summary" hidden='true'>太鼓谷稻成神社位在島根縣的津和他是山陰地區最大的稻荷神社不同於出雲大社是結緣神社(祈求戀愛)太鼓谷稻成神社主要是祈求財運~生意興隆等所以太鼓谷稻成神社的神被人們當作“達成願望”之神而崇敬</div>
		    	</div>
	    </div>
	

    <!-- 單個景點結尾 --> 
       <span class="badge badge-pill badge-secondary" id="day3">第3天</span>
    </div>
    
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



										<button id="addnewTA" type="button" class="btn btn-primary">新增景點</button>
									</form>
								</div>
							</div>
						
						</section>
					</div>
					<div class="col-md-6">
						<div id='map'></div>
						<img id='preview_progressbarTW_img' src='../images/preview.jpg' alt='預覽圖片'
							width='100%' height='40%' style="border: double 5px #009FCC" />
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

					<!-- 商品位置 -->
					<div class="row isotope-grid" >


						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item women">
							<!--Block2 -->
							<div id="TA2" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA2.jpg" alt="IMG-PRODUCT">
									 <a  
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											元乃隅稻成神社 </a> <span class="stext-105 cl3">
											日本 山口 </span>
											<div  class="TAlng" hidden='true'>131.0625685</div>
											<div  class="TAlat" hidden='true'>34.4196287</div>
											<div  class="summary" hidden='true'>「元乃隅稻成神社」（もとのすみいなりじんじゃ）在1955年建立，傳說有一位船主人夢見了一隻白狐，白狐表示船主人能夠滿載而歸都是托他之福，請他們在此處祭祀祂，當地人從島根県津和野町太鼓谷稲成神社分靈，在此建立了神社。在日本約有4萬座稻荷神社，但「稻成」神社只有兩間，兩字也意味的願望實現的意思，因此吸引了許多香客朝拜。</div>
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item men">
						<!--Block2 -->
							<div id="TA3" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA3.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											高山稻荷神社 </a> <span class="stext-105 cl3">
											日本 青森 </span>
											<div  class="TAlng" hidden='true'>135.7726717</div>
											<div  class="TAlat" hidden='true'>34.9671402</div>
											<div  class="summary" hidden='true'>高山稻荷神社是設立於屏風山正中央的神社，在這裡可以一望岩木山、日本海和十三湖方向的美景。這裡同時也是祈求五穀豐收、海上安全與生意興隆相當靈驗的神社。高山稻荷神社所祭祀的神祇和全國稻荷神社的本社・伏見稻荷大社一樣，供奉著宇迦之御魂命、佐田彥命和大宮賣命三大神明。走進神社境內，登上百餘段的石階來到拜殿後，就能看見沿著曲線林立的紅色千本鳥居景觀。</div>
										</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
										</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item watches">
							<!--Block2 -->
							<div id="TA4" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA4.jpg" alt="IMG-PRODUCT"> <a
										href="#"
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html"
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											太鼓谷稻成神社 </a> <span class="stext-105 cl3">
											日本 島根 </span>
											<div  class="TAlng" hidden='true'>131.7689333</div>
											<div  class="TAlat" hidden='true'>34.4653022</div>
									        <div  class="summary" hidden='true'>太鼓谷稻成神社位在島根縣的津和他是山陰地區最大的稻荷神社不同於出雲大社是結緣神社(祈求戀愛)太鼓谷稻成神社主要是祈求財運~生意興隆等所以太鼓谷稻成神社的神被人們當作“達成願望”之神而崇敬</div>
									     </div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item shoes">
							<!--Block2 -->
							<div id="TA1" class="block2">
								<div class="block2-pic hov-img0">
									<img name="TAimage" src="../images/TAimages/TA1.jpg" alt="IMG-PRODUCT"> <a
										href="#test"   
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
										Quick View </a>
								</div>

								<div class="block2-txt flex-w flex-t p-t-14">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="../product-detail.html" 
											class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
											伏見稻荷大社 </a> <span class="stext-105 cl3">
											日本 京都 </span>
											<div  class="TAlng" hidden='true'>135.7726717</div>
											<div  class="TAlat" hidden='true'>34.9671402</div>
									        <div  class="summary" hidden='true'>「稻荷神社」堪稱是最貼近日本人生活的神社。據說全國共有3萬座稻荷神社，在日本各地受到所有男女老幼的喜愛。其總本宮便是京都的伏見稻荷大社。自西元711年神明鎮座以來，長達1300年的期間匯集了人們的信仰，被尊崇為保佑五穀豐登、商業興盛、家庭安全、諸願望皆得實現之神。近年來除了日本人之外，也有許多外國參拜客、觀光客造訪，稻荷神社已成為代表京都與日本的名勝，聞名於世。</div>
											
									</div>

									<div class="block2-txt-child2 flex-r p-t-3">
										<a href="#"
											class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
											<img class="icon-heart1 dis-block trans-04"
											src="../images/icons/icon-heart-01.png" alt="ICON"> <img
											class="icon-heart2 dis-block trans-04 ab-t-l"
											src="../images/icons/icon-heart-02.png" alt="ICON">
										</a>
									</div>
								</div>
							</div>
						</div>


					</div>
				
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










	


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>


	

	




<nav class="navbar navbar-expand-sm  navbar-dark am-bottom-fixed" style="background-color:pink;margin-bottom:0;border-radius:0;">
  <a class="navbar-brand" href="#">Logo</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link</a>
    </li>
  </ul>
</nav>



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
						txt += '<div class="col-sm-6 col-md-4 col-lg-6 p-b-35 isotope-item name="fromsearch" "><div class="block2"><div class="block2-pic hov-img0">'						
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
		var TAnum = Number($("#allTA").find(".oneTA:last").find(".icon-maker").html())+1;
	
		var txt=""
		 txt+='<div><div class="row oneTA"><div class="col-sm-2"><div class="icon-maker">'+TAnum+'</div></div><div class="col-sm-9"><h3>'
		 txt+= TAresult.address
		 txt+= '</h3><div class="TLarea">'
		 txt+= TAresult.touristarea
		 txt+='</div><div class="TAid" hidden="true">'+TAresult.id+'</div>'				
		 txt+='<div  class="TAlng" hidden="true">'+TAresult.lng+'</div>'
		 txt+='<div  class="TAlat" hidden="true">'+TAresult.lat+'</div>'
		 txt+='<div  class="summary" hidden="true">'+TAresult.summary+'</div></div></div></div>'		
		$("#draggable").append(txt);
		
		$('#insertTAform')[0].reset();
		$("#preview_progressbarTW_img").attr("src","../images/preview.jpg")
		
		

		changeTI();
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
		    	
   	
		    	
		    	
		    	
		    	
		    })
		  		    
		  		    
		  		    
		  		//拖拉
		  		
		  		function  draggableTA(){
			   
    		$( "#draggable" ).sortable({
// 		    	connectWith: "#isotope-grid",
	  		    cancel:"span,h3",
	  		    scroll:false,
	  		    cursor:"grab",
	  		    revert: true,
	  		    receive: function( event, ui ) {   
	  		    	var uiclass=  ui.item.attr("class")
	  		    	ui.item.removeClass(uiclass)
	  		    	ui.item.addClass("row oneTA")
			  		    	
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
		   		 txt+= '</h3><div class="TLarea">'
		   		 txt+= touristarea
		   		 txt+='</div><div class="TAid" hidden="true">'+TAid+'</div>'				
		   		 txt+='<div  class="TAlng" hidden="true">'+TAlng+'</div>'
		   		 txt+='<div  class="TAlat" hidden="true">'+TAlat+'</div>'
		   		 txt+='<div  class="summary" hidden="true">'+summary+'</div></div>'	  		    	
			  		    	ui.item.empty()
			  		    	ui.item.append(txt)
	    	
// 			  		    	$( '#isotope-grid' ).sortable( "refresh" );
			  		    	
		  			       $( "#isotope-grid" ).sortable( "refreshPositions" );
			  		    	
			  	},
			  	
			  	
			  	update: function( event, ui ) {
			  		
			  		var num = 0;
			  		console.log(ui.item)
			  			var idary = []
			  		$(".oneTA").each(function(){
			  			$(this).find(".icon-maker").html(++num)
			  			var eachid = $(this).find(".TAid").html();
			  			idary.push(eachid)
			  			
			  		})
			  			alert(idary)

			  		
			  		
			  		var from = $("#from").val()
			  		var to  =$("#to").val()
			  		var dateamt =DateDiff(from,to)+1;
			  		alert(from)
			  		alert(to)
			  		alert(dateamt)
			  		// 分割行程
			  	var taarray=[1]
			  	var taday = $("#draggable").find(".badge + div")
			  	console.log(taday)
			  	console.log(taday.length)
			  	
			  	$("#draggable").find(".badge").each(function(){
// 			  		var n =Number(imgsrc.indexOf("id="));
// 			        var TAid = imgsrc.substring(n+3);
			        
			        
			  		var firstta=$(this).find(".oneTA");
			  		console.log($(this))
// 			  		if(firstta!=null){
// 			  			var icon =Number(firstta.find(".icon-maker").html())
// 			  			alert(icon)
// 			  	        taarray.put(icon)
// 			  		}else{
// 			  			taarray.put(0)
// 			  		}
			  	})
			  		console.log(taarray)
                     var array=[0,1,5,6,8]
			  	var data={"id":1,"memberid":1,"touristday":dateamt,"firstday":from
			  		,"lastday":to,"dailyitinerary":array,"sequence":idary}
			  	
			  	
// 			  	$.post("updateTI",{"memberid":1,"touristday":dateamt,"firstday":from
// 			  		,"lastday":to,"dailyitinerary":idary},function(result){
			 
// 			  		})
			  	
			  		$.ajax({
			  		  type: 'POST',
			  		  url: "updateTI",
			  		  data: data,
			  		  traditional:true
			  		 
			  		});
			  	
			  	
			  	
			  	}
			  	
			  	
			  	
			  	


			  		    });

			  		    $( "div, h3" ).disableSelection();			    	
			    }	    
  	
		//搜尋的拖拉    	

		  		function  draggable_searchTA(){
			  
			  		    $( "#isotope-grid" ).sortable({
			  		      connectWith: "#draggable",
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
		  		  iDays = parseInt(Math.abs(oDate1 - oDate2)/ 1000 / 60 / 60 / 24) 
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