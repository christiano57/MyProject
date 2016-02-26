// app.js

$(document).on("ready", function () { 
	$('.js-submit').on('click', onSubmit);
	printTime();
});

// ------------- DEFINITIONS ---------------

	function onSubmit (event) {
		event.preventDefault();
		console.log(event);
		var searchTerm = $('.js-searchterm').val();
		fetchResults (searchTerm);
	};

function fetchResults (term) {
	$.ajax({
		// console.log(searchTerm);
	    url: "https://api.spotify.com/v1/search?type=artist&query=" + term,
	    success: function (response) {
	      console.log(response);
	      arrayOfArtists = response.artists.items;
	      console.log(arrayOfArtists);
	      displayResults (arrayOfArtists)
	      alert("Searching!");
	    },
	    error: function () {
	      alert("2chainz downgraded to 1 chain.");
	    }
	  });
}

function displayResults (results) {

	function showResult (artist, index, array) {
		if ( artist.images[0] == undefined) {
			var image = "no image"
		} else {
			image = artist.images[0].url
		}
		console.log(image)
		var html = `<li>${artist.name}</li>
					<li><img src="${image}"></li>
				`
		$('.js-artist-list').append(html);
	};
	results.forEach(showResult); 
			
};

function printTime () {
  var current = $('.js-player').prop('currentTime');
  console.debug('Current time: ' + current);
}

// Have printTime be called when the time is updated
$('.js-player').on('timeupdate', printTime);