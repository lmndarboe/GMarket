@extends('layout.master')


@section('mainContent')
<div class="row">
<div class="col-md-10 col-md-offset-1">
<!-- Product View panel -->
<div class="panel panel-default ">
     
     <!-- Panel Body -->
      <div class="panel-body"> 
		
			@yield('content')
		
	  </div>
	  <!-- End Panel Body -->
		@if(Auth::check())

		<!-- Panel Footer -->
	   <div class="panel-footer">
			
			<a href="{{ Request::url()."/edit" }}" class="btn btn-danger "><span class="glyphicon glyphicon-edit"></span> Edit AD</a>
			<a href="{{ "/delete/".$product->id}}" class="btn btn-danger  "><span class="fa fa-trash-o fa-fw"></span> Delete AD</a>

	   </div>
	   <!-- End Panel Footer -->
	   @endif
		
</div> 
  <!-- End Product View Panel-->
</div> 
</div>


<div class="row">
<div class="col-md-10 col-md-offset-1">
<!-- Related Product Panel View -->
<div class="panel panel-default ">
		<!-- Panel Heading -->
      <div class="panel-heading">
        <h3 class="panel-title">You might also like...</h3>
      </div>
      <!-- End Panel Heading -->


      <!-- Panel Body -->
      <div class="panel-body">
     	
     	<!-- Product List -->
		<div class="container-fluid">
		@foreach($related_products as $product)
		<a href="/{{ $product->category->route."/".$product->id}}">
		  <div class="col-sm-6 col-md-3">
		    <div class="thumbnail">
		      <img  class="pull-left img-thumbnail " src="/{{ $product->image_path }}">
		      <div class="caption">
		        <h4 class="pull-left">{{ $product->title }}</h4>
		        <p><span class=" btn btn-warning disabled">{{"GMD ".$product->price}}</span>
				<br><br>
		        </p>
		        
		      </div>
		    </div>
		  </div>
		  </a>
	
		@endforeach

		</div>
		<!-- End Product List -->
	  </div>

	  <!-- End Panel Body -->


		
</div>   
</div> 
</div>

@stop 
