$(document).ready(function(){
	$('#mainCategory').change(function(){
		$('#subCategoryDiv').hide();
		
		$('#category_id').val($('#mainCategory').val());
		$.ajax({
			type: "POST",
			url : "/ajax",
			dataType: 'json',
			data: {subCategory:$(this).val()},
			success: function(data){
				if(data[0]){
					$('#newAddForm').attr('action','');
					$('#subCategoryDiv').show();
					$('#subCategory').html('<option value="">---Select Category---</option>')
				}else{
					$('#newAddForm').attr('action',"/"+($('#mainCategory option:selected').attr('data')));
				}
				
				$.each(data,function(e){	
					$('#subCategory').append('<option value="'+data[e].id+'" data="'+data[e].route+'">'+data[e].name+'</option>');	
				});
				
			}
		});
});

	$('#subCategory').change(function(){
		$('#category_id').val($('#subCategory').val());
		$('#newAddForm').attr('action',"/"+($('#subCategory option:selected').attr('data')));
	});


	/*
	$('#submit').click(function(){
		//alert("Submitted");
			$.ajax({
			type: "POST",
			url : "/ajax2",
			//dataType: 'json',
			data: {category:$('#mainCategory').val(),name:$('#catName').val()},
			success: function(data){
				alert(data);
			}
		});
	});
	*/

});