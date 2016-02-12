// app.js
	
$(document).on("ready", function () {
	if ("geolocation" in navigator) {
	  // Browser has geolocation
	  getUserLocation();
	}

	else {
	  // Browser does NOT have geolocation
	}
});


// ===============================================
// --------------  DEFINITIONS  ------------------

function getUserLocation () {
  navigator.geolocation.getCurrentPosition(successCallback,  errorCallback);
  // optional 3rd parameter: optionsObj
}


function successCallback (position) {
  console.log("SUCCESS!!");
  console.log(position);
  $(".js-lat-value").text(position.coords.latitude)
  $(".js-lng-value").text(position.coords.longitude)
  var absLat = position.coords.latitude;
  var absLng = position.coords.longitude;
  showMap(absLat, absLng);
	};

  // console.log("Lat", position.coords.latitude);
  // console.log("Long", position.coords.longitude);



function errorCallback (error) {
  console.log("ERROR", error);
}
	
function showMap (lat, lng) {
	$('.js-show-map').on('click', function () {
		$.ajax({
			url: "http://maps.googleapis.com/maps/api/staticmap?zoom=18&size=1280x1000&center=" + lat + "," + lng + "&key=AIzaSyByEx9HKylftAX39JTcc0HKLVjkZ3rv_RA",
			success: function (response) {
				var mapRoute = "http://maps.googleapis.com/maps/api/staticmap?zoom=18&size=1280x1000&center=" + lat + "," + lng + "&key=AIzaSyByEx9HKylftAX39JTcc0HKLVjkZ3rv_RA";
				console.log(mapRoute);
				$('.js-map-image').attr('src', `${mapRoute}`);
			},
			error: function () {
				alert("ERROR");
			}
		});
	});
}
