<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<style>
a {
    text-decoration: none !important;
}

</style>

</head>

<body>

	<nav class="navbar navbar-expand-sm  navbar-dark bg-dark fixed-top ">
		    <div class="container">
				<a class="navbar-brand" href="#">
				    <security:authentication property="principal.username"/>
				  </a>
		      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class="collapse navbar-collapse" id="navbarCollapse">
		        <ul class="navbar-nav ml-auto">

		          <li class="nav-item">
		            <a href="https://www.beachbodyondemand.com/blog/20-motivational-quotes-to-help-you-reach-your-fitness-goals" 
		            target="_blank" id="motivation" class="nav-link">Motivation</a>
		          </li>
		          
		          <li class="nav-item">
		            <a href="${pageContext.request.contextPath}/admin/workoutinput"
		              id="workout" class="nav-link">Workout</a>
		          </li>
		          
		          <li class="nav-item">
		          	&nbsp; &nbsp;&nbsp;
		          </li>
		          <li class="nav-item">
		            <form:form class="form-inline" action="${pageContext.request.contextPath}/admin/logout" 
			   method="POST">
    					<button class="btn btn-outline-danger btn-block my-2 my-sm-0" type="submit">logout</button>
  					</form:form>
		          </li>
		          
		          
		        </ul>
		      </div>
		    </div>
		  </nav>
	


<br> <br> <br> <br> <br>

<!--  
	username:  <security:authentication property="principal.username"/> <br>
	password: <security:authentication property="principal.password"/> <br>
	-->
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header" style="text-align:center;color:red;">Day Visualization </div>
					<div class="card-body"> Click on the below link to visualize your last 12 days work out </div>
					<div class="card-footer" style="text-align:center;"><a class="block" href="${pageContext.request.contextPath}/admin/alldata" target="_blank">       My last 12 Day Visuals </a>	 </div>
				</div>
			</div>
			
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-header" style="text-align:center;color:red;">Week Visualization </div>
					<div class="card-body"> Click on the below link to visualize your last 12 weeks work out </div>
					<div class="card-footer" style="text-align:center;"><a class="block" href="${pageContext.request.contextPath}/admin/week" target="_blank">       My last 12 week Visuals </a>	 </div>
				</div>
			</div>
			
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-header" style="text-align:center;color:red;">Month Visualization </div>
					<div class="card-body"> Click on the below link to visualize your last 12 Months work out </div>
					<div class="card-footer" style="text-align:center;"><a class="block" href="${pageContext.request.contextPath}/admin/month" target="_blank">       My last 12 Month Visuals </a>	 </div>
				</div>
			</div>
			
		</div>
	</div>
	<br> <br> <br> <br>


	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
	
</body>
</html>