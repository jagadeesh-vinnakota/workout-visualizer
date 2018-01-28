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
</head>
<body>
<br><br><br><br><br>
<div class="row">
	<div class="col-md-4"> &nbsp;</div>
	<div class="col-md-4">
		<div class="card" style="border-color:lightblue;">
			
			<div class="card-header" style="text-align:center;color:green;"> Login</div>
			
			<div class="card-body">
				<form:form action="${pageContext.request.contextPath}/admin/authenticateTheUser" 
						  method="POST" modelAttribute="loginuser" class="form" name="myform" onsubmit="return validate();">
					
					
					<c:if test= "${param.error!=null }">
					
						<div class="alert alert-danger">Wrong username and password! </div>
					</c:if>
					
					<c:if test= "${param.logout!=null }">
					
						<div class="alert alert-success">Logged out successfully </div>
					</c:if>
					
					<div class="form-row">
						<div class="col-md-12">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-user"></span>
			                			</div>
			                		</div>
		                		<form:input type="text" path="username" id="username" name="username" class="form-control" placeholder="username"/>
		            			</div>
		            	</div> <!-- End of Email -->					  
					  </div> <!-- End of Email column -->
					</div>
		
					<div class="form-row">
						<div class="col-md-12">
						<div class="form-group">
								<div class="input-group">
		                			<div class="input-group-prepend">
		                			    <div class="input-group-text">
			                			   <span class="fa fa-lock"></span>
			                			</div>
			                		</div>
		                		<form:input type="password" path="password" id="password" name="password" class="form-control" placeholder="password"/>
		            			</div>
		            	</div> <!-- End of Email -->					  
					  </div> <!-- End of Email column -->
					</div>

								  
			</div> <!-- End of card body -->
			
			<div class="card-footer">
					<button type="submit" class="btn btn-success btn-block "> Login </button>
			</div>
			</form:form>
		</div>
	</div>
</div>

<script type="text/javascript">
function validate()
{
		if(document.myform.username.value=="")
		{
			myform.username.value = "Enter User Name"; 
			document.myform.username.focus();
			return false;
		}
		if(document.myform.password.value=="")
		{
		
			document.myform.password.focus();
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