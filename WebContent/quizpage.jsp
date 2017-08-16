<%@ page import="studentdata.FirstYearOptions" %>
<!DOCTYPE html>
<html>
  <%response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1);
	if(session.getAttribute("studentID")==null){
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.include(request,response);%>
		<div align="center" class="container animated fadeInUp" style="color:#00008B;font-size:18px">You are not logged in! Please Login!</div>
	<%}else{%>
		<head>
    	<title>AAHVAHAN</title>
    	<link rel="stylesheet" href="css/style.css"/>
    	<link rel="stylesheet" href="css/bootstrap.min.css">
    	<link rel="stylesheet" href="css/ionicons.css"/>
    	<link rel="stylesheet" href="css/animate.css" />

    	<!-- jquery -->
    	<script src="js/jquery.min.js"></script>
    	<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<%@ include file="timer.html" %>
		<%@ include file="questions/question1.html" %>
		<%@ include file="questions/question2.html" %>
		<%@ include file="questions/question3.html" %>
		<%@ include file="questions/question4.html" %>
		<%@ include file="questions/question5.html" %>
		<%@ include file="questions/question6.html" %>
		<%@ include file="questions/question7.html" %>
		<%@ include file="questions/question8.html" %>
		<%@ include file="questions/question9.html" %>
		<%@ include file="questions/question10.html" %>
		<%@ include file="questions/question11.html" %>
		<%@ include file="questions/question12.html" %>
		<%@ include file="questions/question13.html" %>
		<%@ include file="questions/question14.html" %>
		<%@ include file="questions/question15.html" %>
		<%@ include file="questions/question16.html" %>
		<%@ include file="questions/question17.html" %>
		<%@ include file="questions/question18.html" %>
		<%@ include file="questions/question19.html" %>
		<%@ include file="questions/question20.html" %>
		<%@ include file="questions/question21.html" %>
		<%@ include file="questions/question22.html" %>
		<%@ include file="questions/question23.html" %>
		<%@ include file="questions/question24.html" %>
		<%@ include file="questions/question25.html" %>
		<%@ include file="questions/question26.html" %>
		<%@ include file="questions/question27.html" %>
		<%@ include file="questions/question28.html" %>
		<%@ include file="questions/question29.html" %>
		<%@ include file="questions/question30.html" %>
		<script>
		var q1=document.getElementById('q1').innerHTML;
		var q2=document.getElementById('q2').innerHTML;
		var q3=document.getElementById('q3').innerHTML;
		var q4=document.getElementById('q4').innerHTML;
		var q5=document.getElementById('q5').innerHTML;
		var q6=document.getElementById('q6').innerHTML;
		var q7=document.getElementById('q7').innerHTML;
		var q8=document.getElementById('q8').innerHTML;
		var q9=document.getElementById('q9').innerHTML;
		var q10=document.getElementById('q10').innerHTML;
		var q11=document.getElementById('q11').innerHTML;
		var q12=document.getElementById('q12').innerHTML;
		var q13=document.getElementById('q13').innerHTML;
		var q14=document.getElementById('q14').innerHTML;
		var q15=document.getElementById('q15').innerHTML;
		var q16=document.getElementById('q16').innerHTML;
		var q17=document.getElementById('q17').innerHTML;
		var q18=document.getElementById('q18').innerHTML;
		var q19=document.getElementById('q19').innerHTML;
		var q20=document.getElementById('q20').innerHTML;
		var q21=document.getElementById('q21').innerHTML;
		var q22=document.getElementById('q22').innerHTML;
		var q23=document.getElementById('q23').innerHTML;
		var q24=document.getElementById('q24').innerHTML;
		var q25=document.getElementById('q25').innerHTML;
		var q26=document.getElementById('q26').innerHTML;
		var q27=document.getElementById('q27').innerHTML;
		var q28=document.getElementById('q28').innerHTML;
		var q29=document.getElementById('q29').innerHTML;
		var q30=document.getElementById('q30').innerHTML;
		var pos = 0,test,test_status,question,qno,choice,choices,chA,chB,chC,chD,correct=0;
		var questions = [
			[q1,"Infinite times","255 times","256 times","254 times","<%=FirstYearOptions.getAnswer(1)%>"],
			[q2,"25","11","Error","Garbage Value","<%=FirstYearOptions.getAnswer(2)%>"],
			[q3,"remove(var-name);","free(var-name);","delete(var-name);","dalloc(var-name);","<%=FirstYearOptions.getAnswer(3)%>"],
			[q4,"21 31 41 51 61 70","21 31 41 51 61","21 31 41 51 ","22 33 44 55","<%=FirstYearOptions.getAnswer(4)%>"],
			[q5,"Prints 'NSEC' 5 times","Function main() doesn't calls itself","Infinte loop","Prints 'NSEC'","<%=FirstYearOptions.getAnswer(5)%>"],
			[q6,"Error","NSECian","an","None of these","<%=FirstYearOptions.getAnswer(6)%>"],
			[q7,"2134","1234","4321","3214","<%=FirstYearOptions.getAnswer(7)%>"],
			[q8,"a>b ? c=30 : c=40;","a>b ? c=30;","max = a>b ? a>c?a:c:b>c?b:c","return (a>b)?(a:b)","<%=FirstYearOptions.getAnswer(8)%>"],
			[q9,"very expensive in terms of memory","low performance","every recursive program can be written with iteration too.","all of the above are true!","<%=FirstYearOptions.getAnswer(9)%>"],
			[q10,"quick sort","selection sort","insertion sort","bubble sort","<%=FirstYearOptions.getAnswer(10)%>"],
			[q11,"Code segment","Stack segment","Heap segment","None of the above","<%=FirstYearOptions.getAnswer(11)%>"],
			[q12,"C++","B++","B","Mini C","<%=FirstYearOptions.getAnswer(12)%>"],
			[q13,"a = 5, b = 3","a = 5,b = 3, c = 0","a = 5, b = 3, 0","Compile error","<%=FirstYearOptions.getAnswer(13)%>"],
			[q14,"1 3 5","2 4","2 4 6","2","<%=FirstYearOptions.getAnswer(14)%>"],
			[q15,"unlimites times","21 times","0 times","20 times","<%=FirstYearOptions.getAnswer(15)%>"],
			[q16,"10","11","Compile time error","0","<%=FirstYearOptions.getAnswer(16)%>"],
			[q17,"Preprocessor directive","Inclusion directive","File inclusion directive","None of the mentioned","<%=FirstYearOptions.getAnswer(17)%>"],
			[q18,"0","1","Undefined behavior","Compile time error","<%=FirstYearOptions.getAnswer(18)%>"],
			[q19,"21","18","12","compile time error","<%=FirstYearOptions.getAnswer(19)%>"],
			[q20,"12 11 11","12 10 10","11 11 12","10 10 12","<%=FirstYearOptions.getAnswer(20)%>"],
			[q21,"stdlib.h","malloc.h","calloc.h","None of above","<%=FirstYearOptions.getAnswer(21)%>"],
			[q22,"a pointer which we need to write in future","a pointer which has bad naming convention","a pointer which has no limit","a point which has not initialized","<%=FirstYearOptions.getAnswer(22)%>"],
			[q23,"-1","1","0","yes","<%=FirstYearOptions.getAnswer(23)%>"],
			[q24,"printf('\n');","echo '\\n';","printf('\n');","printf('\\n');","<%=FirstYearOptions.getAnswer(24)%>"],
			[q25,"Reposition the file pointer to a character reverse.","Reposition the file pointer stream to end of file.","Reposition the file pointer to begining of that line.","Reposition the file pointer to begining of file.","<%=FirstYearOptions.getAnswer(25)%>"],
			[q26,"0 9","0 8","1 8","1 9","<%=FirstYearOptions.getAnswer(26)%>"],
			[q27,"Hello","Infinite Hello","Run time Error","Nothing","<%=FirstYearOptions.getAnswer(27)%>"],
			[q28,"9","11","12","21","<%=FirstYearOptions.getAnswer(28)%>"],
			[q29,"Hello 5","Error","Nothing","Junk value","<%=FirstYearOptions.getAnswer(29)%>"],
			[q30,"func(a);","func(&a);","func(*a);","func(**a);","<%=FirstYearOptions.getAnswer(30)%>"],
		];
		function _(x){
			return document.getElementById(x);
		}
		function renderQuestion(){
			test = _("question_body");
			if(pos==questions.length){
				window.location.href = "CalculatePoint?id="+correct+"";
				pos=0;
				correct=0;
				return false;
			}
			_("question_no").innerHTML = pos+1;
		
			question=questions[pos][0];
			chA = questions[pos][1];
			chB = questions[pos][2];
			chC = questions[pos][3];
			chD = questions[pos][4];
			test.innerHTML = "<h4>"+question+"</h4>";
			_("option1").innerHTML = "<input type='radio' name='choices' value='A'>"+chA;
			_("option2").innerHTML = "<input type='radio' name='choices' value='B'>"+chB;
			_("option3").innerHTML = "<input type='radio' name='choices' value='C'>"+chC;
			_("option4").innerHTML = "<input type='radio' name='choices' value='D'>"+chD;
		}
		function checkAnswer(){
			choices = document.getElementsByName("choices");
			for(var i=0;i<choices.length;i++){
				if(choices[i].checked){
					choice = choices[i].value;
				}
			}
			if(choice == questions[pos][5]){
				correct++;
			}
			pos++;
			renderQuestion();
		}
		window.addEventListener("load",renderQuestion,false);
		</script>
	
    	<!-- fonts -->
    	<link href="https://fonts.googleapis.com/css?family=VT323" rel="stylesheet"/>
    	<link href="https://fonts.googleapis.com/css?family=Share+Tech+Mono" rel="stylesheet"/>
    	<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">


    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
  		</head>

  		<body>
    		<!-- navbar -->
    		<div class="navbar navbar-default">
	      		<div class="container">
        			<div class="navbar-header">
	          			<b class="navbar-brand animated fadeInUp">AAHVAHAN - Dare 2 Code</b>
    	    		</div>
        			<p class="navbar-text animated fadeInDown">Exam Interface</p>

	        		<p class="navbar-text animated fadeInRight navbar-right"><i class="ion-ios-person"></i><%= session.getAttribute("studentName")%></p>
    	  		</div>
    		</div>
    		<!-- navbar ends -->

	    	<div class="container">
    	  		<div class="row">
        			<!-- question number -->
        			<div class="col-md-1">
          				<h1 class='round-center animated rollIn' id='question_no' >1</h1><!-- it is the question number -->
        			</div>
        			<div class="col-md-6">
          				<!-- qustion box -->
          				<div class="panel panel-default">
	            			<!-- questions -->
    	        			<div class="panel-body" id="question_body"> <!-- it is the question -->
              
	    	        		</div>
            				<div class="panel-footer" id="options_body">
              					<!-- option or answers MCQ -->
              					<div class="row">
                					<div class="col-md-6" id="option1">
                  
                					</div>
                					<div class="col-md-6" id="option2">
                  
                					</div>
                					<div class="col-md-6" id="option3">
                  
                					</div>
                					<div class="col-md-6" id="option4">
                  
                					</div>
              					</div>
              					<!-- option ends -->
            				</div>
          				</div>

	          			<!-- next and previous button -->
    	      			<nav>
        	  				<ul class="pager" id="submit_button">
            					<!-- <li class="previous"><a href="#"><span>&larr;</span> Older</a></li> -->
            					<li class="next" id="submit"><a href="#" onclick='checkAnswer()'>Submit Answer <span>&rarr;</span></a></li>
          					</ul>
        				</nav>
        			</div>

	        		<div class="col-md-offset-3 col-md-2">
    	      			<div class="panel panel-default" id="timer">
        	    			<div class="panel-heading"><i class='ion-ios-timer-outline' ></i> Timer</div>
            				<div class="panel-body">
              					<h4>
                				<p class="animated fadeInDown timer text-center" id='quiz-time-left'></p>
              					</h4>
            				</div>
          				</div>
        			</div>
      			</div>
    		</div>
  		</body>
	<%}%>
</html>
