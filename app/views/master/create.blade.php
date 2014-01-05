@extends('master.master')



@section('mainContent')

<div class="col-md-12">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-plus fa-fw fa-2x "></span> Add Your Ad</h3>
        
      </div>
      <div class="panel-body">
		<div class="row">
		<div class="col-md-8">
			

      <form id="newAddForm" name="newAddForm" class="form-horizontal" role="form" action="" method="POST">
      <input type="hidden" id="category_id" name="category_id" value=""></input>

		<div class="row">
        <div class="form-group">
  		<label class=" control-label col-md-3" for="mainCategory">Select Category</label>
		  <div class="col-md-5">
		  <select id="mainCategory" name="mainCategory" class="form-control ">
		  <option value="">---Select a Category---</option>
		  	
		  	@foreach ($categories as $category)

		  		<optgroup value="" label="{{ $category['self']['name'] }}"> 

			  	@foreach ($category['children'] as $child) 
			  		<option value="{{ $child['id'] }}" data="{{ $child['route'] }}">{{ $child['name'] }}</option>
			  	
			  	@endforeach
		  		</optgroup>
		  	 
			@endforeach

		  </select> 
		  </div>
		</div>
		</div>
		<!--<input type="text" id="catName" name="catName">-->
		
		<div class="row " id="subCategoryDiv" style="display:none;">
        <div class="form-group">
  		<label class=" control-label col-md-3" for="subCategory"></label>
		  <div class="col-md-5">
		  <select id="subCategory" name="subCategory" class="form-control ">
		  <option value="">---Select a SubCategory---</option>
		  	
		  	

		  </select> 
		  </div>
		</div>
		</div>
		
			<div id="formPartial">

       			@yield('content')

			</div>

        
        <div class="row">
	        <div class="form-group">
			  {{ Form::label('title','Ad Title',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-5">	 
			 {{ Form::text('title','',['class' => 'form-control'])}}
			  </div>

			</div>
		</div>


		<div class="row">
	        <div class="form-group">
			  {{ Form::label('description','Description',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-6">	 
			 {{ Form::textarea('description','',['class' => 'form-control'])}}
			  </div>

			</div>
		</div>

		 <div class="row">
	        <div class="form-group">
			  {{ Form::label('price','Price',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-3">
			  <div class="input-group">
			  <span class="input-group-addon ">GMD</span>
			 {{ Form::text('price','',['class' => 'form-control'])}}
			  </div>
			  </div>

			</div>
		</div>


		<div class="row">
	        <div class="form-group">
			  {{ Form::label('image_path','Upload Image',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-5">	 
			 {{ Form::file('image_path')}}
			  </div>

			</div>
		</div>

		
	
	  </div>

	  <div class="col-md-4">
			<div class="panel panel-warning ">
				 <div class="panel-body small">
		      <h3><span class="fa fa-paperclip"></span> Quick rules</h3>
				<ul>
				<li>Make sure you post in the correct category.</li>
				<li>Do not post the same ad more than once. Duplicate ads will be rejected.</li>
				<li>Do not upload pictures with watermarks. Invalid pictures will be removed.</li>
				<li>Do not put your email or phone numbers in the title or description.</li>
				</ul>
				<p class="link">
				<a href="#">Click here to see all of our posting rules. </a>
				</p>
				</div>
				</div>
	  </div>
	</div>
	</div> 	
	  <div class="panel-footer">
			
       	<div class="row">
	       	<div class="form-group ">
			  <label class="control-label col-md-2" for="submit"></label>
			  <div class="col-md-4">
			    <input type="submit" id="submitAd" name="submitAd" class="btn btn-warning" value="Publish Ad" />
			  </div>
			</div>

       	</div>
       	</div>
       	</form>
		
</div>  

</div> 
</div> 

@stop 
