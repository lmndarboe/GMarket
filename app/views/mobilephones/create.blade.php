<div class="row">
        <div class="form-group">
		  {{ Form::label('brand','Brand',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-5 ">	 
		   {{ Form::radio('product_for','sale',true,['class' =>'form-control'])}}Sale
		   {{ Form::radio('product_for','wanted',true,['class' =>'form-control'])}}Wanted
		  </div>

		</div>
</div>

<div class="row">
        <div class="form-group">
		  {{ Form::label('brand','Brand',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-5">	 
		 {{ Form::select('brand',[''=>'---Select a Brand---'],'Select a Brand',['class' =>'form-control'])}}  
		  </div>

		</div>
</div>


<div class="row">
    <div class="form-group">
    	{{ Form::label('is_replica','Features',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-5">	 
		 {{ Form::checkbox('is_replica','replica',false,['class' =>'form-control'])}}Replica
		 {{ Form::checkbox('is_touch','touch',false,['class' =>'form-control'])}}Touch
		  		  
		  </div>
	</div>
</div>