$(document).ready(function(){
	
	$('#new_pledge').submit(function(event){
		event.preventDefault();
		var url = $(this).attr('action');
		var data = $(this).serialize();
				
		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'script',
			data: data
		});

	});

	$('#new_comment').submit(function(event){
		event.preventDefault();

		var url = $(this).attr('action');
		var data = $(this).serialize();

		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'script',
			data: data
		});
	});

	$(function() {
     $("#new_comment")
        .on('ajax:beforeSend', function() { // set this code to happen just before the ajax request is made
          $("input[type='submit']") // make changes to the submit button
            .val('Saving...') // change the text on the button
            .attr('disabled', 'disabled'); // disable the button
        })
        .on('ajax:complete', function() {
          $("input[type='submit']")
            .val('Create Review')
            .removeAttr('disabled');
        });
  });
  
});