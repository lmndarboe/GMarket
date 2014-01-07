@extends('layout.master')

@section('mainContent')
<div class="jumbotron">
<div class="row">
<div class="col-md-6 ">
  <h2>Manage all your ads in one place - for free!</h2>
  <br>
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat....</p>
  <p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>
</div>





<div class="col-md-5 col-md-offset-1" >
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title"><span class="fa fa-user fa-fw fa-2x"></span> </h3>
      </div>
      <div class="panel-body">

      <!-- Nav tabs -->
<ul class="nav nav-tabs ">
  <li class="active"><a href="#login" data-toggle="tab">Login</a></li>
  <li><a href="#signup" data-toggle="tab">Sign Up</a></li>
 
</ul>

<!-- Tab panes -->
<div class="tab-content ">
  <div class="tab-pane active" id="login">
  <p>
  
    @if(Session::has('flashMessage'))
      
      <span class="fa fa-warning ">
      <small>
      {{ Session::get('flashMessage') }}
      </small>
      </span>
     
    @endif
  
   </p>
    <form class="form-horizontal center" method="POST" action="/session">
<fieldset>





<!-- Prepended text-->
<div class="form-group">
  <label class=" control-label" for="email"></label>
  <div class="col-md-12">
    <div class="input-group">
      <span class="input-group-addon"><span class="fa fa-envelope-o fa-2x"></span></span>
      <input type="text" id="email" name="email" class="form-control input-lg" placeholder="Email" required="" type="text" value="{{ Input::old('email') }}">
    </div>
    
  </div>
</div>

<!-- Prepended text-->
<div class="form-group">
  <label class=" control-label" for="password"></label>
  <div class="col-md-12">
    <div class="input-group">
      <span class="input-group-addon"><span class="fa fa-key fa-2x"></span> </span>
      <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Password" required="" type="text">

    </div>

    
  </div>
</div>

<!-- Button -->
<div class="form-group pull-right">
  <label class="control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary btn-lg">Login</button>
  </div>
</div>

</fieldset>
</form>
  </div>
  <div class="tab-pane" id="signup">...</div>
  
</div>


</div>

</div>   
</div> 
</div>



</div>
@stop