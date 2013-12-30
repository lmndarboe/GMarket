@extends('master')

@section('mainContent')
<div class="container">
<div class="row">
		
		<div class="col-md-12 ">
			<div class="container-fluid">
			<div class="row">
				<div class="navbar navbar-inverse" role="navigation">
					<div class="navbar-header">
				      
				        <a class="navbar-brand" rel="home" href="#" title="Buy Sell Rent Everyting">Search by Category</a>
				    </div>
				  
				    <div class="collapse navbar-collapse navbar-ex1-collapse">
				    	<div class="col-sm-10 col-md-10">
					    	<form class="navbar-form" role="search" method="get" id="search-form" name="search-form">
					        	
						        <div class="input-group">
						            <input type="text" class="form-control" placeholder="Search..." id="query" name="query" value="">
							            <div class="input-group-btn">
						            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
						            &nbsp;<select class="form-control">
				    						<option>All Categories</option>
				    					</select>
						            </div>
						        </div>

						         
					        </form>
				        </div>
				        
						
				    </div>
				</div>				
			</div>	
		</div>

		</div>
</div>

<div class="row">
		<div class="col-md-3 well ">
			<div class="page-header">
				<h3>Left NavigationPane</h3>
			</div>
			<br><br><br><br><br><br>
		</div>
		<div class="col-md-9 well">
			<h1>Main Content Pane</h1><br><br><br><br><br><br>
		</div>
</div>


</div>

@stop