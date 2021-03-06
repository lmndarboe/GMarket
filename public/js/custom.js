$(document).ready(function(){
	 $('#grid-products').click(function(){$('#products .item').addClass('col-md-2');});
	 $('#list-products').click(function(){$('#products .item').removeClass('col-md-2');});



	function sendAjax(id){

		$.ajax({
			type: "POST",
			url : $('#'+id+' option:selected').attr('data'),
			dataType: 'json',
			data: {subCategory:$(this).val()},
			success: function(data){
				alert(data);
			}
		});
	}
	

	$('#mainCategory').change(function(){
		$('#subCategory').attr('required',false);
		$('#subCategoryDiv').hide();
		$('#formPartial').html(' ');
		
		$('#category_id').val($('#mainCategory').val());
		$.ajax({
			type: "POST",
			url : "/ajax",
			dataType: 'json',
			data: {subCategory:$(this).val()},
			success: function(data){
				if(data[0]){
					$('#newAddForm').attr('action','');
					$('#subCategory').attr('required',true);
					$('#subCategoryDiv').show();
					$('#subCategory').html('<option value="">---Select a Subcategory---</option>')
				}else{
					$('#newAddForm').attr('action',"/"+($('#mainCategory option:selected').attr('data')));
					$.ajax({
						type: "GET",
						url : $('#mainCategory option:selected').attr('data')+'/create',
						//dataType: 'json',
						//data: {subCategory:$(this).val()},
						success: function(data){
							$('#formPartial').html(data);
						}
					});
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

		//$('#category_id').val($('#mainCategory').val());
		$.ajax({
			type: "GET",
			url : $('#subCategory option:selected').attr('data')+'/create',
			//dataType: 'json',
			//data: {subCategory:$(this).val()},
			success: function(data){
				$('#formPartial').html(data);
			}
		});
	});

	$("#newAddForm").validate();

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