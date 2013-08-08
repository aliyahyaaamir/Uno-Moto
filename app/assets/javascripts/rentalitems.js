$( document ).ready(function() {
	$('#booking').hide();

	$('#rental_button').click(function() {
		$('#booking').show();
		return false;
		// == event.stopPropagation();
		// == event.preventDefault();
	});
});