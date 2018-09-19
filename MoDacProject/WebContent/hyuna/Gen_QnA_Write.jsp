<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>사이트 문의하기</title>
<style>
.container {
	min-height: 100%;
}

.footer {
	background-color: #32323C;
	min-height: 10%;
}

.row {
	margin: 0 auto;
	text-align: center;
}

.row .col-md-4 {
	margin-top: 10px;
	outline: 1px pink solid;
	height: 200px;
}
.out{
 width: 100%;
 text-align: center;
 border: 1px solid black;
 }
 
 .in{
 display: inline-block;
 border: 1px solid red;
 width: 40%;
 height: 100px
 
 }
</style>
<script>
	$(function() {
		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%');
	});
	$(document).ready(function() {
		  $('#summernote').summernote();
		});
</script>
<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
		<div class="panel panel-default">
			<div class="row">
				<div class="heading-content">
					<h2 class="primary-heading">사이트 문의</h2>
				</div><br/>
				<p class="secondary-heading">회원님의 의견을 적극 수렴하겠습니다!</p>
			</div>
			<hr style="border: solid 1px black;width: 10%;align-content: center "><br/><br/>
			
			<div class="row">
				<form class="form-horizontal" method="post" action="#">
		
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<input type="text" class="form-control" id="title" name="title"
								placeholder="제목을 입력하세요">
						</div>
					</div>
		
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<textarea rows="10" placeholder="내용을 입력하세요" class="form-control"
								id="summernote" name="content"></textarea>
						</div>
					</div>
				</form>
			</div><br/>
			<div class="row">
				<a type="submit" class="btn btn-danger">등록</a>
				<a type="submit" class="btn btn-danger">취소</a>
			</div>
			<br/><br/>
		</div>

	</div>
	<!-- container -->

	<!--footer를 감싸는 div 시작-->
	<div class="footer">
		<jsp:include page="/WEB-INF/template/Footer.jsp" />
	</div>
	<!--footer를 감싸는 div 끝-->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</body>
</html>
<!-- body 끝 -->