<!DOCTYPE html>

<div id="map"></div>
<script>

// This example displays a marker at the center of Australia.
// When the user clicks the marker, an info window opens.
var map;
var markers = [];
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
    
    map.addListener('click', function(event) {
        addMarker(event.latLng);
      });
    
    // Adds a marker to the map and push to the array.
    function addMarker(location) {
      var marker = new google.maps.Marker({
        position: location,
        map: map
      });
      
  var contentString = '<%=form_tag '/make', method:'post' do %><ul><textarea name="tit" class="form-control" row="1"></textarea></ul><ul><textarea name="con" class="form-control" row="4"></textarea></ul><input type="submit"><% end %>';

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });
  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
      markers.push(marker);
    }
    
    // Sets the map on all markers in the array.
    function setMapOnAll(map) {
      for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
      }
    }

}

</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2xWsRsM--vAOE_I9dv-ljLh-nO6IU0pU&signed_in=false&callback=initMap"></script>


<script>
