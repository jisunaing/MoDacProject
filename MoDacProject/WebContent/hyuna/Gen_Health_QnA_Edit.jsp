<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Insert title here</title>
<style>
	.container{
		min-height: 100%;
	}
	.footer{
		background-color: #32323C;
		min-height:10%;
	}
	.row{
		margin:0 auto;
		text-align:center;
	}
	.row .col-md-4{
		margin-top:10px;
		outline:1px pink solid;
		height:200px;
	}
</style>
<script>
	$(function(){
		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%');
	});
	$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp"/>
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
		<h2 style="text-align: center">건강문의하기</h2><br/>
		<p style="text-align: center;">
		회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br/> 
		해당 병원에서 이런 저런 검사는 하는지 특정 병원에게 문의하거나
		의사선생님께 질문을 남기는 곳입니다. 
		<br/> 언제든지 궁금한걸 물어보세요~
		</p>
		<form class="form-horizontal" method="post" action="#">
	
		<div class="row">
			
				<div class="form-group">
					<label for="title" class="col-sm-2  control-label">제목</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="title" name="title"
							placeholder="제목을 입력하세요">
					</div>
				</div>
	
				<div class="form-group">
					<label for="content" class="col-sm-2  control-label">내용</label>
					<div class="col-sm-5">
						<textarea rows="10" class="form-control" id="summernote" name="content"></textarea>
					</div>
				</div>
			</div>
			
			</form>
	
			<div class="row">
				<a href="#" class="submit btn btn-success ">수정하기</a>
				<a href="#" class="btn btn-success">삭제</a>
			</div>
		
		
		
		
		
		
		
	</div><!-- container -->

	<!--footer를 감싸는 div 시작--> 
    	<div class="footer" >
   	 	<jsp:include page="/WEB-INF/template/Footer.jsp"/>
    	</div>
    	<!--footer를 감싸는 div 끝-->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</body>
</html>
	<!-- body 끝 -->