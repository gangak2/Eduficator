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

    <title>Course details</title>

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
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">

            <!--logo start-->
            <a href="index.html" class="logo">Edu <span class="lite">Ficator</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-task-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Design PSD </div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project 1
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Digital Marketing</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Logo Designing</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>

                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>  
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span> 
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
                            </li>                            
                            <li>
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
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

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu"> 
              	  <li class="">
		                <img class="img-responsive" src="images/1.jpg">
		          </li>               
                  <li class="sub-menu">
                      <a class="" href="CoursePracticePage.jsp">
                          <i class="fa fa-edit"></i>
                          <span>Practice</span>
                      </a>
                  </li>
				      <!-- Previous assignments 
                    	Pending assignments-->          
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-table"></i> Course</h3>
				</div>
			</div>
              <!-- page start-->
              <div class="col-lg-12">
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
                      
              <!-- <div class="row">
                  <div class="col-lg-6">
                      <section class="panel">
                          <header class="panel-heading">
                              Submissions
                          </header>
                          
                          <table class="table table-striped table-advance table-hover" >
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> Assignment</th>
                                 <th><i class="icon_calendar"></i> Submission date</th>
                                 <th><i class="icon_mail_alt"></i> Score</th>
                                 <th><i class="icon_cogs"></i> Action</th>
                              </tr>
                              <tr>
                                 <td>Algebra-I</td>
                                 <td>2004-07-06</td>
                                 <td>6</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
								<td>Algebra-II</td>
								<td>2011-01-10</td>
                                 <td>7</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Algebra-III</td>
                                 <td>2006-10-29</td>
                                 <td>8</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Algebra-IV</td>
                                 <td>2011-12-15</td>
                                 <td>7</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Algebra-V</td>
                                 <td>2003-01-06</td>
                                 <td>8</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Algebra-VI</td>
                                 <td>2006-07-14</td>
                                 <td>9</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Algebra-VII</td>
                                 <td>2002-03-29</td>
                                 <td>7</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>                              
                           </tbody>
                        </table>
                      </section>
                  </div>
                  <div class="col-lg-6">
                      <section class="panel">
                          <header class="panel-heading">
                              Course details
                          </header>
                          
                          <table class="table table-advance" id="courseProgress">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> Chapter</th>
                                 <th><i class="icon_calendar"></i> Progress</th>
                                 <th><i class="icon_mail_alt"></i> Proficiency</th>
                                 <th><i class="icon_cogs"></i> Action</th>
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
								        	<td>Section 1.1</td>
								            <td>100</td>
								            <td>6.2</td>
								            <td>
			                                  <div class="btn-group">
			                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
			                                  </div>
			                                </td>
								        </tr>
								        <tr>
								        	<td>Section 1.2</td>
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
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Algebra</td>
                                 <td>90</td>
                                 <td>9</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Polynomials</td>
                                 <td>100</td>
                                 <td>2</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Geometry</td>
                                 <td>100</td>
                                 <td>8</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Calculus</td>
                                 <td>100</td>
                                 <td>7</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Cartesian</td>
                                 <td>100</td>
                                 <td>9</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Trigonometry</td>
                                 <td>100</td>
                                 <td>9.5</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr data-toggle="collapse" data-target="#001" class="accordion-toggle collapsed">
                                 <td>Number theory</td>
                                 <td>100</td>
                                 <td>8.6</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="TestPage.jsp"><i class="icon_plus_alt2" title="Request test"></i></a>
                                  </div>
                                  </td>
                              </tr>
                            </tbody>
                        </table>
                      </section>
                  </div>
              </div> -->
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
