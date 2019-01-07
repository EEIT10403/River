<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 50%;
        width: 50%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y"></script>
<script>
      // In the following example, markers appear when the user clicks on the map.
      // Each marker is labeled with a single alphabetical character.
      var labels = ["1","2"];
      var labelIndex = 0;
      function initialize() {
//         var bangalore = { lat: 12.97, lng: 77.59 };
			var bangalore = { lat: 35.7090259, lng: 139.7319925};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: bangalore
        });

        // This event listener calls addMarker() when the map is clicked.
//         google.maps.event.addListener(map, 'click', function(event) {
//           addMarker(event.latLng, map);
//         });

        // Add a marker at the center of the map.
        addMarker(bangalore, map);
        addMarker({ lat: 12.97, lng: 77.62 }, map);
        
      }

      // Adds a marker to the map.
      function addMarker(location, map) {
        // Add the marker at the clicked location, and add the next-available label
        // from the array of alphabetical characters.
        var marker = new google.maps.Marker({
          position: location,
          label: labels[labelIndex++ % labels.length],
          map: map
        });
      }

      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>

<form  id="searchAT"   action="<c:url value='/searchta' />" method="get">
<div>
區域:<input id="touristarea"  type="text" />
景點:<input id="address"  type="text" />
</div>
<input type="submit">
</form>
 <div id="map"></div>


</body>
</html>