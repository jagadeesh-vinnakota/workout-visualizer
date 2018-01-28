<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">

<!-- style="background-image: url('${pageContext.request.contextPath}/resources/images/moving_forward.jpg');" -->
 <body >
			
			
			
		 <h4> Hello <i> ${user.username}; </i>. Your registration is successfully done. Please click 
		 
		 <a href="${pageContext.request.contextPath}/admin/showMyLoginPage">here </a> 
		 to link to proceed further. </h4>
 				
					

 </body>
</html>