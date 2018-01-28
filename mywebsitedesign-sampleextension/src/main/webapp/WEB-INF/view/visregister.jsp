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
					
		<div class="col-md-2"> &nbsp;</div>
		<div class="col-md-8">
		<br>
			<div class="card ">
				<div class="card-header bg-light" style="color:green;text-align:center;"> SIGNUP</div>
					<div class="card-body"> 
						<form:form action="${pageContext.request.contextPath}/visual/registerdatadisplay" 
						  method="POST" modelAttribute="user" class="form" name="myform" onsubmit=" return myFunction();">
						
					<div class="form-row">	
					   <div class="col-md-6">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-envelope"></span>
			                			</div>
			                		</div>
		                		<form:input type="email" path="email" id="Email" name="Email" class="form-control" placeholder="Email" />
		            			</div>
		            	</div> <!-- End of Email -->					  
					  </div> <!-- End of Email column -->
						
					<div class="col-md-6">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-user"></span>
			                			</div>
			                		</div>
		                		<form:input type="text" path="username" id="Username" name="Username" class="form-control" placeholder="User name"/>
		            			</div>
		            	</div> <!-- End of username -->
				  </div> <!-- End of User name column -->	  				
				</div> <!-- End of first form row -->	
					
					<div class="form-row">
					<div class="col-md-6"><p id="demo"> </p> </div>
					</div>
					
					
				<div class="form-row">	
					   <div class="col-md-6">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-lock"></span>
			                			</div>
			                		</div>
		                		<form:input type="password" path="password" id="Password" name="Password" class="form-control" placeholder="Password" />
		            			</div>
		            	</div> <!-- End of password -->					  
					  </div> <!-- End of password column -->
						
					<div class="col-md-6">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-lock"></span>
			                			</div>
			                		</div>
		                		<form:input type="password" path="cnfpassword" id="Cnfrmpass" name="Cnfrmpass" class="form-control" placeholder="Confirm password" />
		            			</div>
		            	</div> <!-- End of cnfrm password -->
				  </div> <!-- End of cnfrm pass column -->	  				
				</div> <!-- End of second form row -->		
					
				
				
				<div class="form-row">	
						<div class="form-group col-md-6">
								<label for="FirstName"> First Name </label>
		                		<form:input type="text" path="firstname" id="FirstName" name="FirstName" class="form-control" placeholder="First Name" />
		            			
		            	</div> <!-- End of first name -->					  
					  
						<div class="form-group col-md-6">
								<label for="LastName"> Last Name </label>
		                		<form:input type="text" path="lastname" id="LastName" name="LastName" class="form-control" placeholder="Last Name"/>
		            			
		            	</div> <!-- End of last name -->
				  
				</div> <!-- End of third form row -->		
				
				
				<div class="form-row">	
						<div class="form-group col-md-3">
								<label for="Gender"> Gender</label>
		                		<form:select path="gender" id="Gender" name="Gender" class="form-control">
						        	<form:option value="" label="choose"/>
									<form:options items="${user.genderslist}"/>
						        </form:select>
		            			
		            	</div> <!-- End of Gender -->					  
					  
						
						<div class="form-group col-md-3">
							<label for="Age">Age</label>
							<form:input type="number" path="age" id="Age" class="form-control" placeholder=" Age "/>
						 </div> <!-- End of Age -->
						
						
						
						<div class="form-group col-md-3">
								<label for="Height">Height</label>
	
								<div class="input-group ">
		                			<form:input type="number" path="height" id="Height" class="form-control" placeholder=" Height "/>
		                			<div class="input-group-append">
	
		                			    <div class="input-group-text">
		                			    
			                			   <span>cms</span>
			                			</div>
			                		</div>
		                		
		            			</div>
		            	</div> <!-- End of Height -->
						
						
						
										 
						<div class="form-group col-md-3">
								<label for="Weight">Weight</label>
	
								<div class="input-group ">
		                			<form:input type="number" path="weight" id="Weight" class="form-control" placeholder=" weight "/>
		                			<div class="input-group-append">
	
		                			    <div class="input-group-text">
		                			    
			                			   <span>lbs</span>
			                			</div>
			                		</div>
		                		
		            			</div>
		            	</div> <!-- End of Weight -->
				  
				</div> <!-- End of fourth form row -->
				
				<div class="form-row">	
						<div class="form-group col-md-4">
								<label for="Appartment"> Appartment Number</label>
		                		<form:input type="text" path="aptnumber" class="form-control" id="Appartment" placeholder=" Appartment number "/>
		            			
		            	</div> <!-- End of appartment number -->					  
					  
					  <div class="form-group col-md-4">
								<label for="Street"> Street</label>
		                		<form:input type="text" path="street" class="form-control" id="Street" placeholder=" Street Name "/>
		            			
		            	</div> <!-- End of Street -->
						
					<div class="form-group col-md-4">
								<label for="City"> Town/city</label>
		                		<form:input type="text" path="town" class="form-control" id="City" placeholder=" Town/City "/>
		            			
		            	</div> <!-- End of Town/city -->

				</div> <!-- End of fifth form row -->
							
				
				
				
				<div class="form-row">	
						<div class="form-group col-md-4">
								<label for="State"> State</label>
		                		<form:input type="text" path="state" class="form-control" id="State" placeholder=" State Name "/>
		            			
		            	</div> <!-- End of State -->					  
					  
					  <div class="form-group col-md-4">
								<label for="Country">Country</label>
		                		<form:input type="text" path="country" class="form-control" id="Country" placeholder=" Country Name "/>
		            			
		            	</div> <!-- End of Country -->
						
					<div class="form-group col-md-4">
								<label for="Zip"> Zip</label>
		                		<form:input type="number" path="zip" class="form-control" id="Zip" placeholder=" Zip Code "/>
		            			
		            	</div> <!-- End of Zip -->

				</div> <!-- End of sixth form row -->
					
			</div> <!-- End of card Body -->
						
						<div class="card-footer">
								<div class="row">
									<div class="col-2">&nbsp;</div>
									<div class="col-4">
									  <a href="${pageContext.request.contextPath}/admin/showMyLoginPage" class="btn">Already had an Account?</a>
									</div>
									<div class="col-3">
									
							  			<button type="submit" class="btn btn-primary " > Create Free Account</button>
							  		</div>
							  </div>
							  </div>
						    
						   
					</form:form> 
					</div>
		
					
					</div> <!-- End of column -->
						   
					</div> <!-- End of row -->
					
					
				</div>	
				
<script type="text/javascript">
 function myFunction()
 {
	 <!--var result = str.fontcolor("red"); -->
	  <!--document.getElementById("Email").style.color="red"; -->
	  
	 if(document.myform.Email.value=="")
		 {
		 var str="Enter email";  
		 myform.Email.value = str; 
		 document.myform.Email.focus();
		 return false;
		 }
	 if(document.myform.Username.value=="")
		 {
		 myform.Username.value = "Enter User Name"; 
		 document.myform.Username.focus();
		 return false;
		 }
	 if(document.myform.Password.value=="")
	 	{
		 
	 	document.myform.Password.focus();
	 	return false;
	 	}
	 if(document.myform.Cnfrmpass.value=="")
	 	{
		 
	 	document.myform.Cnfrmpass.focus();
	 	return false;
	 	}
	 var pass1 = document.myform.Password.value;
	 var pass2 = document.myform.Cnfrmpass.value;
	 if(pass1!=pass2)
		 {
		 alert("Password and confirm password should be same");
		 document.myform.Password.focus();
		 document.myform.Cnfrmpass.focus();
		 return false;
		 }
	 
	 if(document.myform.FirstName.value=="")
	 	{
		 myform.FirstName.value = "Enter FirstName"; 
	 	document.myform.FirstName.focus();
	 	return false;
	 	}
	 
	 if(document.myform.LastName.value=="")
	 	{
		 myform.LastName.value = "Enter LastName"; 
	 	document.myform.LastName.focus();
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