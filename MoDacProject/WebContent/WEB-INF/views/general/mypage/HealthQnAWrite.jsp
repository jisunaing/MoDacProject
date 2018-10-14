<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#hr {
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}
form {
	padding-left: 12%
}
.panel {
	margin-top: 50px;
	margin-left: 8%;
	padding-top: 20px;
	padding-bottom: 20px
}
</style>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

 <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- body 시작 -->
<script>
	$(document).ready(function() {
	  $('#summernote').summernote();
	});
</script>
<div id="contain" class="container">

	<div class="main_column">

		<div class="text_light">
			<div class="panel panel-default" style="width: 70%;">
				<br />
				<br />
				<h2 style="text-align: center">건강문의하기</h2>
				<br />
				<p style="text-align: center;">
					회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br /> 회원님의 증상에 대해 의사선생님께 언제든지 궁금한걸
					물어보세요~
				</p>
				<br />
				<hr id="hr">
				<br />
				<br />
				<div class="row">
					<form class="form-horizontal" method="post"action="<c:url value='/general/qna/qnahealth/healthQnaList.do'/>">

						<div class="form-group">
							<label class="col-sm-2  control-label">제목</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="title" placeholder="제목을 입력하세요">
							</div>
						</div>
						<div class="form-group">
					<label for="subjectcode" class="col-sm-3 control-label">관련 진료 과목</label>
					<div class="col-sm-6">
					    <select class="form-control" name="subjectcode">
						  <option>증상과 관련된 진료과목을 선택하세요</option>
						  <option value="0">모름</option>
						  <option value="10">가정의학과</option>
						  <option value="20">결핵과</option>
						  <option>치과</option>
						  <option>05</option>
						  <option>06</option>
						  <option>07</option>
						  <option>08</option>
						  <option>09</option>
						  <option>10</option>
						  <option>11</option>
						  <option>12</option>
						</select>
					</div>
				</div>
						<div class="form-group">
							<label for="content" class="col-sm-2  control-label">내용</label>
							<div class="col-sm-7">
								<textarea class="form-control" cols="30" rows="10" name="qcontent"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-5 col-sm-10">
								<button type="submit" class="btn btn-primary">등록</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- 사이드 바 -->
	<div style="padding-top:15%">
		<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
	</div>
	<!-- 사이드바 끝 -->
</div>
<!-- container -->
