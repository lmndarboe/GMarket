@extends('layout.view')

@section('content')
{{ $edit_url = "";$delete_url = ""}}
	<div class="">
		<div class="row">
		<h2 class="lead">&nbsp;&nbsp;{{ $product->title}}</h2>
			<div class="col-md-6">
				<img src="/{{$product->image_path}}" alt="" class="col-md-12 thumbnail"><br>
				<p class="col-md-12 bs-callout bs-callout-info">{{ $product->description}}</p>

			</div>	
			<div class="col-md-6 bs-callout bs-callout-warning lead">
			
				<dl class="dl-horizontal">
				<dt> <span class="fa fa-envelope-o fa-2x"></span> </dt><dd> {{ $product->user->email}}</dd>
					<dt> <span class="fa fa-phone fa-2x"></span> </dt><dd> {{ $product->user->phone_no}}</dd>
				  <dt>Price:</dt><dd> <span class="btn btn-info disabled">GMD {{ $product->price}} </span> </dd>
				  <dt>Location:</dt><dd> {{ $product->user->location}}</dd>
				  <dt>Brand:</dt><dd> {{ $product->brand}}</dd>
				  <dt>Features:</dt><dd> {{$product->is_touch.",".$product->is_replica}} </dd>
				  
				</dl>

				

			</div>
		

		</div>

	</div>
@stop

@section('related-content')
	

@stop