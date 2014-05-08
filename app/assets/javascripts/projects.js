$(document).ready(function(){
	
	$('#new_pledge').submit(function(event){
		alert("in the pledge form");
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