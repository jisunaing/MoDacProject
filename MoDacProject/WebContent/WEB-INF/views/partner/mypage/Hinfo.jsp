<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" >
<head>
  <meta charset="UTF-8">

  <title> 병원 정보 </title>
    <!-- 부트스트랩 -->
    <link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
   
html { overflow-y: scroll; }

body {	
	font-family:sans-serif;
	/*
	background-image: url("<c:url value='/Images/1.jpg'/>");
	*/	
	background-repeat: no-repeat;
	background-size: 90%	
		
}


li {list-style:none;} 



.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 900px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}

label {
	pointer-events: none;
	position: absolute;
	left:13px;
	/* 화면 전이가 일어나기 전의 스타일 정의 */
	/* 레이블 위치 스타일 정의 */
	-webkit-transform: translateY(6px);
	transform: translateY(6px);
	color: black;
	font-size: 16px;
	/* 화면 전이 정의 */
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	margin-top: 25px;
	margin-left: 10px; 
}

label .req {color: red; }


label.active {
	/* 화면 전이의 최종 변천 스타일 정의 */
	-webkit-transform: translateY(35px);
	transform: translateY(35px);
	left: 5px;
	font-size: 13px;
	
	}
	
label.active .req { opacity: 0; }

label.highlight { color: black; }

input{
	font-size: 22px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 5px 10px;
	background: none; /* 밑 배경색 보여주기 위해 none 처리 */
	border: 1px solid #a0b3b0;
	color: black;
	border-radius: 0;
	-webkit-transition: border-color .25s ease, box-shadow .25s ease;
	transition: border-color .25s ease, box-shadow .25s ease;
}

input:focus{ outline: 0; border-color: black; }


.field-wrap { position: relative; margin-bottom: 40px; }


.sp{

	font-size: 1.3em;
	font-weight:bold;
	color: black;

}
 


    </style>



</head>

<body translate="no" >

  <!-- form -->
	<div class="container">
		<div class="row">
			<div class="form-box">
			
				<h2> 병원 정보<small> 정보 보기</small> </h2>

					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;" class="col-sm-12" />
					</div>

				<form action="/" method="post">



					<div class="form-group">
						<div class="col-sm-6">
							<div class="col-sm-8">
								<span class="sp">병원 명</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4 col-sm-pull-1">
							<div class="col-sm-12">
								<span class="sp">병원 연락처</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<span class="sp">진료 과목</span> <label for="email2"> </label> <input
									type="text" class="form-control" name="id" id="id" value=""
									disabled>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-8">
								<span class="sp">병원 주소</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>



					<div class="form-group">
						<div class="col-sm-6">
							<div class="col-sm-12">
								<span class="sp">진료 시간</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-6">
							<div class="col-sm-12">
								<span class="sp">점심 시간</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>




					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-5">
								<span class="sp">휴무 안내</span> <input type="text"
									class="form-control" name="humoo" id="humoo" value="" disabled>
							</div>

						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-12">
								<span class="sp">병원 안내글</span>
								<textarea rows="10" class="form-control" id="greeting" name="greeting" disabled></textarea>
							</div>
						</div>
					</div>




					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-5 col-sm-offset-5">
								<button style="margin-top: 20px; margin-left: -14px;" type="submit" class="btn btn-danger">병원정보 수정</button>
							</div>
						</div>
					</div>
					
					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;" class="col-sm-12" />
					</div>
					
				</form>

			</div>

		</div>

	</div>
	

	<!--  내용 끝   -->

</body>
</html>