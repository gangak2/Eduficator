<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
    
    <title>Class page</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap-toggle-min.css" rel="stylesheet">
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
      
    <![endif]-->
    
    <style>
    .correct{background-color:#CCFF66 !important;}
    .wrong{background-color:#FFCC99 !important;}
    </style>
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <a href="index.html" class="logo">Edu <span class="lite">Ficator</span></a>
            <!--logo end-->

            

           
      </header>      
      <!--header end-->

      <!--main content start-->
		  <div class="row" id="question1">
				<div class="col-lg-8 col-md-offset-2" style="margin-top: 70px;">
					<section class="panel">
                      <ul class="nav nav-tabs" role="tablist">
				      <li class="active">
				          <a href="#studentregistration" role="tab" data-toggle="tab">
				              <icon class="fa fa-list"></icon> Register as student
				          </a>
				      </li>
				      <li><a href="#teacherregistration" role="tab" data-toggle="tab">
				          <i class="fa fa-users"></i> Register as teacher
				          </a>
				      </li>
				      <li><a href="#parentregistration" role="tab" data-toggle="tab">
				          <i class="fa fa-users"></i> Register as parent
				          </a>
				      </li>
				    </ul>
				    
				    <div class="tab-content">
				    	<div class="tab-pane fade row active in" id="studentregistration">
      						<div class="col-lg-12">
                      			<section class="panel">
		                          <div class="panel-body">
		                              <form role="form" action="registrationServlet">
		                              	  <input type="hidden" id="form" name="form" value="student"></input>
		                              	  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">First name</label>
		                                      <input type="name" class="form-control" id="firstname" name="firstname" placeholder="First name">
		                                  </div>
		                                  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">Last name</label>
		                                      <input type="name" class="form-control" id="lastname" name="lastname" placeholder="Last name">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputEmail1">Email address</label>
		                                      <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputPassword1">Password</label>
		                                      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
		                                  </div>
		                                  <button type="submit" class="btn btn-primary">Register</button>
		                              </form>
		                          </div>
                      			</section>
                  			</div>
      					</div>
      					
				    	<div class="tab-pane fade row" id="parentregistration">
      						<div class="col-lg-12">
                      			<section class="panel">
		                          <div class="panel-body">
		                              <form role="form" action="registrationservlet?form=teacher">
		                              	  <div class="form-group">
		                              	  	  <label for="exampleInputEmail1">Parent of</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
		                              	  </div>
		                              	  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">First name</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="First name">
		                                  </div>
		                                  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">Last name</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Last name">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputEmail1">Email address</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputPassword1">Password</label>
		                                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		                                  </div>
		                                  <button type="submit" class="btn btn-primary">Register</button>
		                              </form>
		                          </div>
                      			</section>
                  			</div>
      					</div>
				        
				        <div class="tab-pane fade row" id="teacherregistration">
      						<div class="col-lg-12">
                      			<section class="panel">
		                          <div class="panel-body">
		                              <form role="form" action="registrationservlet?form=parent">
		                              	  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">First name</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="First name">
		                                  </div>
		                                  <div class="form-group col-lg-6">
		                                      <label for="exampleInputEmail1">Last name</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Last name">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputEmail1">Email address</label>
		                                      <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
		                                  </div>
		                                  <div class="form-group">
		                                      <label for="exampleInputPassword1">Password</label>
		                                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		                                  </div>
		                                  <button type="submit" class="btn btn-primary">Register</button>
		                              </form>
		                          </div>
                      			</section>
                  			</div>
      					</div>
				    </div>
                    </section>
				</div>
				           
			</div>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
	<script src="js/jquery.countdown.min.js"></script>
    <!-- nicescroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <script src="js/bootpag-jquery.js"></script>
	<script src="js/bootstrap-toggle-min.js"></script>
	
	<script src="js/autoresize.js"></script>
<script type="text/javascript">
  // Turn on Bootstrap
  $('[data-toggle="tooltip"]').tooltip();

  $(function(){
		$('textarea').autosize({append: "\n"});
	});
  // 15 days from now!
  function gethourFromNow() {
    return new Date(new Date().valueOf() +  60 * 60 * 1000);
  };

  var clock = $('#clock');
  
  
  
  $('#clock').countdown(gethourFromNow(), function(event) {
    $(this).html(event.strftime('%H:%M:%S'));
  });


</script>

  </body>
</html>
