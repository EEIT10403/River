<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<style type='text/css'>

}

#contexttx{
float:right
}

#map {
   	
	height: 80%;
	width: 80%
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
<meta charset='UTF-8'>
<title>River 景點搜尋♥</title>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous'>
</head>
<body>
<div  class='row'>
  <div  id='contexttx' class='col'> 
  <form action='<c:url value='/insertta'/>' method='post' enctype='multipart/form-data'>
	<table>
	<tr>
	<td>城市/區域:<input id='touristarea' name='touristarea' type='text'></td>
	</tr>
	<tr>
	<td>景點/地址:<input id='pacinput' name='address' class="form-control" type='text' placeholder='景點搜尋'></td>
	</tr>
	<tr id='latlngtr'>
	<td>
	經度:<input id='lng' name='lng'  type='text' placeholder='緯度' style="width:100px">
	緯度:<input id='lat' name='lat'  type='text' placeholder='經度' style="width:100px">
	</td>
	<td></td>
	</tr>
	<tr>
	<td>景點概述: <input id='summary' class="form-control" name='summary' type='text'> </td>
	</tr>
	<tr>
	<td>圖片上傳: <input type='file' id='imageinput' name="img"class="form-control-file" accept='image/gif, image/jpeg, image/png' /></td>
	</tr>
	<tr>
	<td>	</td>
	</tr>
	<tr>
	<td><input type='submit' value="新增景點"></td>
	</tr>
	</table>
	</form>

    	<img id='preview_progressbarTW_img' src='#' alt='預覽圖片'  width='50%' heigth='40%'/>
    </div>
  <div class='col'><div id='map' />
</div>

<script type='text/javascript' src='../js/jquery-3.3.1.js'></script>
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
					lat : -33.8688,
					lng : 151.2195
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
			
			var pacinputv=$("#pacinput").val()
				 $.get('LoadTALatLng',{"address":pacinputv},
				   function(taLatLng){
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
						icon : icon,
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
<!-- 	googleMap  -->
	<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y&libraries=places&callback=initAutocomplete' async defer></script>
<!-- 	bootstrap  -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js' integrity='sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q' crossorigin='anonymous'></script>
	<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js' integrity='sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl' crossorigin='anonymous'></script>
    
    
</body>
</html>