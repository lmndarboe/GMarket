<!DOCTYPE html>
<html>
<head>
	<title>::G-Market..</title>
	{{HTML::style('bootstrap/css/bootstrap.css')}}
	{{HTML::style('css/style.css')}}


	{{HTML::script('js/jquery.js')}}
</head>
<body >
<div id="wrap">
<div class="container-fluid">

<div id="header">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<a class="navbar-brand three-d" href="#">G-Market</a>
	<p class="navbar-text navbar-right"><a href="#" class="btn btn-success">Log In</a>&nbsp;  <a href="#" class="btn btn-warning">Sign Up</a></p>

  <ul class="nav navbar-nav">
  	
  	<li><a class="active" href="#">All Ads</a></li>
  	<li><a href="#">Help & Support</a></li>
  </ul>
</nav>
</div>



<div class="container ">
	@yield('mainContent')

</div>
	
	




<div id="footer">
<p class="text-muted credit text-center">Gamlabs Inc.&reg;</p>


</div>

</div>
</div>
</body>
</html>