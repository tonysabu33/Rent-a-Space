<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Simple markers</title>
<style>
#map {
	height: 100%;
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<div id="map"></div>
	<script>

      function initMap() {
        var myLatLng = {lat: -25.363, lng: 131.044};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
      }
    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-afM4tzGpH7XpcBOeJzQzjJN--D16K4A&callback=initMap">
    </script>
</body>
</html>