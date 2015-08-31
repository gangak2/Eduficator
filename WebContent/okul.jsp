<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="eduficator.data.definition.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<%
		if((boolean)request.getSession().getAttribute("authenticated")==true){
			List<OpenCourse> courses = (List<OpenCourse>)request.getAttribute("courses");
	%>
  <head>
    <title>Course details</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
    
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">

            <!--logo start-->
            <a href="index.jsp" class="logo">O <span class="lite">Kul</span></a>
            <!--logo end-->


            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Bruce Wayne</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="StudentProfilePageServlet"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="userLogoutServlet"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--main content start-->
      <section id="main-content-fullpage">
          <section class="wrapper">
              <!-- page start-->
              <div class="row">
              		<div class="col-lg-6">
              			<div class="panel panel-default">
							<div class="panel-heading">
	                          <h3>Question of the Day</Char>
	                        </div>
	                		<div class="panel-body">
	                 		 <div class="row" id="questionContainer">
	                  		<div class="col-lg-12">
	                  			<p class="text-justify" style="font-size: 15px;">
	                  			Home, where I learned the truth about despair, as will you. There's a reason why this prison is the worst hell on earth... Hope. Every man who has rotted here over the centuries has looked up to the light and imagined climbing to freedom. So easy... So simple... And like shipwrecked men turning to sea water from uncontrollable thirst, many have died trying. I learned here that there can be no true despair without hope. So, as I terrorize Gotham, I will feed its people hope to poison their souls. I will let them believe they can survive so that you can watch them clambering over each other to stay in the sun. You can watch me torture an entire city and when you have truly understood the depth of your failure, we will fulfill Ra's al Ghul's destiny... We will destroy Gotham and then, when it is done and Gotham is...ashes... then you have my permission to die.
	                  			</p>
	                  		</div>
							<div class="input-group">
				                <div class="btn-group col-lg-12" data-toggle="buttons">
				                	<label class="btn btn-default btn-block">
					                    <input type="radio" value="1" />
					                    	Gotham needed a hero.
					                </label>
					                <label class="btn btn-default btn-block">
					                    <input type="radio" value="1" />
					                    	Not everything. Not yet.
					                </label>
					                <label class="btn btn-default btn-block">
					                    <input type="radio" value="1" />
					                    	The shadows betray you, because they belong to me.
					                </label>
					                <label class="btn btn-default btn-block">
					                    <input type="radio" value="1" />
					                    	Every Hero Has a Journey. Every Journey Has an End.
					                </label>
				                </div>
				            </div>
	                  		</div>
	               			 </div>
	              		</div>
              		</div>
              		<div class="col-lg-6">
              			<%
							for(OpenCourse course:courses){
								out.println("<div class=\"panel panel-default col-lg-12\" style=\"border: solid 1px black;\">");
								out.println("<h4><a href=\"CoursePageServlet?courseid="+course.courseId+"\"><strong>"+course.getCourseName()+"</strong></a><span class=\"pull-right badge badge-default\">"+course.getAllTopics().size()+" Questions</span></h4>");
								out.println("<p>Course Details here</p>");
								out.println("</div>");
							}
						%>
              		</div>
              		
              </div>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nicescroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- chartjs -->
    <script src="assets/chart-master/Chart.js"></script>
    <!-- custom chart script for this page only-->
    <script src="js/chartjs-custom.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
	<script>
	$('#courseProgress tbody tr').on('click', function(event) {
	    $clicked_tr = $(this);
	    $isHighlighted = $('#courseProgress tbody tr').hasClass('highlight');
	    $isCollapsed = $clicked_tr.hasClass('collapsed');
	    $('#courseProgress tbody tr').removeClass('highlight');
	    $('#courseProgress tbody tr').addClass('collapsed');
	    if(!$isHighlighted && $isCollapsed) {
	    	$clicked_tr.addClass('highlight');
	    	$clicked_tr.removeClass('collapsed');
	    }
	});
	</script>

  </body>
  <%
	}
	else{
		response.sendRedirect("index.jsp");
	}
%>
</html>
