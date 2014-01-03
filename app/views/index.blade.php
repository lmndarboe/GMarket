@extends('master.master')

@section('mainContent')

<div class="row">
		
		<section id="main-search-bar" class="col-md-12">
			<div class="container-fluid">
			<div class="row">
				<div class="navbar navbar-inverse" role="navigation">
					<div class="navbar-header">
				      
				        <span class="navbar-brand" >Search by Category</span>
				    </div>
				  
				    <div class="collapse navbar-collapse navbar-ex1-collapse">
				    	<div class="col-sm-10 col-md-10">
					    	<form class="navbar-form" role="search" method="get" id="search-form" name="search-form">
					        	
						        <div class="input-group">
						            <input type="text" class="form-control" placeholder="Search..." id="query" name="query" value="">
							            <div class="input-group-btn">
						            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
						            &nbsp;<select class="form-control">
				    						<option value="0">All Categories</option>
				    						@foreach($categories as $category)
		  										<option value="{{ $category->id}}" >{{ $category->name}}</option>
		 									 @endforeach
				    					</select>
						            </div>
						        </div>

						         
					        </form>
				        </div>
				        
						
				    </div>
				</div>				
			</div>	
		</div>

		</section>
</div>

<div class="row">
		<section id="sidebar" class="col-md-3">
		<div class="panel panel-default ">
		  <div class="panel-heading">
		    <h3 class="panel-title">All Categories</h3>
		  </div>
		  <div class="panel-body">
		  <ul class="list-unstyled">
		  @foreach($categories as $category)
		  	<li class=""><a class="btn" href="#">{{ $category->name}}</a> <span class="badge">{{ $category->count}}</span></li>
		  @endforeach
		   </ul>
		   <!--
		    <ul class="list-group list-unstyled">
		    	<li class="list-group-item active">Properties  <span class="badge">9000</span></li>
		    	<li class="list-group-item">Electronics</li>
		    	<li class="list-group-item">Cars & Vehicles</li>

		    </ul>
		    -->
		    
		  </div>
		  </div>
		</section>
		<section id="main" class="col-md-9">
		<div class="panel panel-default ">
		  <div class="panel-heading">
		    <h3 class="panel-title">All Ads</h3>
		  </div>
		  <div class="panel-body">
		    Ads Here
		    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		  </div>
		  </div>
		</section>
		
</div>




@stop