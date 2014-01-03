@extends('master.master')



@section('mainContent')

<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-default ">
	     
	       <div class="panel-body">
			
				<!--   Start Here -->
					
				<h1>Are you sure?</h1>
				<p class"lead">Are you sure you want to delete the Ad name {{ "Qcell Data Card" }}? All of the following related items will be deleted:</p>
				<ul>
				<li><a href="{{ "#" }}">Qcell Data Card</a></li>
				</ul>


				<!--   ends Here  -->


			@yield('content')
			
		   </div>
		   <div class="panel-footer">
			
				<a href="{{ "#" }}" class="btn btn-danger btn-lg "><span class="glyphicon glyphicon-remove"></span> Yes, I'm sure</a>

		   </div>
			
	</div>   
</div> 

@stop 
