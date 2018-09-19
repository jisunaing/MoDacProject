<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    
    


	

	

    
    <style>

    #selectable { list-style-type: none; margin: 0; padding: 0;}

    #selectable button { margin: 15px 50px -15px 0px; float: left; width: 200px; height: 260px; border: 0px solid white; 
    
    background-color: white;
    
     }
    

    
     #selectable button:hover {background-color: #BDBDBD; color : white; }
    
    
    
 #btn1{

 background-image: url("<c:url value='/Images/brain.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
 
  #btn2{

 background-image: url("<c:url value='/Images/ear.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
   #btn3{

 background-image: url("<c:url value='/Images/mouth.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
 
   #btn4{

 background-image: url("<c:url value='/Images/neck.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
   #btn5{

 background-image: url("<c:url value='/Images/nose.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
   #btn6{

 background-image: url("<c:url value='/Images/eye.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 150%;

 }
    

    </style>

    

    
    <script>
   
	$(function() {
		
		 $( "#selectable" ).selectable();
		 

		 
		 
	 
	});///최상위
	

    </script>
  </head>
  <body>

	<div class="container col-sm-offset-2">
		<div class="row">
			<div id="selectable">

				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">
							<!-- 머리 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_brain.do'/>">
								<button type="button" class="btn btn-warning"
									style="margin-left: 10px;" id="btn1"></button>
							</a>

						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">

							<!-- 귀 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_ear.do' />">
								<button type="button" class="btn btn-warning"
									style="margin-left: -150px;" id="btn2"></button>
							</a>
						</div>
					</div>
				</div>



				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">
							<!-- 입 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_mouth.do' />">
								<button type="button" class="btn btn-warning"
								style="margin-left: 90px;"	id="btn3"></button>
							</a>


						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">
							<!-- 목 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_neck.do' />">
								<button type="button" class="btn btn-warning"
									style="margin-left: -235px;" id="btn4"></button>
							</a>



						</div>
					</div>
				</div>



				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">
							<!-- 코 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_nose.do' />">
								<button type="button" class="btn btn-warning"
									style="margin-left: 10px;" id="btn5"></button>
							</a>

						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-6">
						<div class="col-sm-8">
							<!-- 눈 -->
							<a href="<c:url value='/general/reservation/selfdiagnosis_eye.do' />">
								<button type="button" class="btn btn-warning"
									style="margin-left: -150px;" id="btn6"></button>
							</a>


						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


</body>
</html>