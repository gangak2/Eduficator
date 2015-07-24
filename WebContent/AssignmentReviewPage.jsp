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
    
    <title>Assignment review page</title>

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
                                <img alt="" src="img/avatar-mini4.jpg">
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
          <div id="sidebar"  class="nav-collapse">
			    
             	 <div class="sidebar-menu" id="myScrollspy" style="text-align: left; margin-top: 70px; text-font: 30px;">
             	 	<ul class="nav nav-tabs nav-stacked">
		                <li><a href="#question1">Question 1 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question2">Question 2 <span class="fa fa-times pull-right" style="color:red"></span></a></li>
		                <li><a href="#section-3">Question 3 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-4">Question 4 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-5">Question 5 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question1">Question 6 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question2">Question 7 <span class="fa fa-times pull-right" style="color:red"></span></a></li>
		                <li><a href="#section-3">Question 8 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-4">Question 9 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-5">Question 10 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question1">Question 11 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question2">Question 12 <span class="fa fa-times pull-right" style="color:red"></span></a></li>
		                <li><a href="#section-3">Question 13 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-4">Question 14 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-5">Question 15 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question1">Question 16 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#question2">Question 17 <span class="fa fa-times pull-right" style="color:red"></span></a></li>
		                <li><a href="#section-3">Question 18 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-4">Question 19 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		                <li><a href="#section-5">Question 20 <span class="fa fa-check pull-right" style="color:blue"></span></a></li>
		            </ul>
             	 </div>
              
              <!-- sidebar menu end-->
          </div>
      </aside>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper" style="margin-top: 70px;">
		  <div class="row" id="question1">
				<div class="col-lg-12">
					<section class="panel">
                      <header class="panel-heading">
                          <h3>Question 1</Char>
                      </header>
                      <ul class="nav nav-tabs" role="tablist">
				      <li class="active">
				          <a href="#question1Container" role="tab" data-toggle="tab">
				              <icon class="fa fa-question"></icon> Question
				          </a>
				      </li>
				      <li><a href="#detailedSolution1Container" role="tab" data-toggle="tab">
				          <i class="fa fa-eye"></i> Solution
				          </a>
				      </li>
				      <li>
				          <a href="#suggestedSolution1Container" role="tab" data-toggle="tab">
				              <i class="fa fa-comments-o"></i> Discussion
				          </a>
				      </li>
				      <li>
				          <a href="#question1StatisticsContainer" role="tab" data-toggle="tab">
				              <i class="fa fa-tachometer"></i> Statistics
				          </a>
				      </li>
				    </ul>
				    
				    <div class="tab-content">
                      <div class="row tab-pane fade active in" id="question1Container">
                  		<div class="col-lg-12" style="padding-left: 2%;">
                  			<p class="text-justify" style="font-size: 15px;">
                  			Home, where I learned the truth about despair, as will you. There's a reason why this prison is the worst hell on earth... Hope. Every man who has rotted here over the centuries has looked up to the light and imagined climbing to freedom. So easy... So simple... And like shipwrecked men turning to sea water from uncontrollable thirst, many have died trying. I learned here that there can be no true despair without hope. So, as I terrorize Gotham, I will feed its people hope to poison their souls. I will let them believe they can survive so that you can watch them clambering over each other to stay in the sun. You can watch me torture an entire city and when you have truly understood the depth of your failure, we will fulfill Ra's al Ghul's destiny... We will destroy Gotham and then, when it is done and Gotham is...ashes... then you have my permission to die.
                  			</p>
                  		</div>
                  		<div id="imagesHolder" class="col-lg-12">
							<ul class="row">
					            <li class="col-lg-2 col-md-2 col-sm-4 col-xs-3">
					                <img class="img-responsive" src="images/1.jpg">
					            </li>
			          		</ul> 
						</div>
                  		<div class="input-group" id="optionsContainer">
	                  		<div class="col-sm-12">
	                  			 	<span class="input-group-addon">
					                	A
					              	</span>
					                <p class="text-justify form-control correct" style="font-size: 15px;">
		                  			Gotham needed a hero.
		                  			</p>
					              
					        </div>
					        <div class="col-sm-12">
                  			 	<span class="input-group-addon">
				                	B
				              	</span>
				                <p class="text-justify form-control" style="font-size: 15px;">
		                  			Not everything. Not yet.
		                  		</p>
				              
				        	</div>
				        	<div class="col-sm-12">
                  			 	<span class="input-group-addon">
				                	C
				              	</span>
				                <p class="text-justify form-control wrong" style="font-size: 15px;">
		                  			The shadows betray you, because they belong to me.
		                  		</p>
				              
				        	</div>
				        	<div class="col-sm-12 ">
				        		<span class="input-group-addon">
				                	D
				              	</span>
				                <p class="text-justify form-control" style="font-size: 15px;">
		                  			Every Hero Has a Journey. Every Journey Has an End.
		                  		</p>
				              
				        	</div>
				        </div>
                  	</div>
                  	<div class="row tab-pane fade" id="detailedSolution1Container">
				        	<section class="panel">
		                      <div class="col-lg-12" style="padding-left: 2%;">
					        		<h3>Computing the area of rectangle</h3>
					        		<p>Detailed explaination of finding the area of rectangle</p>
					        	</div>
					        	</section>
				        </div>
				        
				        <div class="row tab-pane fade" id="suggestedSolution1Container">
				        	<section class="panel">
				        		<div class="panel panel-default">
				        			<div class="panel-body">
				        				<div class="col-lg-12">
					        				<div class="col-lg-2"> 
								                <img class="img-responsive" src="images/7.jpg"></img>
								                <p><a href="#">Alfred Pennyworth</a></p>
								                <span style="font-size:30px; margin-left:centre;">24</span>
								                <label style="font-size:12px;"> People found this useful. Do you find this useful? <input type="checkbox" data-toggle="toggle"></input></label>
								        	</div>
								        	<div class="col-lg-10" style="padding-left: 2%;"> 
								        		<p>Do you remember when you left Gotham? Before all this, before Batman? You were gone seven years. Seven years I waited, hoping that you wouldn't come back. Every year, I took a holiday. I went to Florence, there's this cafe, on the banks of the Arno. Every fine evening, I'd sit there and order a Fernet Branca. I had this fantasy, that I would look across the tables and I'd see you there, with a wife and maybe a couple of kids. You wouldn't say anything to me, nor me to you. But we'd both know that you'd made it, that you were happy. I never wanted you to come back to Gotham. I always knew there was nothing here for you, except pain and tragedy. And I wanted something more for you than that. I still do.</p>
								        		<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Lucious Fox"src="images/8.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="background-color: #E5EAF0;"> 
										                <p>Thats more like it, Mr Wayne!</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Jim Gordon"src="images/6.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="background-color: #E5EAF0;"> 
										                <p>I never cared who you were</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px;"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Bruce Wayne"src="images/5.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="background-color: #E5EAF0;"> 
										                <p>If this man is everything that you say he is, then the city needs me.</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Selina Kyle"src="images/9.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="background-color: #E5EAF0;"> 
										                <p>I am adoptable</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2"> 
										                <img class="img-responsive" title="you"src="images/5.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="padding-left: 2%;"> 
										               <textarea style="width:100%;" placeholder="Comment on this thread"></textarea>
										        	</div>
										        	<button class="btn btn-primary pull-right" >Comment</button>
									        	</div>
								        	</div>
							        	
						        		</div>
				        			</div>
				        		</div>
				        		
				        		<div class="panel panel-default">
				        			<div class="panel-body">
				        				<div class="col-lg-12">
					        				<div class="col-lg-2" style="padding-left: 2%;"> 
								                <img class="img-responsive" src="images/8.jpg"></img>
								                <p>Lucious Fox</p>
								        	</div>
								        	<div class="col-lg-10" style="padding-left: 2%;"> 
								        		<p>Let me get this straight. You think that your client, one of the wealthiest, most powerful men in the world, is secretly a vigilante who spends his nights beating criminals to a pulp with his bare hands; and your plan, is to blackmail this person?</p>
								        		<div class="row col-lg-12" style="background-color: #D4DCE6;"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Bruce Wayne"src="images/5.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="padding-left: 2%;"> 
										                <p>If this man is everything that you say he is, then the city needs me.</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="Selina Kyle"src="images/9.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="padding-left: 2%;"> 
										                <p>I am adoptable</p>
										        	</div>
									        	</div>
									        	<div class="row col-lg-12" style="background-color: #D4DCE6; margin-top: 5px"> 
									        		<div class="col-lg-2" style="padding-left: 2%;"> 
										                <img class="img-responsive" title="you"src="images/5.jpg"></img>
										        	</div>
										        	<div class="col-lg-10" style="padding-left: 2%;"> 
										               <textarea style="width:100%; background-color: #E5EAF0;" placeholder="Comment on this thread"></textarea>
										        	</div>
										        	<button class="btn btn-primary pull-right" onclick="addCommentToThisThread();">Comment</button>
									        	</div>
								        	</div>
							        	
						        		</div>
				        			</div>
				        		</div>
				        		<div class="panel panel-default">
				        			<div class="panel-body" style="background-color: #E5EAF0;">
						        		<div class="col-lg-12" >
						        			<textarea style="width: 100%;" placeholder="Start a new discussion thread"></textarea>
						        			<button class="btn btn-primary pull-right" >Post</button>
						        		</div>
						        	</div>
						        </div>
					        </section>
				        </div>
				        
				        <div class="row tab-pane fade" id="question1StatisticsContainer">
				        	<section class="panel">
				        		<div class="panel panel-default">
				        			<div class="panel-body">
				        				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                    <div class="info-box dark-bg" align="center" style="margin:0 auto;">
												<div class="title"><a href="CoursePage.jsp">Time taken</a></div>
												<div class="count" title="">71 sec</div>
												<div class="small" title="Class average">62Sec</div>					
											</div>
						                 </div>
							               
							             <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                    <div class="info-box dark-bg" align="center" style="margin:0 auto;">
												<div class="title"><a href="CoursePage.jsp">Class submissions</a></div>
												<div class="count" title="">11(19)</div>					
											</div>
						                 </div> 
				        			</div>
				        		</div>
				        	</section>
				        </div>
				    </div>
                    </section>
				</div>
				           
			</div>
			<div class="row" id="question2">
				<div class="col-lg-12">
					<section class="panel">
                      <header class="panel-heading">
                          <h3>Question 2</Char>
                      </header>
                      <ul class="nav nav-tabs" role="tablist">
				      <li class="active">
				          <a href="#question2Container" role="tab" data-toggle="tab">
				              <icon class="fa fa-question"></icon> Question
				          </a>
				      </li>
				      <li><a href="#detailedSolution2Container" role="tab" data-toggle="tab">
				          <i class="fa fa-eye"></i> Solution
				          </a>
				      </li>
				      <li>
				          <a href="#suggestedSolution2Container" role="tab" data-toggle="tab">
				              <i class="fa fa-users"></i> Discussion
				          </a>
				      </li>
				      <li>
				          <a href="#question2StatisticsContainer" role="tab" data-toggle="tab">
				              <i class="fa fa-tachometer"></i> Statistics
				          </a>
				      </li>
				    </ul>
				    <div class="tab-content">
                      <div class="row tab-pane fade active in" id="question2Container">
                  		<div class="col-lg-12" style="padding-left: 2%;">
                  			<p class="text-justify" style="font-size: 15px;">
                  			Home, where I learned the truth about despair, as will you. There's a reason why this prison is the worst hell on earth... Hope. Every man who has rotted here over the centuries has looked up to the light and imagined climbing to freedom. So easy... So simple... And like shipwrecked men turning to sea water from uncontrollable thirst, many have died trying. I learned here that there can be no true despair without hope. So, as I terrorize Gotham, I will feed its people hope to poison their souls. I will let them believe they can survive so that you can watch them clambering over each other to stay in the sun. You can watch me torture an entire city and when you have truly understood the depth of your failure, we will fulfill Ra's al Ghul's destiny... We will destroy Gotham and then, when it is done and Gotham is...ashes... then you have my permission to die.
                  			</p>
                  		</div>
                  		<div id="imagesHolder" class="col-lg-12">
							<ul class="row">
					            <li class="col-lg-2 col-md-2 col-sm-4 col-xs-3">
					                <img class="img-responsive" src="images/1.jpg">
					            </li>
			          		</ul> 
						</div>
                  		<div class="input-group" id="optionsContainer">
	                  		<div class="col-sm-12">
	                  			 	<span class="input-group-addon">
					                	A
					              	</span>
					                <p class="text-justify form-control" style="font-size: 15px;">
		                  			Gotham needed a hero.
		                  			</p>
					              
					        </div>
					        <div class="col-sm-12">
                  			 	<span class="input-group-addon">
				                	B
				              	</span>
				                <p class="text-justify form-control" style="font-size: 15px;">
		                  			Not everything. Not yet.
		                  		</p>
				              
				        	</div>
				        	<div class="col-sm-12">
                  			 	<span class="input-group-addon">
				                	C
				              	</span>
				                <p class="text-justify form-control" style="font-size: 15px;">
		                  			The shadows betray you, because they belong to me.
		                  		</p>
				              
				        	</div>
				        	<div class="col-sm-12 ">
				        		<span class="input-group-addon">
				                	D
				              	</span>
				                <p class="text-justify form-control correct" style="font-size: 15px;">
		                  			Every Hero Has a Journey. Every Journey Has an End.
		                  		</p>
				              
				        	</div>
				        </div>
				        
                  		</div>
                  		<div class="tab-pane fade" id="detailedSolution2Container">
				        	<section class="panel">
					        	<div class="col-lg-12" style="padding-left: 2%;">
					        		<h3>Computing the area of rectangle</h3>
					        		<p>Detailed explaination of finding the area of rectangle</p>
					        	</div>
					        	</section>
				        </div>
				        
				        <div class="tab-pane fade" id="suggestedSolution2Container">
				        	<section class="panel">
					        	<div class="col-lg-12" style="padding-left: 2%;">
					        		<p>Its not who i am underneath, its what i do, that defines me!</p>
					        	</div>
					        </section>
					        
					        <section class="panel">
					        	<div class="col-lg-12" style="padding-left: 2%;">
					        		<p>Innocent is strong word to throw around these people, Bruce.</p>
					        	</div>
					        </section>
				        </div>
				        <div class="row tab-pane fade" id="question2StatisticsContainer">
				        	<section class="panel">
				        		<div class="panel panel-default">
				        			<div class="panel-body">
				        				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                    <div class="info-box dark-bg" align="center" style="margin:0 auto;">
												<div class="title"><a href="CoursePage.jsp">Time taken</a></div>
												<div class="count" title="">71 sec</div>
												<div class="small" title="Class average">62Sec</div>					
											</div>
						                 </div>
							               
							             <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						                    <div class="info-box dark-bg" align="center" style="margin:0 auto;">
												<div class="title"><a href="CoursePage.jsp">Class submissions</a></div>
												<div class="count" title="">11(19)</div>					
											</div>
						                 </div> 
				        			</div>
				        		</div>
				        	</section>
				        </div>     
				        
				        </div>
                    </section>
				</div>
			</div>
         </section>
  </section>
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
