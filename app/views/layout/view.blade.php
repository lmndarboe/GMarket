@extends('layout.master')



@section('mainContent')
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default ">
     
      <div class="panel-body">
		
		@yield('content')
		
	  </div>
		@if(Auth::check())
	   <div class="panel-footer">
			
			<a href="{{ Request::url()."/edit" }}" class="btn btn-danger "><span class="glyphicon glyphicon-edit"></span> Edit AD</a>
			<a href="{{ "/delete/".$product->id}}" class="btn btn-danger  "><span class="fa fa-trash-o fa-fw"></span> Delete AD</a>

			

	   </div>
	   @endif
		
</div>   
</div> 
</div>


<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title">You might also like...</h3>
      </div>
      <div class="panel-body">
     
		<div class="container-fluid">
		@foreach($related_products as $product)

		
		
		<a href="#">
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
	









		<!--
		<div class="item thumbnail  col-md-3">
					
			 <img height="100" width="100"  class="pull-left img-thumbnail " src="/{{ $product->image_path }}">
					
			<caption >
					  <h4 >{{ $product->title }}</h4>
					  <span class="pull-right">{{"GMD ".$product->price}}</span>
					  <p >
					  	
					  </p>
			</caption>

		</div>

	-->

		@endforeach
		@yield('related-content')
		</div>
	  </div>


		
</div>   
</div> 
</div>

@stop 
