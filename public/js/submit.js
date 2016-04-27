$(document).ready(function(){
	$('form').submit(function(event){
		event.preventDefault();
		var formData = $(this).serializeArray();
		$.ajax({
			type : "POST", 
			url : 'orders.php',
			data : formData,
			success : addOrder
		});
		console.log(this);
	})
});

var addOrder = function(data){
	alert("Order processed successfully!");
	console.log(data);
};