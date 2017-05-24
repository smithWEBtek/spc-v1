$(function(){
	getMapLink();
});

function initMap() {
	// Create a map object and specify the DOM element for display.
	var map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: 42.9656568, lng: -71.4972765},
		scrollwheel: false,
		zoom: 8
	});
}

function getMapLink(){
	$("td#geo_map").on("click", function(e){
	$.ajax({
		type: 'get',
		url: '/get_map',
		dataType: 'geocodes',
		success: function(response){
		for (var i = response.length - 1; i >= 0; i--) {
			$("div#map_show").append(response[i] + "<br>");
			}
		}
	});
	e.stopImmediatePropagation();
	e.preventDefault();
	});
}