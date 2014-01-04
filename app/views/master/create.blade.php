@extends('master.master')



@section('mainContent')

<div class="col-md-12 col-md-offset-0">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-plus fa-fw fa-2x "></span> Add Your Ad</h3>
        
      </div>
      <div class="panel-body">

			<div class="pull-right col-md-4">
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

      <form class="form-horizontal" role="form">

		<div class="row">
        <div class="form-group">
  		<label class=" control-label col-md-2" for="prependedtext">Select Category</label>
		  <div class="col-md-4">
		  <select class="form-control ">
		  <option value="">---Select Category---</option>
		  	
		  	@foreach ($categories as $category)

		  		<optgroup value="" label="{{ $category['self']['name'] }}"> 

			  	@foreach ($category['children'] as $child) 
			  		<option value="{{ $child['id'] }}">{{ $child['name'] }}</option>
			  	
			  	@endforeach
		  		</optgroup>
		  	 
			@endforeach

		  </select> 
		  </div>
		</div>
		</div>
		

       		@yield('content')


        </form>
		
	
		<br><br><br><br>
	  </div>
	  
	  <div class="panel-footer">
			
       	<div class="row">
	       	<div class="form-group ">
			  <label class="control-label col-md-2" for="submit"></label>
			  <div class="col-md-4">
			    <button id="submit" name="submit" class="btn btn-warning">Publish Ad</button>
			  </div>
			</div>

       	</div>
       	</div>
		
</div>   
</div> 

@stop 
