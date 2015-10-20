function initialize() {
  var lat=  parseFloat(document.getElementById('latitude').innerHTML.trim())
  var lng=  parseFloat(document.getElementById('longitude').innerHTML.trim())
  var myLatlng = new google.maps.LatLng(lat,lng);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas3'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      
  });
}

google.maps.event.addDomListener(window, 'load', initialize);



