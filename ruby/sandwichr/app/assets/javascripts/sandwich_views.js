// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on ('ready', function() {
	$('.js-ingredient-btn').on('click', function (event){
		var $idValue = $(event.currentTarget).data('id')
		var $sandwichID = $('.js-sandwich-id').data("sandwichid")
		var $name = $(event.currentTarget).text();
		console.log($idValue);
		addIngredient($idValue, $sandwichID, $name);
	});
});

// ************ DEFINITIONS ****************

function addIngredient (ingredientid, sandwichid, name) {
	$.ajax({
		type: "POST",
		data: {ingredient_id: ingredientid},
		url: "/api/sandwiches/" + sandwichid + "/ingredients/add",
		success: function (response) {
			var html = `
				<li> ${name} </li>
			`
			$(".js-ingredient-list").append(html);
		},
		error: function () {
			console.log("you really suck at jquery");
		}
	});
}