$(document).ready(function(){
    $('input[name="country"]').amsifySuggestags({
		type : 'materialize'
	});
	$('input[name="color"]').amsifySuggestags({
		type : 'materialize',
		suggestions: ['Black', 'White', 'Red', 'Blue', 'Green', 'Orange']
	});
	$('input[name="toAjax"]').amsifySuggestags({
		type : 'materialize',
		suggestionsAction : {
			url : 'jquery-plugins/suggestags/examples/suggestions.php'
		}
	});
	$('input[name="planets"]').amsifySuggestags({
		type : 'materialize',
		suggestions: ['Mercury', 'Venus', 'Earth', 'Mars', 'Jupitor', 'Uranus', 'Neptune', 'Pluto'],
		whiteList: true
	});
	$('input[name="anything"]').amsifySuggestags({
		type : 'materialize',
		tagLimit: 5
	});
});
