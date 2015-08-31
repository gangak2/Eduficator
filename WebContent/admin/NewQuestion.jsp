<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>New question</title>

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

	<!-- Loading Deterministic Finite Automata (DFA) data -->
  	<script src="js/LaTeX_asc.js"></script>
  	<script src="js/LaTeX_acc.js"></script>
  	<script src="js/LaTeX_tok.js"></script>
  	<script src="js/LaTeX_dfa_comp.js"></script>
  	<!-- Libraries used by the main script -->
  	<script src="js/LaTeX_symbols.js"></script>
  	<script src="js/LaTeX_functions.js"></script>
  <!-- 
     Edit the following file to change your own aliases that 
     you have defined using \def, \newcommand or \renewcommand 
  -->
  	<script src="js/LaTeX_aliases.js"></script>
  	<script src="js/LaTeX2HTML.js"></script>
  	<script src="js/jquery.min.js"></script> 
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
            <a href="index.html" class="logo">O <span class="lite">Kul</span></a>
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
                            <span class="username">Admin</span>
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

	  <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu"> 
				  <li class="active">
                      <a href="#classrooms" class="">
                          <i class="icon_document_alt"></i>
                          <span>Add new question</span>
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
        	<form class="form-horizontal" >
				<fieldset>
					<legend>New Question</legend>
					<div class="row">
						<div id="questionEditor" class="col-lg-6">
							<div class="form-group">
		  						<label class="col-lg-2 control-label" for="questionTopic">Topic</label>
		  						<div class="col-lg-10" id="topicContainer">
								    <select id="questionTopic" name="questionTopic" class="form-control">
								     <%
								    	for(String val : (ArrayList<String>)request.getAttribute("topics")){
									%>
									<option value="<%=val %>"><%=val %></option>
									<%
										}
									%>
								    </select>
		  						</div>
							</div>
	
		<!-- Select The subtopic of the question -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="questionsubTopic">Sub Topic</label>
		  <div class="col-md-10" id="SubTopicContainer">
		  	  <div class="row">
				  <div class="input-group"> 
				    <select id="questionSubTopic0" name="questionSubTopic0" class="form-control"></select>
				    <span class="input-group-addon btn btn-primary" id="addNextSubTopic">+</span>
				  </div>
			  </div>
		  </div>
		</div>
		
		<!-- Textarea for the actual question -->
		<div class="form-group" name=question>
		  <label class="col-md-2 control-label" for="questionText">Question</label>
		  <div class="col-md-10" id="questionContainer"> 
		  	<div class="row">
				<div class="input-group">                     
		    		<textarea class="form-control" id="questionText" name="questionText" cols=100 rows=10> </textarea>
		    	</div>
		    </div>
		  </div>
		</div>
	
		<!-- Append image --> 
		<div class="form-group">
		  <label class="col-md-2 control-label" for="questionFile">Reference diagrams</label>
		  <div class="col-md-10">
		    <!-- The fileinput-button span is used to style the file input field as button -->
                <span class="btn btn-success fileinput-button">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Add files...</span>
                    <input type="file" name="uploadedimage" id="uploadedimage">
                </span>
                <button type="submit" class="btn btn-primary start" onclick="uploadFile();">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start upload</span>
                </button>
                <!-- <button type="reset" class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel upload</span>
                </button>
                <button type="button" class="btn btn-danger delete">
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>  -->
		  </div>
		  <div class="col-lg-5 fileupload-progress fade">
                <!-- The global progress bar -->
                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                </div>
                <!-- The extended global progress state -->
                <div class="progress-extended">&nbsp;</div>
            </div>
            <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
		</div>
	
		<!-- Comma seperated question tags for searching the database-->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="questionTags">Question tags</label>  
		  <div class="col-md-10" id="questiontagsContainer">
		  			<input id="questionTags" name="questionTags" type="text" placeholder="comma separated tags" class="form-control input-md">
		  </div>
		</div>
	
		<!-- Choice 1 -->
		<div class="form-group">
		  	<label class="col-md-2 control-label" for="Option1CheckBox">Option 1</label>
		  	<div class="col-md-10">
			    <div class="input-group">
			      <span class="input-group-addon">     
			          <input type="checkbox">     
			      </span>
			      <input id="Option1CheckBox" name="Option1CheckBox" class="form-control" type="text" placeholder="......." required="">
			      <span class="btn btn-success fileinput-button input-group-addon">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>Add file</span>
	                    <input type="file" name="files">
	                </span>
			    </div>
			</div>
		</div>
	
		<!-- Choice 2 -->
		<div class="form-group">
		  	<label class="col-md-2 control-label" for="Option1CheckBox">Option 2</label>
		  	<div class="col-md-10">
			    <div class="input-group">
			      <span class="input-group-addon">     
			          <input type="checkbox">     
			      </span>
			      <input id="Option2CheckBox" name="Option2CheckBox" class="form-control" type="text" placeholder="......." required="">
			      <span class="btn btn-success fileinput-button input-group-addon">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>Add file</span>
	                    <input type="file" name="files">
	                </span>
			    </div>
			</div>
		</div>
	
		<!-- Choice 3 -->
		<div class="form-group">
		  	<label class="col-md-2 control-label" for="Option1CheckBox">Option 3</label>
		  	<div class="col-md-10">
			    <div class="input-group">
			      <span class="input-group-addon">     
			          <input type="checkbox">     
			      </span>
			      <input id="Option3CheckBox" name="Option3CheckBox" class="form-control" type="text" placeholder="......." required="">
			      <span class="btn btn-success fileinput-button input-group-addon">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>Add file</span>
	                    <input type="file" name="files">
	                </span>
			    </div>
			</div>
		</div>
	
		<!-- Choice 4 -->
		<div class="form-group">
		  	<label class="col-md-2 control-label" for="Option1CheckBox">Option 4</label>
		  	<div class="col-md-10">
			    <div class="input-group">
			      <span class="input-group-addon">     
			          <input type="checkbox">     
			      </span>
			      <input id="Option4CheckBox" name="Option4CheckBox" class="form-control" type="text" placeholder="......." required="">
			      <span class="btn btn-success fileinput-button input-group-addon">
	                    <i class="glyphicon glyphicon-plus"></i>
	                    <span>Add file</span>
	                    <input type="file" name="files">
	                </span>
			    </div>
			</div>
		</div>
	
		<!-- Solution procedure -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Solution</label>
		  <div class="col-md-10" id="solutionContainer">
		  <div class="row">
		  	<div class="input-group">                     
			    <input id="SolutionProcessHead0" name="SolutionProcessHead0" class="form-control" type="text" placeholder="step description"/>
			    <span class="input-group-addon btn btn-primary" id="addNextProcess">+</span>
			</div>
		    <textarea id="SolutionProcessDetails0" name="SolutionProcessDetails0" class="form-control" type="text" placeholder="steps involved in the solution" cols=100 rows=5></textarea>
		  </div>
		  </div>
		</div>
		
		<!-- Steps and analysis involved -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Steps involved</label>
		  <div class="col-md-10" id="stepsContainer">
		  <div class="row">
		  	<div class="input-group">                     
			    <select id="solutionStep0" name="solutionStep0" class="form-control">
			    </select>
			    <span class="input-group-addon">
	                    <select id="CalculationLevel0" name="CalculationLevel0">
	                    	<option value="1">Level 1</option>
	                    	<option value="2">Level 2</option>
	                    	<option value="3">Level 3</option>
			    		</select>
	            </span>
	            <span class="input-group-addon">
	                    <select id="AnalysisLevel0" name="AnalysisLevel0">
	                    	<option value="1">YES</option>
	                    	<option value="0">NO</option>
			    		</select>
	            </span>
			    <span class="input-group-addon btn btn-primary" id="addNextStep">+</span>
			</div>
		  </div>
		  </div>
		</div>
		
		<!-- Formulae used -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Formulae used</label>
		  <div class="col-md-10" id="formulaeContainer">
		  <div class="row">
		  	<div class="input-group">                     
			    <select id="solutionFormula0" name="solutionFormula0" class="form-control"></select>
			    <span class="input-group-addon btn btn-primary" id="addNextFormula">+</span>
			</div>
		  </div>
		  </div>
		</div>
		<!-- Button (Double) -->
		
		<div class="form-group">
		  <label class="col-md-4 control-label" for="questionSubmit"></label>
		  <div class="col-md-8">
		  	<button id="questionPreview" name="questionPreview" class="btn btn-primary" onclick="javascript:preview('questionText')">Preview</button>
		    <button id="questionSubmit" name="questionSubmit" class="btn btn-success" onclick="javascript:submitToDatabase();">submit</button>
		    <button id="cancel" name="cancel" class="btn btn-warning">Cancel</button>
		  </div>
		</div>
	</div>
	<div class="col-lg-6" id="QuestionPreview">
		<div class="col-lg-6 pull-right">
			<span class="badge">Difficulty | 3.2</span>	
			<span class="badge">Time | 38 sec</span>			
		</div>
		<div id="previewHTML">
			<div class="page-header">
				<h1 id="questionPreviewTopic"></h1>
				<p id="questionPreviewSubTopic"></p>
			</div>
			<div id="questionPreviewText">
			</div>
			<div id="imagesHolder">
				<ul class="row">
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
		            <li class="col-lg-4 col-md-2 col-sm-4 col-xs-3">
		                <img class="img-responsive" src="images/1.jpg">
		            </li>
          		</ul> 
			</div>
			<div id="choicesPreviewText">
				<div class="input-group">
				      <span class="input-group-addon">     
				          <input type="checkbox">     
				      </span>
				      <div id="choices1Preview" name="choices2Preview"></div>
			    </div>
			    <div class="input-group">
				      <span class="input-group-addon">     
				          <input type="checkbox">     
				      </span>
				      <div id="choices2Preview" name="choices2Preview"></div>
			    </div>
			    <div class="input-group">
				      <span class="input-group-addon">     
				          <input type="checkbox">     
				      </span>
				      <div id="choices3Preview" name="choices3Preview"></div>
			    </div>
			    <div class="input-group">
				      <span class="input-group-addon">     
				          <input type="checkbox">     
				      </span>
				      <div id="choices4Preview" name="choices4Preview"></div>
			    </div>
			</div>
		</div>
	</div>
</div>
</fieldset>
</form>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" name=que>
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Preview</h4>
        </div>
        <div class="modal-body" id="renderedHTML">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
</div>

<div id="popover_content_wrapper" style="display: none">
  <div id="popoverHTML"></div>
</div>
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
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    
    <!-- Question parameters -->
	<script src="admin/js/newquestion.js"></script>

  </body>
</html>
