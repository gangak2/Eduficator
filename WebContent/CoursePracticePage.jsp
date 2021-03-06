<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="eduficator.data.definition.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<%
		if((boolean)request.getSession().getAttribute("authenticated")==true){
			OpenCourse course = (OpenCourse)request.getAttribute("course");
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
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
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
					<div class="col-lg-10">
						<h3 class="page-header"> 
							<a class="" href="CoursePage.jsp">
                       			<i class="fa fa-caret-square-o-left"></i>
                  			</a>
                  			<%=course.getCourseName() %>
                  		</h3>
					</div>
				</div>
				<%
					List<Topic> topics = course.getAllTopics(); 
					for(Topic topic:topics){
						out.println("<div class=\"panel panel-default col-lg-4\" style=\"border: solid 1px black;\">");
						out.println("<h4><a href=\"TopicPracticePageServlet?topicid="+topic.topicId+"\"><strong>"+topic.getTopicName()+"</strong></a><span class=\"pull-right badge badge-default\">"+topic.getNumberOfQuestions()+" Questions</span></h4>");
						out.println("<p>Havent taken any assessments yet</p>");
						out.println("</div>");
					}
				%>
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
