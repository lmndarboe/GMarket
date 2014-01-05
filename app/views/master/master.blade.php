<!DOCTYPE html>
<html>
<head>
	<title>.::G-Market..</title>
	{{HTML::style('bootstrap/css/bootstrap.css')}}
	{{HTML::style('bootstrap/css/bootstrap-theme.css')}}
	{{HTML::style('font-awesome/css/font-awesome.css')}}

	{{HTML::style('css/style.css')}}


	
</head>
<body >



<div id="wrap">
<div class="container-fluid">

<header id="header">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<a class="navbar-brand three-d" href="/">G-Market</a>
	<p class="navbar-text navbar-right"><a href="/login" class="btn btn-success">Log In</a>&nbsp;  <a href="/post-ad" class="btn btn-warning">Post Your Ad</a></p>

  <ul class="nav navbar-nav">
  	
  	<li><a class="nav active" href="/">All Ads</a></li>
  	<li><a href="#">Help & Support</a></li>
  </ul>
</nav>
</header>



<section id="body" class="container ">
	@yield('mainContent')

</section>
	
	




<div id="footer">
<p class="text-muted credit text-center"> Copyright © Gamlabs Technologies.</p>


</div>

</div>
</div>
</body>

{{HTML::script('js/jquery.js')}}
{{HTML::script('bootstrap/js/bootstrap.js')}}
{{HTML::script('js/custom.js')}}
</html>