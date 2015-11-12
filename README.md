<!DOCTYPE html>
<%=form_tag '/make', method:'post' do %>
<ul>
    <textarea name="tit" class="form-control" row="1"></textarea>
</ul>
<ul>
    <textarea name="con" class="form-control" row="4"></textarea>
</ul>
<input type="submit">
<% end %>

<div id="map"></div>
<script>

// This example displays a marker at the center of Australia.
// When the user clicks the marker, an info window opens.

function initMap() {
  var uluru = {lat: -25.363, lng: 131.044};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: uluru
  });

  var contentString = '<%=form_tag '/make', method:'post' do %><ul><textarea name="tit" class="form-control" row="1"></textarea></ul><ul><textarea name="con" class="form-control" row="4"></textarea></ul><input type="submit"><% end %>';

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  var marker = new google.maps.Marker({
    position: uluru,
    map: map,
    title: 'Uluru (Ayers Rock)'
  });
  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
}

</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2xWsRsM--vAOE_I9dv-ljLh-nO6IU0pU&signed_in=true&callback=initMap"></script>


<script>
