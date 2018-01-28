<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
</head>


 <body >
 
 
 
<nav class="navbar navbar-expand-md  navbar-dark bg-dark fixed-top ">
		    <div class="container">
				<a class="navbar-brand" href="#">
				    <img src="${pageContext.request.contextPath}/resources/images/fitnessout.jpg" width="30" height="30" class="d-inline-block align-top rounded" alt="">
				    Visualizer
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
		            <a href="${pageContext.request.contextPath}/test/testpage" id="testingdata" class="nav-link">Test</a>
		          </li>
		          
		          <li class="nav-item">
		            <a href="${pageContext.request.contextPath}/admin/showMyLoginPage" id="login" class="nav-link">Login</a>
		          </li>
		          
		          <li class="nav-item">
		            <a href="${pageContext.request.contextPath}/visual/register" id="signup" class="nav-link">SignUp</a>
		          </li>
		          
		        </ul>
		      </div>
		    </div>
		  </nav>

 
 
 
 
 
 
<div class="card my-5 " style="height:680px;border:0;">
<img class="card-img " src="${pageContext.request.contextPath}/resources/images/fitnessout.jpg" style="height:100%;" alt="Card image">
  <div class="card-img-overlay">
    
    <p class="card-text"><h1 style="color:black;text-align:center;">Welcome to Workout Visualizer</h1></p>
    <p class="card-text"><h5 style="color:black;text-align:center;">We help to visualize your workout and play a crucial role in acheving your fitness goals</h5></p>
    <br><br>
    <div style="text-align:center">    
  
    <a href="${pageContext.request.contextPath}/visual/register" style="align:center;" class="btn btn-success"><i>SIGNUP FREE</i></a>
</div>
  </div>

</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>



 </body>
</html>