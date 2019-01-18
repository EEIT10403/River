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
<link type="text/css" rel="stylesheet" href="../css/bootstrap.css" />
<!--===============================================================================================-->

<link type="text/css" rel="stylesheet" href="../css/jquery-ui.css" />

<!--===============================================================================================-->


<style type="text/css">
input, textarea {
	background-color: #E6CFE6;
	border-radius: 10px;
	padding-left: 20px;
	margin-top: 5px;
}


.item-slick1{
height:650px;
}
#center1{
margin: 150px 0;

}
.newTI{
color:pink;
height:300px;
margin-right: 15px;
border: blue solid 1px;
font-size:50px;
}
.selectTI{
color:pink;
height:300px;
margin-left: 15px;
border: blue solid 1px;
font-size:50px;


}
#goplanti{
border:blue solid 1px;
float:right;

}
.newTIform{
font-size:25px;

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


				<div class="wrap-menu-desktop" style="height:60px">
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

								<li><a href="<c:url value="/_21_/planTAindex.jsp" />">行程規劃</a></li>

								<li><a href="contact.html">Contact</a></li>
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
                   	<li>
					<a href="blog.html">Blog</a>
					</li>

					<li><a href="<c:url value="/_21_/planTAindex.jsp" />">行程規劃</a></li>
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


		<div id="maind" >
		    <div class="d-flex justify-content-center"  id="center2">
		    </div>
		   
		   
		   <div class="d-flex justify-content-center"  id="center1">

							 <button type="button" class="btn text-center newTI">開始規劃新的旅程</button>
							 <button type="button" class="btn text-center selectTI">我先前規劃的行程</button>
						
						<form action="planTourist2.jsp" method="post" class="newTIform" style="display:none">
								<div class="d-flex justify-content-center" style="margin-top:0">
								<h2 class="ltext-201"  style="margin-bottom:30px">準備開始規劃新的旅程</h2>
							
								</div>
								
								行程名稱:<input type="text" name="tiname">
								旅程的開始:<input type="text" id="from" name="from">
								旅程最終日:<input type="text" id="to" name="to">
								旅程共計天數:<input type="text" id="tday" name="tday">
						<button type="submit" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" id="goplanti">開始規劃行程</button>
						</form>  
						
						   
						<form action="" method="post" class="centerform" >
						<input name='id' type="text" style="display:none" >
						</form>
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


	
	


	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
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
	
	<!-- 回傳舊行程規劃表 -->
	<script type="text/javascript">
	
	$(document).ready(function(){
	
		
 $(".newTI").on("click",function(){
	 
	 $( ".newTI" ).hide( "fold",{direction:"down"},2000,showform );
	 $( ".selectTI" ).hide( "slide",{direction:"right"},2000 );
	 
	
	 
	 
	})
	
 $(".selectTI").on("click",function(){
		 
		 $( ".selectTI" ).hide( "fold",{direction:"down"},2000 );
		 $( ".newTI" ).hide( "slide",{direction:"right"},2000,loadMemberTI);
		})	

 });
 
 function loadMemberTI(){
	 
	 
	 $.post("tiget",{"id":1},function(result){
		 var txt =""
		 var TIlist =$.parseJSON(result)
		 
			var txt1="<div class='container'><div class='row isotope-grid' id='isotope-grid'></div></div>"
					$(".centerform").append(txt1)
			$('#center2').append("<div class='row'><div class='col'style='padding-bottom:0;margin-bottom:0' ><h1>之前規劃好的行程</h1></div></div>")
			 
			
		        TIlist.forEach(function(TI){
							
			var radmID=Math.floor(Math.random()*4)+1;
				txt += '<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item name="fromsearch" "><div class="block2"><div class="block2-pic hov-img0">'						
	            txt += '<img name="TAimage" src="../images/TAimages/TA'+radmID+'.jpg" alt="IMG-PRODUCT">'		
				txt += '<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">觀看行程</a></div><div class="block2-txt flex-w flex-t p-t-14"><div class="block2-txt-child1 flex-col-l "><a href="../product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
				txt +=TI.t_name
				txt += '</a> <span class="stext-105 cl3">'+TI.firstday+'</span><div  class="id" hidden="true">'+TI.id+'</div></div><div class="block2-txt-child2 flex-r p-t-3"></div></div></div></div>'	
			})
		       		$('#isotope-grid').append(txt)	
		 })
		 

		 $( "#container1" ).show( "fold", {direction:"right"}, 1500 );
 }
	
	 

	
	
function showform(){
	 $( ".newTIform" ).show( "explode", {}, 1500 );
}
	</script>
<!-- 日期格式初始化 -->
	<script type="text/javascript">
//日期格式初始化

$( function() {

    var dateFormat = "yy-mm-dd",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          
        },"option", "dateFormat", dateFormat )
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
        
      to = $( "#to" ).datepicker({
        defaultDate: "-1mm",
        changeMonth: true,
        numberOfMonths: 2
      },"option", "dateFormat", dateFormat )
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
	 $( "#from" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
     $( "#to" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
	
	
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  
  //計算兩日日期
$("#from,#to").on("change",function(){
	
	
  var form =$("#from").val().substring(0,11)
  var to =$("#to").val().substring(0,11)

var touristday=DateDiff(form,to)+1
	
  if(touristday)
$("#tday").val(touristday)	
})
  
  
  
  
  
  
  
  
  
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
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/slick/slick.min.js"></script>
	<script src="../js/slick-custom.js"></script>
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
	
	<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/sweetalert/sweetalert.min.js"></script>
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
	
	<!-- 設定已經規劃好的跳轉頁面 -->
	<script type="text/javascript">
	$("#center1").on("click",".js-show-modal1",function(e){
		
		e.preventDefault();
		var id=$(this).parent().parent().find(".id").html()
		$(".centerform").find("input[name=id]").val(id)
		$(".centerform").submit()
		alert("AAA")
		
	})
	
	
	
	
	</script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>


</body>
</html>