@extends('layout.master')

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
				    						<option value="">All Categories</option>
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
		  
		    
		  </div>
		  </div>
		</section>
		<section id="main" class="col-md-9">
		<div class="panel panel-default ">
		  <div class="panel-heading">
		    <h3 class="panel-title">
				All Ads
		    <div class="btn-group pull-right">
			    <a class="btn btn-primary btn-sm" id="list-products" href="#"><span class="glyphicon glyphicon-th-list"></span>&nbsp;List</a>
			    <a class="btn btn-default btn-sm " id="grid-products" href="#"><span class="glyphicon glyphicon-th"></span>&nbsp;Grid</a>
			</div>
			</h3>
		  </div>
		  <div class="panel-body">

			<div class="row">
			@foreach($products as $product)
			<a href="{{ $product->category->route.'/'.$product->id}}">
				<div id="products" style="background-color:#f5f5f5;">
					<div class="item thumbnail  col-md-12" style="padding-right:20px;">
					
					  <img height="90" width="120"  class="pull-left img-thumbnail " src="{{ $product->image_path }}">
					
					<caption class="text-center" style="padding-left:30px;">
					  <h4 > &nbsp;&nbsp;{{ $product->title . " - (". $product->category->name.")"}}</h4>
					  &nbsp;<span class="badge">{{ Utility::ago($product->created_at)}}</span>
					  <span class="pull-right">{{"GMD ".$product->price}}</span>
					  <p >
					  	
					  </p>
					  </caption>

				 	 </div>
				</div>
			</a>
			@endforeach
		
				</div>
	    
		  </div>
		  </div>
		</section>
		
</div>

@stop