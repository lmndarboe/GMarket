@extends('master.master')



@section('mainContent')
<div class="row">
<div class="col-md-12 col-md-offset-0">
<div class="panel panel-default ">
     
      <div class="panel-body">
		<h1>View Product Here</h1>
		@yield('content')
		<br><br><br><br><br><br><br><br><br><br>
	  </div>

	   <div class="panel-footer">
			
			<a href="#" class="btn btn-danger btn-lg "><span class="glyphicon glyphicon-edit"></span> Edit AD</a>
			<a href="#" class="btn btn-danger btn-lg "><span class="glyphicon glyphicon-remove"></span> Delete AD</a>



	   </div>
		
</div>   
</div> 
</div>


<div class="row">
<div class="col-md-12 col-md-offset-0">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title">You might also like...</h3>
      </div>
      <div class="panel-body">
     
		<h1>Related Products Here</h1>
		@yield('content')
		<br><br><br><br><br><br><br>
	  </div>


		
</div>   
</div> 
</div>

@stop 
