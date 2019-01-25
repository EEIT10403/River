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
	height:800px;
	width: 90%;
	margin-top: 75px;
	margin-left: 100px;
	margin-bottom: 0px;
	border: double 5px #009FCC;
}

.item-slick1 {
padding-bottom;
	height: 650px;
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
background-size: auto;
background-position-x: center;
text-align: center;
padding-top: 3px;
font-size: 22px;
margin: 0px 5px;
cursor: pointer;
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
.navstyle{
background-color:#FFFFA1;
border:3px white solid;
border-radius: 20px;
padding:10px 20px;
color: #0000E0;
font-family: 'Noto Serif TC', serif;
font-weight: 1000;


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
	
		<!-- Banner -->



	</div>
<!-- 地圖在這裡 -->
	<div>
      <div id="map" ></div>
    </div>



<!-- 我要加入modal -->
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

						<div class=" p-t-5 p-lr-0-lg" style="width:100%" >
							<h4 class="mtext-105 cl2 js-name-detail p-b-14 from" style="font-size:25px;text-align:center">
								Lightweight Jacket
							</h4>
							<div style="font-size:40px;text-align:center">
							<span class="lnr lnr-arrow-down" ></span>
							</div>
							<h4 class="mtext-105 cl2 js-name-detail p-b-14 to" style="font-size:25px;text-align:center">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								
							</span>
							<span class="mtext-106 cl2">
								
							</span>

							<p class="mtext-106 cl3 p-t-23 distance" id="distance1">
								路程:34公里
							</p>
							<p class="mtext-106 cl3 p-t-23 duration" id="duration1">
								預估時間:1小時23分鐘
							</p>
							
	                             <div class="flex-w flex-r-m p-b-10 mtext-106 cl3 p-t-23">
									<div class="size-203 flex-c-m respon6">
									交通方式
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="travelmode">
												<option>DRIVING</option>
												<option>WALKING</option>
												<option>TRANSIT</option>
												
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

        					  <div class="form-group form-check">
							    <input type="checkbox" class="form-check-input" id="avoidhightways">
							    <label class="form-check-label"  style="margin-left:20px;font-size: 16px">避開高速公路</label>
							   
							  </div>
        					  <div class="form-group form-check">
							   
							    <input type="checkbox" class="form-check-input" id="avoidtolls">
							    <label class="form-check-label"  style="margin-left:20px;font-size: 16px">避開收費站</label>
							  
							  </div>
        							
								</div>	
							</div>

						
						</div>
									

							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		

	

   
			
      
     

	


<!-- 最下方 導覽列 -->
		<div class="navbar navbar-expand-sm   am-bottom-fixed" style="background-color:pink;margin-bottom:0;border-radius:0;">
			<div class='row'>
			  <c:forEach var="ta" begin="1" end="${tibean.touristday}" >
			  <span class="navbar-brand navstyle" >第${ta}天</span>
			  <div class='col' id="day${ta}"></div>	
			  </c:forEach>
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
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/slick/slick.min.js"></script>
	<script src="../js/slick-custom.js"></script>
	<!--===============================================================================================-->
  
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
	
	
	

<!-- 地圖的JS -->
 <script>
        // Load the Visualization API and the columnchart package.
// google.load('visualization', '1', {packages: ['columnchart']});

      function initMap() {
        // The following path marks a path from Mt. Whitney, the highest point in the
        // continental United States to Badwater, Death Valley, the lowest point.
        
        
        
        
        
       //丟PATH給地圖 
        
    	  var x = $.parseJSON('${taList}')
    		var y = $.parseJSON('${diarray}')
    		console.log(x[0])
    		console.log(y[0])
    		console.log(x.length)
    		var tanum=0
    		var path=[]
            var title=[]
    		for(var i =0;i<y.length;i++){
    			           console.log("--------")
    				for(var j =tanum;j<(tanum+Number(y[i]));j++){
    			       var dayid ="#day"+(i+1)
    			       //塞經緯度進path 建立navbar上的標籤
    			       var onepath = {lat: x[j].lat, lng: x[j].lng}
    			       path.push(onepath)		       
    			       var onetitle = "<div><h4>" + x[j].address +"</h4></div>"
    			       title.push(onetitle)
    			       //加入車車icons
    			       var txt='<div data-toggle="tooltip" data-placement="top" title="Tooltip on top" class="col icon-maker marker'+(j+1)+'">'
    			       +(j+1)
    			       +'<div hidden="true" class="addr">'
    			       +x[j].address
    			       +'</div></div>'
         		     	$(dayid).before(txt)
    			       if(j!=(tanum-1)&&j!=(tanum+Number(y[i])-1)){
    			    	 var icon='<i class="fa fa-car fa-2x" style="margin-top:10px" ></i>'
    			    		 $(dayid).before(icon)
    			       }
    			       
    			    
    			           
    			           
    			
    				}
    				
    			           console.log("!--------")    
    		 		tanum += Number(y[i])	
    		 		console.log(tanum)
    		 		console.log(path)
//     		 		console.log(title)
    			           console.log("--------")
    		}
        
    	 
        
        
        
    	
        
        
        
    	  var labels = '123456789';
          var labelIndex = 0;
         var shape = {
//            coords: [1, 1, 1, 20, 18, 20, 18, 1],
           type: 'poly'
         };
        
        
        
      
        
        
        
//         var path = [
//             {lat: 36.579, lng: -118.292},  // Mt. Whitney
//             {lat: 36.606, lng: -118.0638},  // Lone Pine
//             {lat: 36.433, lng: -117.951},  // Owens Lake
//             {lat: 36.588, lng: -116.943},  // Beatty Junction
//             {lat: 36.34, lng: -117.468},  // Panama Mint Springs
//             {lat: 36.24, lng: -116.832}];  // Badwater, Death Valley

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 9,
          center: path[0],
         
        });
        $.each(path,function(index,value){
        	  var image = {
        	          url: '../images/icons/placeholder/sholder'+(index+1)+'.png',
        	          // This marker is 20 pixels wide by 32 pixels high.
        	          size: new google.maps.Size(48, 56),
        	          // The origin for this image is (0, 0).
        	          origin: new google.maps.Point(0, -8),
        	          // The anchor for this image is the base of the flagpole at (0, 32).
        	          anchor: new google.maps.Point(24,56)
        	        };
        	
        	
        	var markerid =".marker"+(index+1)
        var marker = new google.maps.Marker({
        	
        	shape: shape,
        	icon: image,
//             label: labels[labelIndex++ % labels.length],
            position: value,
            map: map,
//          animation.google.maps.Animation.BOUNCE,
//              label: {
// 					   text: labels[labelIndex++ % labels.length],
// 					   color: 'black',
// 					   fontSize: "24px"
// 					 }
          }); 
        
        var infowindow = new google.maps.InfoWindow({
            content: title[index]
          });
        
        $(".row").on("mouseover",markerid,function(){
        	
        	infowindow.open(map, marker);
        	addanimate(marker)
        })
        $(".row").on("mouseout",markerid,function(){
        	
        	infowindow.close(map, marker);
        	removeanimate(marker)
        })
        
        marker.addListener('click', function() {
            infowindow.open(map, marker);
          });
        marker.addListener('mouseout', function() {
            infowindow.close(map, marker);
          });
        }) 
        //
        
          //讓modal正常做動
	    $('.row').on('click','.fa',function(e){
		    	$('.js-modal1').addClass('show-modal1');
		    	
		    	//取得起始集終點位置
		    	
		           var org =$(this).prev().find(".addr").html()
// 		            console.log($(this).prev().find(".addr").html())
		            var destination=$(this).next().find(".addr").html()
// 		            console.log($(this).next().find(".addr").html())
                    $("#modal1").find(".from").html(org)
                    $("#modal1").find(".to").html(destination)
                    
                //    
                  var avoidhightways= $("#avoidhightways").prop("checked");
                  var avoidtolls= $("#avoidtolls").prop("checked");
                //
                var travelmode= "DRIVING"
                $("select[name='travelmode']").on("change",function(){
                	travelmode=$(this).val()
                	calculateAndDisplayRoute(directionsService, directionsDisplay)

	
                })
                	console.log(travelmode)
                

                
		    	
		        function calculateAndDisplayRoute(directionsService, directionsDisplay) {
		        	          directionsService.route({
		        	            origin: org,
		        	            destination: destination,
		        	            optimizeWaypoints: true,
		        	            travelMode: travelmode,
		        	            //避開高速公路
		        	            avoidHighways: avoidhightways, 
		        	            //避開收費站
		        	            avoidTolls: avoidtolls,
		        	          }, 
		        	          function(response, status) {
		        	             
       	        	  if (status === 'OK') {
		        	        	  directionsDisplay.setDirections(response);
		        	              
								var route = response.routes[0];
		        	              console.log(route)
		        	            var distance=route.legs[0].distance.text
		        	             var duration= route.legs[0].duration.text
		        	             console.log(distance)
		        	             console.log(duration)
		        	              $("#distance1").html("預估時間:"+distance)
		        	              $("#duration1").html("路程:"+duration)
		        	              } else {
		        	            	  $("#duration1").empty()
		        	            	   $("#distance1").html("查無此路線")
		        	                }  
		        	              
		        	          })
		        	            
		        	        
		        	        }

		    	  calculateAndDisplayRoute(directionsService, directionsDisplay);
		        e.preventDefault();
		    });

		    $('#modal1').on('click','.js-hide-modal1',function(){
		        $('.js-modal1').removeClass('show-modal1');
		    });
        
        
        
        
        
        
        
        // Create an ElevationService.
        var elevator = new google.maps.ElevationService;
        // Draw the path, using the Visualization API and the Elevation service.
        displayPathElevation(path, elevator, map);
        
        
        
        
        
        
        //modal的MAP1
	        //modal的MAP1
	        //modal的MAP1
	        //modal的MAP1
	        var directionsService = new google.maps.DirectionsService;
	        var directionsDisplay = new google.maps.DirectionsRenderer;
	        var map1 = new google.maps.Map(document.getElementById('map1'), {
	          zoom: 6,
// 	          center: {lat: 41.85, lng: -87.65}
	        });
	        directionsDisplay.setMap(map1);
	        
	        
	        //modal裡的map function
	
	        
	        

      }

     //畫線的function

      function displayPathElevation(path, elevator, map) {
    	  
    
        // Display a polyline of the elevation path.
        new google.maps.Polyline({
          path: path,
          strokeColor: '#0000CC',
          strokeOpacity: 0.4,
          map: map
        });

      }
      //marker的動畫
      function addanimate(marker) {
            marker.setAnimation(google.maps.Animation.BOUNCE);        
        }
      function removeanimate(marker) {
    	  marker.setAnimation(null);    
        }
    
    

      
      
      
      </script>
    
<!--===============================================================================================-->
	<!-- 取的景點資訊 並印出 -->
	<script type="text/javascript">
	$(document).ready(function(){
		
		    //不可選則
		    $( "div, h3" ).disableSelection();			    	
         
	})
  	
	       
	

			    
			    
			    
			    
			    
			    
			    
					    
	
	
	
	  
	
	
	
	</script>
	
	
	  <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y&callback=initMap">
      </script>
	<script src="../js/main.js"></script>


</body>
</html>