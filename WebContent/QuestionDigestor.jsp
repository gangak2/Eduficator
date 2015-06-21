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
	//Remove this element
	$('#questionEditor').on('click', '.btn-danger', function() {
		$(this).parent().parent().remove();
	});
        
	//Add new process into the solution
	var addSolutionProcess = $('#solutionContainer');
    var solutionProcesses = $('#solutionContainer div').size();
        
    $('#addNextProcess').on('click', function() {
            var parent = $('#SolutionProcess_' + solutionProcesses-1);
            $('<div class="row"><div class="input-group"><input id="SolutionProcess' + solutionProcesses + '" name="SolutionProcess' + solutionProcesses + '" class="form-control" type="text" placeholder="Step description"><span class="input-group-addon btn btn-danger" id="removeThisProcess">-</span></div><textarea id="SolutionProcess' + solutionProcesses +'" name="SolutionProcess' + solutionProcesses +'" class="form-control" type="text" placeholder="steps involved in the solution" cols=100 rows=5></textarea></div>').appendTo(addSolutionProcess);
            
            solutionProcesses++;
            return false;
    });
        
    //Add new step used for solving this question    
    var addSolutionSteps = $('#stepsContainer');
    var solutionSteps = $('#stepsContainer div').size();
    
    $('#addNextStep').on('click', function() {
            var parent = $('#step_' + solutionSteps-1);
            $('<div class="row"><div class="input-group"><select id="SolutionStep' + solutionSteps + '" name="SolutionStep' + solutionSteps + '" class="form-control"></select><span class="input-group-addon"><select id="CalculationLevel' + solutionSteps + '" name="CalculationLevel' + solutionSteps + '"><option value="1">Level 1</option><option value="2">Level 2</option><option value="3">Level 3</option></select></span><span class="input-group-addon"><select id="AnalysisLevel0" name="AnalysisLevel' + solutionSteps + '"><option value="1">YES</option><option value="0">NO</option></select></span><span class="input-group-addon btn btn-danger" id="removeThisStep">-</span></div></div>').appendTo(addSolutionSteps);
            var options = $('#solutionStep0').html();
            $('#SolutionStep' + solutionSteps).html(options);
            solutionSteps++;
            return false;
    });
        
    //Add new formula used in the solution
    var addSolutionFormulae = $('#formulaeContainer');
    var solutionFormulae = $('#formulaeContainer div').size();
    
    $('#addNextFormula').on('click', function() {
            var parent = $('#step_' + solutionFormulae-1);
            $('<div class="row"><div class="input-group"><select id="Formula' + solutionFormulae + '" name="Formula' + solutionFormulae + '" class="form-control"></select><span class="input-group-addon btn btn-danger" id="removeThisFormula">-</span></div></div>').appendTo(addSolutionFormulae);
            var options = $('#solutionFormula0').html();
            $('#Formula' + solutionFormulae).html(options);
            solutionFormulae++;
            return false;
    });
       
    //Add new subtopic referenced in the question
    var addSubTopic = $('#SubTopicContainer');
    var subtopics = $('#SubTopicContainer div').size();
    
    $('#addNextSubTopic').on('click', function() {
            var parent = $('#step_' + subtopics-1);
            $('<div class="row"><div class="input-group"><select id="questionSubTopic' + subtopics + '" name="questionSubTopic' + subtopics + '" class="form-control"></select><span class="input-group-addon btn btn-danger" id="removeThisSubTopic">-</span></div></div>').appendTo(addSubTopic);
            subtopics++;
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
  <form class="form-horizontal" >
<fieldset>

<!-- Form Name -->
<legend>Question</legend>

<div class="row">
	<div id="questionEditor" class="col-md-6">
		<!-- Select The topic of the question -->
		<div class="form-group">
		  <label class="col-md-2 control-label" for="questionTopic">Topic</label>
		  <div class="col-md-10" id="topicContainer">
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
				    <select id="questionSubTopic0" name="questionSubTopic0" class="form-control">
				    </select>
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
		    		<textarea class="form-control" id="questionText" name="questionText" cols=100 rows=10>type question text here </textarea>
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
     			jQuery.ajax({
     	     		type:"get",
     	     		dataType:"text",
     	     		url:"getSteps",
     	     		data:{topic:topicval},
     	     		success: function(responseText) { 
     	     			alert(responseText);
     	     			var serverResponse = responseText.split("#");
     	     			var subtopicsDropdown = document.getElementById("solutionStep0");
     	     			for(var i=0;i<serverResponse.length; i++){
     	     				var el = document.createElement("option");
     	     			    el.textContent = serverResponse[i];
     	     			    el.value = serverResponse[i];
     	     			    subtopicsDropdown.appendChild(el);
     	     			}
     	     			jQuery.ajax({
     	     	     		type:"get",
     	     	     		dataType:"text",
     	     	     		url:"getFormulae",
     	     	     		data:{topic:topicval},
     	     	     		success: function(responseText) { 
     	     	     			alert(responseText);
     	     	     			var serverResponse = responseText.split("#");
     	     	     			var subtopicsDropdown = document.getElementById("solutionFormula0");
     	     	     			for(var i=0;i<serverResponse.length; i++){
     	     	     				var el = document.createElement("option");
     	     	     			    el.textContent = serverResponse[i];
     	     	     			    el.value = serverResponse[i];
     	     	     			    subtopicsDropdown.appendChild(el);
     	     	     			}
     	     	             }
     	     	     	});
     	             }
     	     	});
             }
     	});
  });
  
 
  
  function submitToDatabase(){
	  //Fetch the submitable details
	  //Fetch the topic of the question
	  var topic = $('#questionTopic').val();
	  
	  //Fetch the subtopics referenced in the question
	  var subtopics;
	  $('#SubTopicContainer div div').children('select').each(function(){
		  subtopics = $(this).val() + '|';
	  });
	  
	  //Fetch the question text
	  var question = $('#questionText').val();
	  
	  //Fetch the question tags
	  var questionTags = $('#questionTags').val();
	  
	  //Fetch all the options provided
	  var option1 = $('#Option1CheckBox').val();
	  var option2 = $('#Option2CheckBox').val();
	  var option3 = $('#Option3CheckBox').val();
	  var option4 = $('#Option4CheckBox').val();
	  
	  //Fetch the procedure involved
	  var procedure;
	  $('#solutionContainer div div').each(function(){
		  procedure += $(this).children('input').val();
		  procedure += '[';
		  procedure += $(this).children('textarea').val();
		  procedure += ']::';
	  });
	  
	  //Fetch all the steps and analysis level involved
	  var steps;
	  $('#solutionContainer div div').each(function(){
	  	$(this).children('select').each(function(){
	  		steps += $(this).val() + '|';
	  	});
	  	steps += "::";
	  });
	  
	  //Fetch all the formulae used
	  var formulae;
	  $('#formulaeContainer div div').each(function(){
		  formulae += $(this).children('select').val() + '|';
	  });
	  
	  alert("topic :: " + topic);
	  alert("subtopics :: " + subtopics);
	  alert("question :: " + question);
	  alert("questionTags :: " + questionTags);
	  alert("procedure :: " + procedure);
	  alert("steps :: " + steps);
	  alert("formulae :: " + formulae);
  }
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

</html>

