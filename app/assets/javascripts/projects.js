$(document).ready(function(){
	
	$('#new_pledge').submit(function(event){
		event.preventDefault();
		var url = $(this).attr('action');
		var data = $(this).serialize();
		console.log(url);
		
		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'script',
			data: data
		});

	});

});