<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="eduficator.data.definition.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
	<%
		if(request.getSession().getAttribute("authenticated")!=null ){
			Topic topic = (Topic)request.getAttribute("topic");
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

	<!-- Loading Deterministic Finite Automata (DFA) data -->
	  <script language=javascript src="js/LaTeX_asc.js"></script>
	  <script language=javascript src="js/LaTeX_acc.js"></script>
	  <script language=javascript src="js/LaTeX_tok.js"></script>
	  <script language=javascript src="js/LaTeX_dfa_comp.js"></script>
	  <!-- Libraries used by the main script -->
	  <script language=javascript src="js/LaTeX_symbols.js"></script>
	  <script language=javascript src="js/LaTeX_functions.js"></script>
	  <!-- 
	     Edit the following file to change your own aliases that 
	     you have defined using \def, \newcommand or \renewcommand 
	  -->
	  <script language=javascript src="js/LaTeX_aliases.js"></script>
	  <script language=javascript src="js/LaTeX2HTML.js"></script>
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
	    <!--[if lt IE 9]>
	      <script src="js/html5shiv.js"></script>
	      <script src="js/respond.min.js"></script>
	      <script src="js/lte-ie7.js"></script>
	    <![endif]-->
    <style>
	    .clickable{
		    cursor: pointer;   
		}

		.panel-heading span {
			margin-top: -20px;
			font-size: 15px;
		}
		
		.active{
			display: block;
		}
		
		.inactive{
			display: none;
		}
    </style>
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
							<%
								OpenCourse course = topic.getParentCourse();
							%>
							<a class="" href="CoursePage.jsp">
                       			<i class="fa fa-caret-square-o-left"></i>
                  			</a>
                  			<a class="" href="CoursePracticePageServlet?courseid=<%=course.courseId%>">
                       			<%=course.getCourseName() %>
                  			</a>
                  			&nbsp;
                  			<span class="badge badge-default"><%=topic.getTopicName() %></span>
                  		</h3>
					</div>
				</div>
				
				<div class="row" id="assesment">
					<section class="panel">
						<div class="assessment-panel-heading">
	                         <h2>Initial Assessment Test<a id="assessmentheader" href="#" class="btn" data-toggle="popover" data-trigger="hover">?</a><span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span></h2>
	                     </div>
	                     <div class="panel-body" id="assessment">
	                     	<div class="col-lg-3">
	                     		<header class="panel-heading">
			                          <h3>Instructions</Char>
			                      </header>
			                      <div class="assessment-question">
			                      	<ul>
			                      		<li>
			                      			<i class="fa fa-caret-right"></i>&nbsp;This is an initial assessment test
			                      		</li>
			                      		<li>
			                      			<i class="fa fa-caret-right"></i>&nbsp;Each question has one correct answer
			                      		</li>
			                      	</ul>
			                      </div>
	                     	</div>
	                     	
	                     	<script>
	                     		var questions = [];
	                     	</script>
	                     	
							<div class="col-lg-9">
							<%
								List<Question> questions = topic.getAllQuestions();
							    int i=1;
								for(Question question:questions){
									
							%>
								<script>
									questions.push('<%=question.questionid%>');
								</script>
								<div id="<%=question.questionid%>" class="<%if(i==1) out.print("active"); else out.print("inactive");%>">
				                      <header class="panel-heading">
				                          <h3>Question <%=i %></Char>
				                      </header>
                      
	                      				<div class="row assessment-question" style="margin-bottom: 10px;">
	                  						<div class="col-lg-12" style="padding-left: 2%;">
	                  							<p class="text-justify" style="font-size: 15px;">
	                  								<script type="text/javascript">
														document.write(ltxParse("<%=question.getQuestionBody() %>"));
													</script>
	                  							</p>
			                  					<div class="input-group" id="optionsContainer">
					                  				<div class="btn-group col-lg-12" data-toggle="buttons">
						                  			<%
						                  				List<Option> options = question.getQuestionOptions();
						                  				for(Option option:options){
						                  			%>
										                <label class="btn btn-default btn-block" onclick="questionResponded(<%=i%>);">
										                    <input type="radio" value="<%=option %>" /> 
										                    	<script type="text/javascript">
																	document.write(ltxParse("<%=option.getOptionBody() %>"));
																</script>
										                </label>
									                <%
						                  				}
									                %>
									                	<label class="btn btn-default btn-block" onclick="questionResponded(<%=i%>);">
										                    <input type="radio" value="skip" /> 
										                    	<script type="text/javascript">
																	document.write(ltxParse("I dont know."));
																</script>
										                </label>
								            		</div>
							        			</div>
	                  						</div>
	                  					</div>
                  					</div>
			                    <%
			                    i++;
			                    }
			                    %>
							</div>
					     </div>
                     </section>
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
		$(document).ready(function(){
		    $('#assessmentheader').popover({
		    	title: 'Enter Mobile Number', 
		        content: "Please enter 10 digit mobile number prefixed by country code eg +911234567890"
		    });   
		});
		$(document).on('click', '.assessment-panel-heading span.clickable', function(e){
		    var $this = $(this);
			if(!$this.hasClass('panel-collapsed')) {
				$this.parents('.panel').find('.panel-body').slideUp();
				$this.addClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
			} else {
				$this.parents('.panel').find('.panel-body').slideDown();
				$this.removeClass('panel-collapsed');
				$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			}
		});
		
		function questionResponded(num){
			//Hide the current question and fetch the next one
			$('#'+questions[(num-1)%questions.length]).removeClass('active').addClass('inactive');
			$('#'+questions[(num)%questions.length]).removeClass('inactive').addClass('active');
		}
	</script>

  </body>
  <%
	}
	else{
		response.sendRedirect("index.jsp");
	}
%>
</html>
