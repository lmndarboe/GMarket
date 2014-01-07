@extends('layout.master')



@section('mainContent')

<div class="col-md-12 col-md-offset-0">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-edit fa-fw fa-2x"></span> Edit Your Ad</h3>
      </div>
      <div class="panel-body">
		<div class="container">
		
		{{ Form::model($product,['url' =>$product->category->route."/".$product->id,'class' => 'form-horizontal','method' => 'PUT','files' => true])}}	
		
		
		<div class="row">
        <div class="form-group">
		  {{ Form::label('product_for','For/Or',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-2">	 
		 		{{ Form::select('product_for',
		 	[
		 	"" => "---Select One---",
		 	"sale" => "Sale",
			"wanted" => "Wanted",
			],'For',['class' =>'form-control','required'])
			}}
		  </div>

		</div>
		</div>


		
			<div id="updateformPartial">

       			@yield('content')

			</div>

        
        <div class="row">
	        <div class="form-group">
			  {{ Form::label('title','Ad Title',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-5">	 
			 {{ Form::text('title',null,['class' => 'form-control','required'])}}
			  </div>

			</div>
		</div>


		<div class="row">
	        <div class="form-group">
			  {{ Form::label('description','Description',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-6">	 
			 {{ Form::textarea('description',null,['class' => 'form-control','required'])}}
			  </div>

			</div>
		</div>

		 <div class="row">
	        <div class="form-group">
			  {{ Form::label('price','Price',['class' => 'control-label col-md-3','required'])}}
			  <div class="col-md-3">
			  <div class="input-group">
			  <span class="input-group-addon ">GMD</span>
			 {{ Form::text('price',null,['class' => 'form-control','required'])}}
			  </div>
			  </div>

			</div>
		</div>


		<div class="row">
	        <div class="form-group">
			  {{ Form::label('image_path','Upload Image',['class' => 'control-label col-md-3','required'])}}
			  <div class="col-md-5">
			  <span class="btn btn-info btn-file">Browse
			 {{ Form::file('image_path',['value' =>''])}}
			 </span>	 
			  </div>

			</div>
		</div>


		<div class="row">
	        <div class="form-group">
			  {{ Form::label('','',['class' => 'control-label col-md-3'])}}
			  <div class="col-md-5">	 
			 {{ Form::submit('Edit Product',['class' => 'control-label col-md-3 btn btn-primary'])}}
			  </div>

			</div>
		</div>




		

		</div>

		{{ Form::close()}}
	  </div>
		
</div>   
</div> 

@stop 
