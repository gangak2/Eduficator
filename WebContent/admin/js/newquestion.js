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
            var options = $('#questionSubTopic0').html();
            $('#questionSubTopic' + subtopics).html(options);
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
     	     			//alert(responseText);
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
     	     	     			//alert(responseText);
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
  
 function fetchAllSubTopics(){
	 var subtopics = [];
	  $('#SubTopicContainer div div').children('select').each(function(){
		  subtopics.push($(this).val());
	  });
	  
	 return subtopics.join("|");
 }
  
 function fetchAllProcesses(){
	 var heads = [];
	 $('#solutionContainer div div input').each(function(){
		  heads.push($(this).val());
	  });
	 var descs = [];
	 $('#solutionContainer div textarea').each(function(){
		  descs.push($(this).val());
	  });
	 var procedure = [];
	 for(var i=0;i<heads.length;i++){
		 procedure.push(heads[i]+":"+descs[i]);
	 }
	 return procedure.join("|");
 }
 
 function fetchAllSteps(){
	 var steps = [];
	 $('#stepsContainer div div').each(function(){
		 	var stepdetails = [];
		  	$(this).children('select').each(function(){
		  		stepdetails.push($(this).val());
		  	});
		  	$(this).children('span select').each(function(){
		  		stepdetails.push($(this).val());
		  	});
		  	steps.push(stepdetails.join(":"));
		  });
	 return steps.join("|");
 }
 
 function fetchAllFormulae(){
	 var formulae = [];
	 $('#formulaeContainer div div').each(function(){
		  formulae.push($(this).children('select').val());
	  });
	 return formulae.join("|");
 }
 
  function submitToDatabase(){
	  //Fetch the submitable details
	  //Fetch the topic of the question
	  var topic = $('#questionTopic').val();
	  
	  //Fetch the subtopics referenced in the question
	  var subTopicList = fetchAllSubTopics();
	  
	  //Fetch the question text
	  var question = $('#questionText').val();
	  
	  //Fetch the question tags
	  var questionTags = $('#questionTags').val();
	  
	  //Fetch all the options provided
	  var option1 = $('#Option1CheckBox').val();
	  var option2 = $('#Option2CheckBox').val();
	  var option3 = $('#Option3CheckBox').val();
	  var option4 = $('#Option4CheckBox').val();
	  var options = option1 + "|" + option2 + "|" + option3 + "|" + option4;
	  
	  //Fetch the procedure involved
	  var procedure = fetchAllProcesses();
	  
	  //Fetch all the steps and analysis level involved
	  var steps = fetchAllSteps();
	  
	  //Fetch all the formulae used
	  var formulae = fetchAllFormulae();
	  
	  jQuery.ajax({
   		type:"get",
   		dataType:"text",
   		url:"importQuestion",
   		data:{_topic:topic,_subTopicList:subTopicList,_question:question,_questionTags:questionTags,_options:options,_procedure:procedure,_steps:steps,_formulae:formulae}
	  });
  }