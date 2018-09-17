<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩  템플릿</title>
	
    <!-- 부트스트랩 -->
    <link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
    
    
    

	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
	
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
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
 
 background-size: 75%;

 }
 
  #btn2{

 background-image: url("<c:url value='/Images/ear.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 75%;

 }
   #btn3{

 background-image: url("<c:url value='/Images/mouth.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 75%;

 }
 
   #btn4{

 background-image: url("<c:url value='/Images/neck.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 75%;

 }
   #btn5{

 background-image: url("<c:url value='/Images/nose.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 75%;

 }
   #btn6{

 background-image: url("<c:url value='/Images/eye.png'/>");
 
 background-repeat: no-repeat;
 
 background-position: center;
 
 background-size: 75%;

 }
    

    </style>

    

    
    <script>
   
	$(function() {
		
		 $( "#selectable" ).selectable();
		 

		 
		 
	 
	});///최상위
	

    </script>
  </head>
  <body>

	<div class="container">
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