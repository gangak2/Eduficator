<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,eduficator.data.definition.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Okul Course</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
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
    .highlight{background-color:#7fcce5 !important;}
    .accordiantable{background-color:#DCDCDC !important;}
    .weak{background-color:#FFE6E6 !important;}
    .moderate{background-color:#FFFFFF !important;}
    .proficient{background-color:#EBFAEB !important;}
    </style>
  </head>

  <body>
  <%
     Map details = (Map)request.getSession().getAttribute("activeUserDetails");
     OpenCourse course = (OpenCourse)request.getAttribute("course");
  %>
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
                            <span class="username"><%=details.get("name") %></span>
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
      <section id="fullpage-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"></i> <%=course.getCourseName() %></h3>
				</div>
			</div>
              <!-- page start-->
              <div class="col-lg-9">
                   <ul class="nav nav-tabs" role="tablist">
				      <li class="active">
				          <a href="#overview" role="tab" data-toggle="tab">
				              <icon class="fa fa-home"></icon> Overview
				          </a>
				      </li>
				      <li>
				      	<a href="#topics" role="tab" data-toggle="tab">
				          <i class="fa fa-list"></i> Topics
				          </a>
				      </li>
				      <li>
				      	<a href="#assignment" role="tab" data-toggle="tab">
				          <i class="fa fa-edit"></i> Assignments
				          </a>
				      </li>
				    </ul>
    
    				<div class="tab-content">
      					<div class="tab-pane fade active in" id="overview">
                      			<div class="row">
              						<div class="col-lg-12">
				                    	<div class="panel-body">
				                        	<div class="tab-pane" id="chartjs">
					                      		<div class="row">
					                         		<div class="col-lg-9">
					                              		<section class="panel">
					                                  		<header class="panel-heading">
					                                      		Submissions
					                                  		</header>
					                                  		<div class="panel-body text-center">
					                                      		<canvas id="line" height="300" width="600"></canvas>
					                                  		</div>
					                              		</section>
	                          						</div>     
	                          						    
						                          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                              <div class="info-box dark-bg" align="center" style="margin:0 auto;">
														<div class="title"><a href="CoursePage.jsp">Profficiency</a></div>
														<div class="count" title="Current proficiency in this topic">7.1</div>					
													</div><!--/.info-box-->	
						                          </div>
	                          
						                          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                              <div class="info-box dark-bg" align="center" style="margin:0 auto;">
														<div class="title"><a href="CoursePage.jsp">Assignments</a></div>
														<div class="count" title="total assignments submitted">4/7</div>	 
														<!-- <div>
															<canvas id="doughnut" height="50" width="50"></canvas>
														</div>	 -->			
													</div><!--/.info-box-->	
						                          </div>
	                      						</div>
                    						</div>
                      					</div>
									</div>
                				</div>
      					</div>
      					<div class="tab-pane fade" id="topics">
      						<div class="col-lg-12 panel">
      							<table class="table table-advance" id="courseProgress">
                           <tbody>
                              <tr>
                                 <th>Topic</th>
                                 <th>Proficiency</th>
                              </tr>
                              
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed proficient">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Algebra</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%">
									      90% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">92%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="001">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Algebra 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Algebra 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#002" class="accordion-toggle collapsed weak">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Polynomials</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%">
									      80% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">24%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="002">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Polynomials 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Polynomials 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#003" class="accordion-toggle collapsed proficient">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Geometry</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
									      100% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">84%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="003">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Geometry 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Geometry 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#004" class="accordion-toggle collapsed moderate">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Calculus</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
									      60% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">76%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="004">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Calculus 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Calculus 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#005" class="accordion-toggle collapsed proficient">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Cartesian</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
									      100% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">91%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="005">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Cartesian 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Cartesian 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#006" class="accordion-toggle collapsed proficient">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Trigonometry</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
									      100% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">95%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="006">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Trigonometry 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Trigonometry 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
							
                              <tr data-toggle="collapse" data-target="#007" class="accordion-toggle collapsed weak">
                                 <td><a href="TopicPage.jsp" style="font-size: 25px;">Number theory</a>
                                 	<div class="progress" style="width: 50%;">
									    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
									      100% Complete
									    </div>
									  </div>
                                 </td>
                                 <td style="font-size: 40px;">32%</td>
                              </tr>
                              
                              <tr>
								<td colspan="4" class="hiddentablerow">
								<div class="accordian-body collapse" id="007">
								    <table class="table accordiantable">
								        <thead>
								        <th class="">Sub Topic</th>
								        <th class="">Progress</th>
								        <th class="">Proficiency</th>
								        <th class="">Action</th>
								        </thead>
								        <tbody>
								        <tr>
								        	<td>Number theory 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Number theory 1.2</td>
								            <td>100</td>
								            <td>7.9</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        </tbody>
								    </table>
								</div> 
								</td>
							</tr>
                            </tbody>
                        </table>
      						</div>
      					</div>
      					<div class="tab-pane fade" id="assignment">
      						<h2>Assignment page is under development</h2>
      					</div>
      				</div>
              </div>
              <div class="col-lg-3">
              	<header class="panel-heading">
                    <h3>Assessments</h3>
                </header>
                <%
                	List<Topic> topics = course.getAllTopics();
                	if(topics.size() > 0){
                %>
                
                <ul class="nav nav-pills">
                <%
		                for(Topic topic:topics){
							out.println("<li style=\"width: 100%;\">");
		                	out.println("<a href=\"TopicPracticePageServlet?topicid="+topic.topicId+"\">");
							out.println("<h4><strong>"+topic.getTopicName()+"</strong></h4>");
							out.println("<p>Havent taken any assessments yet hehe</p>");
							out.println("</a>");
							out.println("</li>");
						}
                	}
                %>
                </ul>
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
</html>
