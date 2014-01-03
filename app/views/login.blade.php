@extends('master.master')

@section('mainContent')
<div class="col-md-4 col-md-offset-4">
<div class="panel panel-default ">
      <div class="panel-heading">
        <h3 class="panel-title">Login Page</h3>
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
  <br> <br>
    <form class="form-horizontal center">
<fieldset>





<!-- Prepended text-->
<div class="form-group">
  <label class=" control-label" for="prependedtext"></label>
  <div class="col-md-12">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      <input id="username" name="username" class="form-control input-lg" placeholder="Username" required="" type="text">
    </div>
    
  </div>
</div>

<!-- Prepended text-->
<div class="form-group">
  <label class=" control-label" for="password"></label>
  <div class="col-md-12">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span> </span>
      <input id="password" name="password" class="form-control input-lg" placeholder="Password" required="" type="text">

    </div>

    
  </div>
</div>

<!-- Button -->
<div class="form-group pull-right">
  <label class="control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="suubmit" name="submit" class="btn btn-primary btn-lg">Login</button>
  </div>
</div>

</fieldset>
</form>
  </div>
  <div class="tab-pane" id="signup">...</div>
  
</div>


</div>
<br><br><br><br><br><br>
</div>   
</div> 

@section('mainContent')