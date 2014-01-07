@extends('layout.master')



@section('mainContent')

<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-default ">
	     
	       <div class="panel-body">
			
				<!--   Start Here -->
					
				<h1>Are you sure?</h1>
				<p class"lead">Are you sure you want to delete the Ad name {{ $product->title }}? All of the following related items will be deleted:</p>
				<ul>
				<li><a href="/{{ $product->category->route."/".$product->id }}">{{ $product->title}}</a></li>
				</ul>


				<!--   ends Here  -->


			@yield('content')
			
		   </div>
		   <div class="panel-footer">

		    {{ Form::open(['url' => $product->category->route."/".$product->id, 'method' => 'DELETE'])}}
				
				<button class="btn btn-danger btn-lg ">

				<span class="fa fa-trash-o fa-fw"></span>Yes, I'm sure</button>
			{{ Form::close()}}
		   </div>
			
	</div>   
</div> 

@stop 
