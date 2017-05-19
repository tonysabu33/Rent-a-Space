<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Space Search</title>
<style>
div.topnav a {
	float: right;
	display: block;
	color: orange;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

#map {
	height: 80%;
	width: 100%
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#description {
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
}

#infowindow-content .title {
	font-weight: bold;
}

#infowindow-content {
	display: none;
}

#map #infowindow-content {
	display: inline;
}

.pac-card {
	margin: 10px 10px 0 0;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	font-family: Roboto;
}

#pac-container {
	padding-bottom: 12px;
	margin-right: 12px;
}

.pac-controls {
	display: inline-block;
	padding: 5px 11px;
}

.pac-controls label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}

#pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 400px;
}

#pac-input:focus {
	border-color: #4d90fe;
}

#title {
	color: #fff;
	background-color: #4d90fe;
	font-size: 25px;
	font-weight: 500;
	padding: 6px 12px;
}

#target {
	width: 345px;
}
</style>
</head>
<%
  String place=(String)session.getAttribute("loc1");
  String poi=(String)session.getAttribute("poi1");
  %>
<body
	background="E:\Learn\PG\Sem 3\EBT\pro\HouseRent\WebContent\img1.jpg">





	<input id="pac-input" class="controls" type="text"
		placeholder="Search Box" value=<%=poi+ "s" +"&nbsp;in&nbsp;"+place%>>
	<h3>
		<b><font color="Blue"><font size="14">Press enter in
					the search box to see the properties!</font></font></b>
	</h3>

	<div class="topnav">

		<a href="b.html"><b><font color="Black"><font size="4">logout</font></font></b></a>

	</div>
	<div id="map"></div>
	<script>
     

      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 13.0827, lng: 80.2707},
          zoom: 13,
          mapTypeId: 'roadmap'
        });

        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
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
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });
      }

    </script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-afM4tzGpH7XpcBOeJzQzjJN--D16K4A &libraries=places&callback=initAutocomplete"
		async defer></script>
	<h3></h3>
</body>
</html>