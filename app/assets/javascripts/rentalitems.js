$( document ).ready(function() {
	$('#booking').hide();

	$('#rental_button').click(function() {
		$('#booking').show();
		return false;
		// == event.stopPropagation();
		// == event.preventDefault();
	});
	$('#search').typeahead({
		name: 'items',
		remote: '/rental_items/search.json?%QUERY'
	});
});