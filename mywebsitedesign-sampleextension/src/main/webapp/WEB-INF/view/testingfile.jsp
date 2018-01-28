	<html>

<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	
	<!--  -->
	<style>
			.dropdown:hover .dropdown-menu {
			display: block;
			}
			

			.carousel,.item{
   					height:100%;
 					}
 					
 					
		.carousel-inner{
    			height:100%;
    			}
			
			

a {
    text-decoration: none !important;
}

	</style>
	
</head>

<!-- ${pageContext.request.contextPath}/basic/hello -->
<body id="home" > <!--   style="background-color:#AED6F1;" -->

		<!-- NAVIGATION BAR -->
		<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top pb-10 ">
		    <div class="container">
		      <a href="#" class="navbar-brand">Jagadeesh</a>
		      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class="collapse navbar-collapse" id="navbarCollapse">
		        <ul class="navbar-nav ml-auto">
		          
		          <li class="nav-item">
		            <a href="#profile" id="myprofile" class="nav-link">profile</a>
		          </li>
		          <li class="nav-item">
		            <a href="#education" class="nav-link">Education</a>
		          </li>
		          <li class="nav-item">
		            <a href="#projects" class="nav-link">Projects</a>
		          </li>
		          <li class="nav-item">
		            <a href="#" class="nav-link">Gallery</a>
		          </li>
		          <li class="nav-item">
		            <a href="#cricket" class="nav-link">cricket</a>
		          </li>
		          <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> System <b class="caret"> </b> </a>
                      <ul class="dropdown-menu bg-dark">
                        <a href="#mylinks" class="dropdown-item " style="color:green;"> My Motivation </a>
                        <a href="#myquotes" class="dropdown-item " style="color:green;"> My Quotes </a>
                        <a href="#myattitude" class="dropdown-item " style="color:green;"> My Attitude </a>

                      </ul>
                  </li>
		        </ul>
		      </div>
		    </div>
		  </nav>





 


		
        <div id="slider4" class="carousel slide md-12 " id="silde-images" data-ride="carousel" style="backgroundcolor:white;">
          <ol class="carousel-indicators">
            <li class="active" data-target="#silder4" data-slide-to="0"> </li>
            <li data-target="#silder4" data-slide-to="1"> </li>
            <li data-target="#silder4" data-slide-to="2"> </li>
            <li data-target="#silder4" data-slide-to="3"> </li>
            <li data-target="#silder4" data-slide-to="4"> </li>
            <li data-target="#silder4" data-slide-to="5"> </li>
            <li data-target="#silder4" data-slide-to="6"> </li>
            <li data-target="#silder4" data-slide-to="7"> </li>

          </ol>
          <div class="carousel-inner" role="listbox" id="ac">
            <div class="carousel-item active">
              <img src="${pageContext.request.contextPath}/resources/images/mypic.JPG" class="d-block img-fluid " alt="First Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/fbcover.JPG" class="d-block img-fluid" alt="Second Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/cali.JPG"  class="d-block img-fluid" alt="Third Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/springfield.JPG"  class="d-block img-fluid" alt="Third Slide">
              
               </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/water.JPG"  class="d-block img-fluid" alt="Third Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/falls.JPG"  class="d-block img-fluid" alt="Third Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/houston.JPG"  class="d-block img-fluid" alt="Third Slide">
              
            </div>
            <div class="carousel-item">
              <img src="${pageContext.request.contextPath}/resources/images/niagara.JPG"  class="d-block img-fluid" alt="Third Slide">
              
            </div>

            
          </div>
          <a class="carousel-control-prev" data-slide="prev" href="#slider4">
              <span class="carousel-control-prev-icon"> </span>
           </a>

           <a class="carousel-control-next" data-slide="next" href="#slider4">
               <span class="carousel-control-next-icon"> </span>
            </a>
        </div>

























<br> <br> <br>


<!-- CONTAINER FOR IMAGES AND INFO -->
<div class="container py-5 " id="profile"> 
  <div class="row"> 
    <div class="col">	
      <div class="card" style="border:0;">
		  <div class="card-body"> <!--   style="background-color:#AED6F1;" > -->
		    <div class="row" >
		    	<div class="col-md-5" >
		    	   <img src="${pageContext.request.contextPath}/resources/images/jagadeesh.jpg" class="img-fluid  rounded-circle pt-3 "/>
		    		<div class="container " style="text-align:center;">
		    			<div class="row" >
		    				<div class="col-1">&nbsp;</div>
		    				<div class="col-10">
		    				
		    					<div class="card" style="border:0;">
		    						<div class="card-body" > <!--  style="background-color:#AED6F1;"> -->
		    							
		    							<a href="https://www.linkedin.com/in/jagadeeshvinnakota/" target="_blank"> <img src="${pageContext.request.contextPath}/resources/images/linkedIn.png" style="border:0;height:50px;" class="img-fluid img-thumbnail pt-3 "/> </a>
									    <a href="https://www.facebook.com/jagadeesh.vinnakota"  target="_blank"> <img src="${pageContext.request.contextPath}/resources/images/fb.png" style="height:50px;border:0;" class="img-fluid img-thumbnail pt-3 "/> </a>
									    <a href="https://twitter.com/jagadeeshvinnak" target="_blank"> <img src="${pageContext.request.contextPath}/resources/images/twitter.png" style="height:50px;border:0;" class="img-fluid img-thumbnail pt-3 "/> </a>
		    						</div> <!-- End of contact images card body -->
		    					</div> <!-- End of contact images card -->	
		    				</div> <!-- End of contact images column -->
		    			</div> <!-- End of contact images row -->
		    		</div> <!-- End of contact images container -->
		    	</div> <!-- End of image column -->
		    	
		    	<div class="col-md-7"> 
		    		<p style="font-size:22px" > <br> <br> <br> <br> <br><br>  	Hey, Welcome to my world. I'm <strong> jagadeesh vinnakota </strong>
		    		a computer science professional with hands on experience in web development and data science. I'm an innovative 
		    		person, a team player, leader who love to learn and adapt to trending technologies. A part from technologies, i'm an active member of many 
		    		cricket clubs namely NIU Huskies cricket club, Northern Blues Cricket Club and Deccan Mavericks.
		    		</p>
		    		
		    	</div> <!-- End of image column -->
		    </div> <!-- End of row -->
		  </div> <!-- End of card body -->	
     </div> <!-- End of image card -->
	</div> <!-- End of outer column -->
  </div> <!-- End of outer row -->
 </div>  <!--  End of container -->  

	 <br><br><br><br><br><br>
	
	
	<!-- CONTAINER FOR EDUCATION INFORMTAION -->
<!--  <div class="container py-5 " id="education" style="height:100%;width:100%;"> -->
 <!--  <div class ="row" style="height:100%;width:100%;"> -->
  <!--  <div class="col">	 -->
  
  <section id="education">
  <div class="container pt-5 ">
  
  
  		 <h1 data-toggle="tooltip" data-placement="top" class="col-md-12" style="text-align:center;color:green;"  
  		 title="traverse this section to know about my education">-----My Education----- </h1>
  
  </div>
<br>
   
 <div class="card  pb-5" style="border:0;">
  	<div class="card-header" style="background-color:#AED6F1;" > 
    	<ul class="nav nav-tabs card-header-tabs pull-right"  id="myTab" role="tablist">
    
      
      
	      <li class="nav-item">
	        <a class="nav-link active" id="masters-tab" data-toggle="tab" href="#masters" role="tab" aria-controls="masters" aria-selected="true">Masters</a>
	      </li>
	      
	      <li class="nav-item">
	        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#bachelors" role="tab" aria-controls="bachelors" aria-selected="false">Bachelors</a>
	      </li>
	      
	      <li class="nav-item">
	        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#school" role="tab" aria-controls="school" aria-selected="false">School</a>
	      </li>
	    
	   </ul>
  
   </div> <!--  End of card header -->
  
   <div class="card-body">  <!--    style="background-color:#AED6F1;">  -->
    <div class="tab-content" id="myTabContent">
   		
        <div class="tab-pane fade show active" id="masters" role="tabpanel" aria-labelledby="masters-tab">
        <br> <br>
        	<h4 class="card-title">
			    <div class="container">
		           <div class="row">
		              <div class="col-md-3">
		                    <a href="http://www.niu.edu/index.shtml" target="_blank"  data-toggle="tooltip" data-placement="top" title="click to know more about NIU">		
		                	 <img class="img-fluid img-rounded" src="${pageContext.request.contextPath}/resources/images/niu.jpg" alt="Card image cap">
		                    </a>
		               </div> <!-- End of column div -->
		                		<div class="col-1"> &nbsp;</div>
		                <div class="col-md-6">
		                	<h3><br> <a href="http://www.cs.niu.edu/" target="_blank" data-toggle="tooltip" data-placement="top" title="click to know more about computer science at niu"> Computer Science</a> </h3> <br>
		                	<h5> Cricket Club President</h5>
		                </div> <!-- End of column div -->
		           </div> <!-- End of row -->
		        </div> <!-- End of container -->
			</h4> <br> <br>
		    <p class="card-text">The department's curriculum reflects a useful balance between theory and practice. Many, if not most, 
		    courses involve substantial programming or design assignments. At the same time, the theoretical and intellectual content 
		    necessary for a deep understanding of concepts and a basis for future acquisition of new knowledge and skills</p>
		 <!--     <a class="btn btn-primary" href="#">Read More</a> -->
        </div> <!--  End of masters div -->
  		<div class="tab-pane fade" id="bachelors" role="tabpanel" aria-labelledby="profile-tab">
  			<h4 class="card-title">
			    <div class="container">
		           <div class="row">
		              <div class="col-md-3">
		                    <a href="http://www.gitam.edu/" target="_blank" >		
		                	 <img class="img-fluid img-rounded" src="${pageContext.request.contextPath}/resources/images/GITAM.jpg" alt="Card image cap">
		                    </a>
		               </div> <!-- End of column div -->
		                	<div class="col-1"> &nbsp;</div>	
		                <div class="col-md-6">
		                <br>  <h3> <a href="http://vspgit.gitam.edu/cse/about-department" target="_blank">
		                 Computer Science and Engineering</a> </h3> <br>
		                <h3>Mozilla Student Ambassador</h3>
		                </div> <!-- End of column div -->
		           </div> <!-- End of row -->
		        </div> <!-- End of container -->
			</h4>
			<br> <br> <br>
			<p class="card-text">The curriculum is structured so as to strengthen the understanding of computer system concepts and enhance 
			the computer skills and credentials. The programs of the department have been accredited by NBA. The thrust areas of research
			 include cloud computing, data analysis and image mining. The department has been actively providing consultancy services to
			  various public and private organizations. </p>
  		</div> <!-- End of bachelors div -->
  		
  		<div class="tab-pane fade" id="school" role="tabpanel" aria-labelledby="contact-tab">
  		<h4 class="card-title">
			    <div class="container">
		           <div class="row">
		              <div class="col-md-3">
		                    <a href="https://www.justdial.com/Machilipatnam/Amaleswari-Vidya-Niketan/9999P8672-8672-110110101937-T1F3_BZDET" target="_blank" >		
		                	 <img class="img-fluid img-rounded" src="${pageContext.request.contextPath}/resources/images/amaleswari.jpg" alt="Card image cap">
		                    </a>
		               </div> <!-- End of column div -->
		                		<div class="col-1"> &nbsp;</div>
		                <div class="col-md-6">
		                	<h3> <a href="https://www.justdial.com/Machilipatnam/Amaleswari-Vidya-Niketan/9999P8672-8672-110110101937-T1F3_BZDET" target="_blank"> <br>Schooling</a> </h3>
		                	<h3> <br>Member of School Cricket Team</h3>
		                </div> <!-- End of column div -->
		           </div> <!-- End of row -->
		        </div> <!-- End of container -->
			</h4>
			<br> <br> <br>
  		<p class="card-text"> Amaleswari Vidya Niketan has been tremendously successful in the field of education, because it has not 
  		waited for things to happen, but has created opportunities instead of waiting for it to knock.
		This proactive approach has resulted in creating many vistas for learning and setting up different verticals in the field of 
		education to suit the varying needs of the students. In over two decades of its existence, it has delivered to the society a steady 
		and healthy band of successful youngsters who have made a mark in their respective career charts. Amaleswari has grown tall and spread
		 far and wide at a decent pace mainly because parents and students responded. </p>
  		</div> <!-- End of school div -->
  
   </div> <!-- End of card content -->
  </div> <!-- End of card body -->
 
 <!--  </div> <!-- end of column -->
 <!--   </div> <!-- End of row -->
 <!--   </div> <!-- End of container -->
<!--  </div>  End of card -->
	
	</section>
	
	<br><br><br><br><br> 
	<section id="projects"> 
	<h3 style="text-align:center;color:green;" class="col-md-12"> <i> ------Here's what I've done so far------</i></h3> <br>
	
	<div class="card py-5" style="border:0;">
<div class="card-body">
	
		
	<br><br><br>
	<div class="card py-5" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a  href="https://github.com/jagadeesh26091993/public-understanding-of-research" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid rounded " style="height:300px;" src="${pageContext.request.contextPath}/resources/images/workout.jpg" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
					 <h4> <a  href="${pageContext.request.contextPath}/visual/home" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the working model of this application"> Workout Visualizer </a> </h4> 
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p> A web application where an individual can visualize their work out routines like time spent for the work out,
					number of calories spent for work out sessions. Provides visualizations for daily, weekly, monthly and yearly work out sessions. 
					</p>
				</div>
			</div>
		</div>
	</div>
	
	
	<br> <br> <br>
	
	<div class="card " style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://github.com/jagadeesh26091993/partner_rec_system" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid rounded" style="height:300px;" src="${pageContext.request.contextPath}/resources/images/recommonder.jpeg" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
					 <h4> <a href="${pageContext.request.contextPath}/recommonder/main" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the workoing model of this application"><i> Partner Recommender System</i> </a> </h4>
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p> A web application which will recommend the top 10 life partners for an individual depending upon their 
						chosen qualities of their future life partners and other stuff.
					</p>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	</div>

	<br><br>
	
<div class="card py-5" style="border:0;">
	<div class="card-body">
	
		<div class="card py-5" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://github.com/jagadeesh26091993/public-understanding-of-research" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid rounded " style="height:300px;" src="${pageContext.request.contextPath}/resources/images/crm.png" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
					 <h4> <a href="https://github.com/jagadeesh26091993/public-understanding-of-research" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application"> Basic CRUD Customer Relationship Manager </a> </h4>
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p> A web application where basic CRUD operations are performed on the employees. Developed using Spring MVC and Hibernate.
					</p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="card py-5" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://github.com/jagadeesh26091993/public-understanding-of-research" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid img-rounded " style="height:300px;" src="${pageContext.request.contextPath}/resources/images/understanding.jpg" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
					 <h4> <a href="${pageContext.request.contextPath}/public/research" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to visualize the project result"> Public Understanding of Research </a> </h4> 
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p> Determined the level of compression over research articles on different social networking platforms like face book, Twitter, Wikipedia, News articles etc.
					preprocess and built models on altmetrics data using python Gensim tool.
					</p>
					<p> <b>Data Set:</b> Altmetrics &nbsp;
					<b>Tools: </b>PyCharm, NLTK, Gensim, Matplotlib. &nbsp;
					 <b>Algorithms: </b>Latent Dirchlet allocation(LDA), Latent Semantic Indexing(LSI) 
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<br><br>
<div class="card py-5" style="border:0;">
	<div class="card-body">
	
		<div class="card py-5" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://github.com/jagadeesh26091993/Research-article-will-be-mentioned-in-news-article-or-not" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid rounded " style="height:300px;" src="${pageContext.request.contextPath}/resources/images/predictions.jpg" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
					 <h4> <a href="https://github.com/jagadeesh26091993/Research-article-will-be-mentioned-in-news-article-or-not" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application"> Predicting research article that will be mentioned in the news article </a> </h4> 
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p> Determined whether a research article can get published in a news article depending upon its popularity on social media.
					Built the classifier using Python SciKit learn and achieved classifier accuracy of 71%.
						</p>
						<p>
							<b>Data Set:</b> Altmetrics &nbsp;
							<b>Tools: </b>PyCharm, Natural Language Tool Kit(NLTK), SciKit learn, Matplotlib &nbsp;
							<b>Algorithms: </b>Decision Tree, Random Forest, Support vector machines, Logistic regression, Naive Bayes Classification.
					</p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="card py-5" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://github.com/jagadeesh26091993/sample-Ftp" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application">
					<img class="img-fluid rounded " style="height:300px;" src="${pageContext.request.contextPath}/resources/images/ftp.jpg" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-6">
				<br> <br>
					 <h4> <a href="https://github.com/jagadeesh26091993/sample-Ftp" target="_blank" data-toggle="tooltip" data-placement="top" title="Click to continue to the Github Link of this application"> Basic FTP </a> </h4>
					<h5 style="color:green;"> <b> Fall, 2017 </b></h5> <br>
					<p>  Implemented basic FTP between client and host server using Transfer Control Protocol (TCP). Basic functionalities 
					like changing remote directory, connecting to host server, File Transfer etc. are implemented using Unix Sockets in C language.
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
		
	</section>
	
		<br> <br> <br> <br> <br> <br> <br>
	<section id="cricket">
	<h3 style="text-align:center;color:green;" class=" py-5"> <i> ------Here's what i enjoy most------</i></h3> <br>
	<div class="card py-5" style="border:0;">
	
	<div class="card-body">
		<br>
		<div class="card" style="border:0;"> 
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="https://cricclubs.com/bplcricket/viewPlayer.do?playerId=584445&clubId=663" target="_blank">
					<img class="img-fluid rounded" style="height:300px;" src="${pageContext.request.contextPath}/resources/images/mypic.JPG" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp; </div>
				<div class="col-md-5">
					<br> <br> <br>
					<p> <strong>Cricket </strong>, a game i would like to play 24x7.
					It help me to grow as an individual, developed my leadership skills and taught me to handle pressure situations
					 with cool and ease. Time management and team coordination are the best thing i have learnt from my favourite game. 
					 </p>
					 
					 
				</div>
			</div>
		</div>
	</div>
	<br> <br>
	<div class="card py-5" style="border:0;">
	<h3 style="text-align:center;color:green;" >----links to my Stats---- </h3> <br>  <br>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a href="https://cricclubs.com/bplcricket/viewPlayer.do?playerId=584445&clubId=663" target="_blank">
					<img class="img-fluid rounded btn btn-outline-info xs-3" style="height:200px;" src="${pageContext.request.contextPath}/resources/images/nbcc.JPG" 
					alt="Card image cap"> </a> 
				</div>
				<div class="col-md-1" > &nbsp;</div>
				<br>
				<div class="col-md-3">
					<a href="https://cricclubs.com/bplcricket/viewPlayer.do?playerId=319774&clubId=663" target="_blank">
					<img class="img-fluid rounded  btn btn-outline-info xs-3" style="height:200px;" src="${pageContext.request.contextPath}/resources/images/nbcc.JPG" 
					alt="Card image cap"> </a>
				</div>
				<div class="col-md-1">&nbsp;</div>
				<br>
				<div class="col-md-3">
					<a href="https://cricclubs.com/NPDCL/viewPlayer.do?playerId=319774&clubId=1076" target="_blank">
					<img class="img-fluid rounded btn btn-outline-info xs-3" style="height:200px;" src="${pageContext.request.contextPath}/resources/images/deccan.jpg" 
					alt="Card image cap"> </a>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	</div>
	
	
	</section>
	<br> <br> <br> <br> <br> <br> <br> <br>
		
		<div class="card pt-5" style="border:0;" id="mylinks">
			<div class="card-body" style="background-image: url('${pageContext.request.contextPath}/resources/images/back.jpg');">
			
					<br><br><br><br><br>
					<h2 style="text-align:center;color:white;"> <b>My Motivation </b></h2> <br> <br>
					<a href="https://www.youtube.com/watch?v=UF8uR6Z6KLc" target="_blank"><h4 style="text-align:center;color:white;">
					Stay hungry stay Foolish</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=n1cXX4ERy2Y" target="_blank"><h4 style="text-align:center;color:white;">
					Courage to face it</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=Z8oJV_mBY9g" target="_blank"><h4 style="text-align:center;color:white;">
					Be the change</h4> </a> <br>
					
					<a href="https://motivationgrid.com/steve-jobs-if-today-was-the-last-day-of-my-life/" target="_blank"><h4 style="text-align:center;color:white;">
					Last day of life</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=EyhOmBPtGNM " target="_blank"><h4 style="text-align:center;color:white;">
					Six rules of success</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=rSO3jAmqGVY" target="_blank"><h4 style="text-align:center;color:white;">
					Seven Leadership principles</h4> </a> <br>
					
					<br> <br>
					
			</div>
		
		
		</div>

<div class="card  pt-5"  style="border:0;" id="myquotes">
			<div class="card-body" style="background-image: url('${pageContext.request.contextPath}/resources/images/back.jpg');">
			
					<br><br><br><br><br>
					<h2 style="text-align:center;color:white;"> <b>My Quotes </b></h2> <br> <br>
					
					<a href="https://motivationgrid.com/20-morgan-freeman-quotes-that-will-inspire-you/" target="_blank"><h4 style="text-align:center;color:white;">
					Morgan freeman Quotes</h4> </a> <br>
					
					<a href="https://www.menshealth.com/fitness/best-fitness-quotes-of-all-time/slide/4" target="_blank"><h4 style="text-align:center;color:white;">
					Wonderful Workout Quotes</h4> </a> <br>
					
				
					<a href="	https://www.brainyquote.com/topics/life" target="_blank"><h4 style="text-align:center;color:white;">Best Life Quotes</h4> </a> <br>
					
					<a href="	https://www.success.com/article/21-of-the-most-inspirational-quotes" target="_blank"><h4 style="text-align:center;color:white;">
					Inspirational Quotes</h4> </a> <br>
					
					<a href="https://www.brainyquote.com/lists/authors/top_10_swami_vivekananda_quotes" target="_blank"><h4 style="text-align:center;color:white;">
					Vivekananda Quotes</h4> </a> <br>
				
					<br><br><br><br>
					
			</div>
		
		
		</div>
	
<div class="card  pt-5" style="border:0;" id="myattitude">
			<div class="card-body" style="background-image: url('${pageContext.request.contextPath}/resources/images/back.jpg');">
			
					<br><br><br><br><br>
					<h2 style="text-align:center;color:white;"> <b>My Attitude </b></h2> <br> <br>
					
					<a href="https://www.youtube.com/watch?v=nL_vvm9AgzI" target="_blank"><h4 style="text-align:center;color:white;">
					Be Positive</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=2Lz0VOltZKA" target="_blank"><h4 style="text-align:center;color:white;">
					Motivate Yourself</h4> </a> <br>
					
				
					<a href="https://www.brainyquote.com/topics/life" target="_blank"><h4 style="text-align:center;color:white;">
					Focus on Yourself not others</h4> </a> <br>
					
					<a href="https://www.youtube.com/watch?v=nJlu_eSTKiU" target="_blank"><h4 style="text-align:center;color:white;">
					My Life my Rules </h4> </a> <br>
					
					
					<br><br>
					<br><br><br><br>
					
			</div>
		
		
		</div>
	
	
        
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	
	
	
<script>


      
    


	  $('.carousel').carousel(
		        {
		          interval: 2000;
		          keyboard: true;
		          pause: hover;
		          wrap: true;
		        }
		);

    
      

  </script>	
	
</body>
</html>