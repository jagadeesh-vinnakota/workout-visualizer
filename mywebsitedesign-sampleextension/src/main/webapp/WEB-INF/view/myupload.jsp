<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

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
			
	<div class="container">
					
	  <div class="row">
					
		<div class="col-md-4"> &nbsp;</div>
		<div class="col-md-4">
		<br>
			<div class="card ">
				<div class="card-header bg-light" style="color:green;text-align:center;"> WORKOUT DETAILS </div>
					<div class="card-body"> 
						<form:form action="${pageContext.request.contextPath}/recommonder/save" 
						  method="POST" modelAttribute="imageUser" class="form" name="myform">
						
					<div class="form-row">	
					   <div class="col-md-12">
						  <div class="form-group">		
		                	 <label for="minutes"> Upload a file </label>
		                	 <form:input type="file" path="image" id="Time" name="time" required="required" class="form-control-file" placeholder="timespent in minutes"/>
		            	  </div>
		            	</div> <!-- End of Email -->					  
					</div> <!-- End of Email row -->	
					
				</div> <!-- End of card body-->	
											    
					 <div class="card-footer">
								<button type="submit" class="btn btn-success btn-block "> Save </button>
					</div>
					</form:form> 
					</div>
		
					
					</div> <!-- End of column -->
						   
					</div> <!-- End of row -->
					
					
				</div>	
				
	<script type="text/javascript">
		
	function validate()
	{
		
			if(document.myform.time.value == "0")
			{
				document.myform.time.focus();
				return false;
			}
			
			
			if(document.myform.calories.value == "0")
			{
				document.myform.calories.focus();
				return false;
			}
			
			
	
			if(new Date(document.myform.date.value) > new Date())
				{
				alert("you can not select the DATE in FUTURE");
				return false;
				}
			
			return true;
	}
	
	</script>			

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
 </body>
</html>