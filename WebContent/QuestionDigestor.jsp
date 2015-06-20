<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
 <%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
  <title>Question digestion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap-3.3.4/bootstrap.min.css">

  <script src="js/jquery.min.js"></script> 
 <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
  <link rel="stylesheet" href="css/fileupload.css">
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
  <style>
      ul {         
          padding:0 0 0 0;
          margin:0 0 0 0;
      }
      ul li {     
          list-style:none;
          margin-bottom:25px;           
      }
      ul li img {
          cursor: pointer;
      }
      .modal-body {
          padding:5px !important;
      }
      .modal-content {
          border-radius:0;
      }
      .modal-dialog img {
          text-align:center;
          margin:0 auto;
      }
    .controls{          
        width:50px;
        display:block;
        font-size:11px;
        padding-top:8px;
        font-weight:bold;          
    }
    .next {
        float:right;
        text-align:right;
    }
      /*override modal for demo only*/
      .modal-dialog {
          max-width:500px;
          padding-top: 90px;
      }
      @media screen and (min-width: 768px){
          .modal-dialog {
              width:500px;
              padding-top: 90px;
          }          
      }
      @media screen and (max-width:1500px){
          #ads {
              display:none;
          }
      }
  </style>
<script type="text/javascript">
$(function() {
        var addSolutionProcess = $('#solutionContainer');
        var SolutionProcesses = $('#solutionContainer div').size();
        
        $('#addNextProcess').on('click', function() {
                var parent = $('#SolutionProcess_' + SolutionProcesses-1);
                $('<div class="input-group"><input id="SolutionProcess' + SolutionProcesses + '" name="SolutionProcess' + SolutionProcesses + '" class="form-control" type="text" placeholder="Step description"><span class="input-group-addon btn btn-primary" id="removeThisProcess">-</span></div><textarea id="SolutionProcess' + SolutionProcesses +'" name="SolutionProcess' + SolutionProcesses +'" class="form-control" type="text" placeholder="steps involved in the solution" cols=100 rows=5></textarea>').appendTo(addSolutionProcess);
                SolutionProcesses++;
        
                return false;
        });
        
        var addSolutionSteps = $('#stepsContainer');
        var solutionSteps = $('#stepsContainer div').size();
        
        $('#addNextStep').on('click', function() {
                var parent = $('#step_' + solutionSteps-1);
                $('<div class="input-group"><select id="SolutionStep' + solutionSteps + '" name="SolutionStep' + solutionSteps + '" class="form-control"></select><span class="input-group-addon"><select id="CalculationLevel' + solutionSteps + '" name="CalculationLevel' + solutionSteps + '"><option value="1">Level 1</option><option value="2">Level 2</option><option value="3">Level 3</option></select></span><span class="input-group-addon"><select id="AnalysisLevel0" name="AnalysisLevel' + solutionSteps + '"><option value="1">YES</option><option value="0">NO</option></select></span><span class="input-group-addon btn btn-primary" id="removeThisStep">-</span></div>').appendTo(addSolutionSteps);
                SolutionSteps++;
                return false;
        });
        
        var addSolutionFormulae = $('#formulaeContainer');
        var solutionFormulae = $('#formulaeContainer div').size();
        
        $('#addNextFormula').on('click', function() {
                var parent = $('#step_' + solutionFormulae-1);
                $('<div class="input-group"><select id="Formula' + solutionFormulae + '" name="Formula' + solutionFormulae + '" class="form-control"></select><span class="input-group-addon btn btn-primary" id="removeThisFormula">-</span></div>').appendTo(addSolutionFormulae);
                SolutionFormulae++;
                return false;
        });
        
        var addSubTopic = $('#SubTopicContainer');
        var subtopics = $('#SubTopicContainer div').size();
        
        $('#addNextSubTopic').on('click', function() {
                var parent = $('#step_' + subtopics-1);
                $('<div class="input-group"><select id="questionSubTopic' + subtopics + '" name="questionSubTopic' + subtopics + '" class="form-control"></select><span class="input-group-addon btn btn-primary" id="removeThisSubTopic">-</span></div>').appendTo(addSubTopic);
                subtopics++;
                return false;
        });
        
        $('#removeThisProcess').on('click', function() { 
                if( i > 1 ) {
                        $(this).parents('div').remove();
                        i--;
                }
                return false;
        });

        $('#questionText').on('change keyup paste focus', function(){
          ltxClear();
          document.getElementById("questionPreviewText").innerHTML = ltxParse(document.getElementById('questionText').value);
        })
        
        $('#questionTopic').on('change focus', function(){
          document.getElementById("questionPreviewTopic").innerHTML = document.getElementById('questionTopic').value;
        })
        
         $('#questionSubTopic0').on('change focus', function(){
          document.getElementById("questionPreviewSubTopic").innerHTML = document.getElementById('questionSubTopic0').value;
        })
        
        $('#Option1CheckBox').on('change focus keyup paste', function(){
       		ltxClear();
          	document.getElementById("choices1Preview").innerHTML = ltxParse(document.getElementById('Option1CheckBox').value);
        })
        
        $('#Option2CheckBox').on('change focus keyup paste', function(){
        	ltxClear();
        	document.getElementById("choices2Preview").innerHTML = ltxParse(document.getElementById('Option2CheckBox').value);
        })
        
        $('#Option3CheckBox').on('change focus keyup paste', function(){
        	ltxClear();
        	document.getElementById("choices3Preview").innerHTML = ltxParse(document.getElementById('Option3CheckBox').value);
        })
        
        $('#Option4CheckBox').on('change focus keyup paste', function(){
        	ltxClear();
        	document.getElementById("choices4Preview").innerHTML = ltxParse(document.getElementById('Option4CheckBox').value);
        })
        /*$('#questionTags').popover({
          html : true,
          trigger: 'focus',
          content : function(){
            return $('#popover_content_wrapper').html();
          }
        });*/
});
</script>
</head>
<body>

<div class="container">
  <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Question</legend>

<div class="row">
	<div id="questionEditor" class="col-md-6">
		<!-- Select The topic of the question -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="questionTopic">Topic</label>
		  <div class="col-md-10">
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
			  <div class="input-group"> 
			    <select id="questionSubTopic0" name="questionSubTopic0" class="form-control">
			    </select>
			    <span class="input-group-addon btn btn-primary" id="addNextSubTopic">+</span>
				<span class="input-group-addon btn btn-primary" id="removeThisSubTopic">-</span>
			  </div>
		  </div>
		</div>
		
		<!-- Textarea for the actual question -->
		<div class="form-group" name=question>
		  <label class="col-md-2 control-label" for="questionText">Question</label>
		  <div class="col-md-10">                     
		    <textarea class="form-control" id="questionText" name="questionText" cols=100 rows=10>type question text here </textarea>
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
		  <div class="col-md-10">
		  <input id="questionTags" name="questionTags" type="text" placeholder="comma separated tags" class="form-control input-md" required="">
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
	
		<!-- Solution steps -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Solution</label>
		  <div class="col-md-10" id="solutionContainer">
		  	<div class="input-group">                     
			    <input id="SolutionStep0" name="SolutionStep0" class="form-control" type="text" placeholder="step description"/>
			    <span class="input-group-addon btn btn-primary" id="addNextProcess">+</span>
			    <span class="input-group-addon btn btn-primary" id="removeThisProcess">-</span>
			</div>
		    <textarea id="SolutionStep0" name="SolutionStep0" class="form-control" type="text" placeholder="steps involved in the solution" cols=100 rows=5></textarea>
		  </div>
		</div>
		
		<!-- Steps and analysis involved -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Steps involved</label>
		  <div class="col-md-10" id="stepsContainer">
		  	<div class="input-group">                     
			    <select id="Step0" name="Step0" class="form-control">
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
			    <span class="input-group-addon btn btn-primary" id="removeThisStep">-</span>
			</div>
		  </div>
		</div>
		
		<!-- Formulae used -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="Solution">Formulae used</label>
		  <div class="col-md-10" id="formulaeContainer">
		  	<div class="input-group">                     
			    <select id="Formula0" name="Formula0" class="form-control">
			    </select>
			    <span class="input-group-addon btn btn-primary" id="addNextFormula">+</span>
			    <span class="input-group-addon btn btn-primary" id="removeThisFormula">-</span>
			</div>
		  </div>
		</div>
		<!-- Button (Double) -->
		<div class="form-group">
		  <label class="col-md-4 control-label" for="questionSubmit"></label>
		  <div class="col-md-8">
		  	<button id="questionPreview" name="questionPreview" class="btn btn-primary" onclick="javascript:preview('questionText')">Preview</button>
		    <button id="questionSubmit" name="questionSubmit" class="btn btn-success">submit</button>
		    <button id="cancel" name="cancel" class="btn btn-danger">Cancel</button>
		  </div>
		</div>
	</div>
	<div class="col-md-6" id="QuestionPreview">
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


</div>

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
</body>

<script type="text/javascript">
  function preview(divId){
    ltxClear();
    document.getElementById("previewHTML").innerHTML = ltxParse(document.getElementById(divId).value);
  }

  function uploadFile(){
	  
  }
  
  $('#questionTopic').click(function(){
	  var topicval = $('#questionTopic').val();
	  //Get the list of subtopics
	  jQuery.ajax({
     		type:"get",
     		dataType:"text",
     		url:"getSubTopics",
     		data:{topic:topicval},
     		success: function(responseText) { 
     			var serverResponse = responseText.split("#");
     			var subtopicsDropdown = document.getElementById("questionSubTopic0");
     			for(var i=0;i<serverResponse.length; i++){
     				var el = document.createElement("option");
     			    el.textContent = serverResponse[i];
     			    el.value = serverResponse[i];
     			    subtopicsDropdown.appendChild(el);
     			}
             }
     	});
  });
  
  $('#questionSubTopic').click(function(){
	  var topicval = $('#questionTopic').val();
	  var subtopicval = $('#questionSubTopic').val();
	  //Get the list of subtopics
	  jQuery.ajax({
     		type:"get",
     		dataType:"text",
     		url:"getSteps",
     		data:{topic:topicval,subtopic:subtopicval},
     		success: function(responseText) { 
     			var serverResponse = responseText.split("#");
     			var subtopicsDropdown = document.getElementById("Step0");
     			for(var i=0;i<serverResponse.length; i++){
     				var el = document.createElement("option");
     			    el.textContent = serverResponse[i];
     			    el.value = serverResponse[i];
     			    subtopicsDropdown.appendChild(el);
     			}
             }
     	});
  });
</script>
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="js/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="//blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="//blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="//blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- blueimp Gallery script -->
<script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="js/jquery.fileupload-ui.js"></script>
<!-- The main application script -->
<script src="js/main.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-41071247-1', 'blueimp.github.io');
ga('send', 'pageview');
</script>
</html>

