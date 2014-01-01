@extends('master')
<div class="col-md-6 col-md-offset-3">
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
  <br>
    <form class="form-horizontal center">
<fieldset>





<!-- Prepended text-->
<div class="form-group">
  <label class="col-md-2 control-label" for="prependedtext"></label>
  <div class="col-md-6">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      <input id="prependedtext" name="prependedtext" class="form-control" placeholder="Username" required="" type="text">
    </div>
    
  </div>
</div>

<!-- Prepended text-->
<div class="form-group">
  <label class="col-md-2 control-label" for="prependedtext"></label>
  <div class="col-md-6">
    <div class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span> </span>
      <input id="prependedtext" name="prependedtext" class="form-control" placeholder="Password" required="" type="text">
    </div>
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-2 control-label" for="suubmit"></label>
  <div class="col-md-4">
    <button id="suubmit" name="suubmit" class="btn btn-primary">Login</button>
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