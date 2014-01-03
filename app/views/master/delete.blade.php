@extends('master.master')



@section('mainContent')

<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default ">
     
      <div class="panel-body">
		
<!--   Start Here -->
	
<h1>Are you sure?</h1>
<p class"lead">Are you sure you want to delete the name Ebrima? All of the following related items will be deleted:</p>
<ul>
<li><a href="#">Ebrima</a></li>
</ul>





<!--   ends Here  -->






		@yield('content')
		
	  </div>
	   <div class="panel-footer">
			<form action="#" method="post">
			<input type="submit" id="deleteCustomer" name="deleteCustomer" value="Yes, I'm sure" class="btn btn-danger btn-lg">
			</form>

	   </div>
		
</div>   
</div> 

@stop 
