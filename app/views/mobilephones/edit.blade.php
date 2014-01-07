@extends('layout.update')

@section('content')



<div class="row">
        <div class="form-group">
		  {{ Form::label('brand','Brand',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-5">	

		 {{ Form::select('brand',
		 	[
				"" => "---Select a Brand---",
				"alcatel" => "Alcatel",
				"apple" => "Apple",
				"acer" => "Acer",
				"asus" => "Asus",
				"benq" => "BenQ",
				"bird" => "Bird",
				"blackberry" => "Blackberry",
				"china-mobile" => "China Mobile",
				"dell" => "Dell",
				"ericsson" => "Ericsson",
				"google-nexus" => "Google Nexus",
				"haier" => "Haier",
				"hp" => "HP",
				"htc" => "HTC",
				"huawei" => "Huawei",
				"i-mate" => "I-Mate",
				"lenovo" => "Lenovo",
				"lg" => "LG",
				"mega-gate" => "Mega Gate",
				"motorola" => "Motorola",
				"nec" => "Nec",
				"nokia" => "Nokia",
				"Palm" => "Palm",
				"philips" => "Philips",
				"q-mobile" => "Q Mobile",
				"sagem" => "Sagem",
				"samsung" => "Samsung",
				"siemens" => "Siemens",
				"sony-ericsson" => "Sony Ericsson",
				"sprint" => "Sprint",
				"tecno" => "Tecno",
				"vodafone" => "Vodafone",
				"zte" => "ZTE",
				"other" => "Other",
					]
				,'Select a Brand',['class' =>'form-control','required'])}}  
		  </div>

		</div>
</div>


<div class="row">
    <div class="form-group">
    	{{ Form::label('is_replica','Features',['class' => 'control-label col-md-3'])}}
		  <div class="col-md-5">	
		   <span class="checkbox inline"> 
		 {{ Form::checkbox('is_replica','replica',false,['class' =>'form-control'])}}Replica 
		 </span>
		  <span class="checkbox inline">
		 {{ Form::checkbox('is_touch','touch',false,['class' =>'form-control'])}}Touch
		  </span>  
		  </div>
	</div>
</div>

@stop