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
		<div class="col-md-12">
		<br>
			<div class="card ">
				<div class="card-header bg-light" style="color:green;text-align:center;"> FILL THE FORM TO GET YOUR LIFE PARTNER RECCOMENDATIONS</div>
					<div class="card-body"> 
						<form:form action="${pageContext.request.contextPath}/rec/result" 
						  method="POST" modelAttribute="recUser" class="form" name="myform" onsubmit=" return myFunction();">
			
			
			
			
			<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="FirstName"> First Name </label>
		                		<form:input type="text" path="firstName" id="FirstName" name="firstName" class="form-control" placeholder="First Name"
		                		required="required" oninvalid="this.setCustomValidity('Enter First Name Here')" oninput="setCustomValidity('')"/>
		            			
		            	</div> <!-- End of first name -->					  
					  
						<div class="form-group col-md-6">
								<label for="LastName"> Last Name </label>
		                		<form:input type="text" path="lastName" id="LastName" name="lastName" class="form-control" placeholder="Last Name"
		                		required="required" oninvalid="this.setCustomValidity('Enter Last Name Here')" oninput="setCustomValidity('')"/>
		            			
		            	</div> <!-- End of last name -->
				  
				</div> <!-- End of third form row -->					
						
						
							<div class="form-row">	
						<div class="form-group col-md-3">
								<label for="Gender"> Gender</label>
		                		<form:select path="gender" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please select Gender')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.gendersList}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  
					  
						
						<div class="form-group col-md-3">
							<label for="Age">Age</label>
							<form:input type="number" path="age" id="Age" min="10" class="form-control" placeholder=" Age " required="required"/>
						 </div> <!-- End of Age -->
						
						
						<div class="form-group col-md-6">
								<label for="Gender"> Country</label>
		                		<form:select path="country" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please select Country')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.countriesList}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->
						
						
				</div> <!-- End of fourth form row -->
				
				
				
				
				
				<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 1. Best quality you are expecting from your partner</label>
		                		<form:select path="question1" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question1Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->	
		            	
		            	
		            	<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 2. Can your partner spend time with friends and family after marriage</label>
		                		<form:select path="question2" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')" >
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question2Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->				  	  
						
				</div>					
				
				
				
				
				
				<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 3. Is it ok for your partner to have past</label>
		                		<form:select path="question3" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question3Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->		
		            	
		            	
		            	
		            	<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 4. Is Work out should be an essential quality of your partner</label>
		                		<form:select path="question4" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question4Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  	  
									  	  
						
				</div>					
				
				
				
				<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 5. Who should comprise first in any quarrels b/w you and your partner</label>
		                		<form:select path="question5" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question5Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->			
		            	
		            	
		            	<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 6. Is your partner should be good in cooking</label>
		                		<form:select path="question6" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question6Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->			  	  
						
				</div>					
				
				
			
				
				
				<div class="form-row">	
						<div class="form-group col-md-6" style="color:blue;">
								<label for="Gender"> 7. Require any personal space or will share everything with your partner</label>
		                		<form:select path="question7" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question7Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  	  
						
						
						<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 8. Who is your first priority after marriage</label>
		                		<form:select path="question8" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question8Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  	  
						
				</div>					
				
				
				
				
				<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="Gender" style="color:blue;"> 9. Do you love to travel world with your partner</label>
		                		<form:select path="question9" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question9Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->	
		            	
		            	
		            	
		            	<div class="form-group col-md-6" style="color:blue;">
								<label for="Gender"> 10. What is your favourite color among these</label>
		                		<form:select path="question10" id="Gender" name="Gender" class="form-control" required="required"
		                		oninvalid="this.setCustomValidity('Please answer question')" oninput="setCustomValidity('')">
						        	<form:option value="" label="choose"/>
									<form:options items="${recUser.question10Data}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  	  				  	  
						
				</div>					
				
				
			
				
					
					
					
					</div>
										
						<div class="card-footer">
								<div class="row">
									<div class="col-3">&nbsp;</div>
									
									<div class="col-6">
									
							  			<button type="submit" class="btn btn-success btn-block" > GET RECOMMENDATIONS</button>
							  		</div>
							  </div>
							  </div>
						    
					</form:form> 	   
					
		
					
					</div> <!-- End of column -->
						   
					</div> <!-- End of row -->
					
					
				</div>	
				
				
				<br> <br> <br> <br><br> <br><br> <br>
				
<script type="text/javascript">

function myFunction()
{
	if(document.myform.firstName.value=="")
	 {
	 document.myform.firstName.focus();
	 return false;
	 }
	
	if(document.myform.lastName.value=="")
	 {
	 document.myform.lastName.focus();
	 return false;
	 }
	
	return (true);
	}

</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
 </body>
</html>