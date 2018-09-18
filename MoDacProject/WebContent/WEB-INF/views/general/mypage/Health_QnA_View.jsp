<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Insert title here</title>
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
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
		<h2 style="text-align: center">건강문의하기</h2>
		<br />
		<p style="text-align: center;">
			회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br /> 해당 병원에서 이런 저런 검사는 하는지 특정 병원에게 문의하거나
			의사선생님께 질문을 남기는 곳입니다. <br /> 언제든지 궁금한걸 물어보세요~
		</p><br/>
		<hr style="border: solid 1px black;width: 20%;align-content: center "><br/><br/>
		<div class="row">
			<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
			<div>
				<table class="table table-hover table-striped table-bordered">
					<tr>
						<th class="col-md-2 text-center">번호</th>
						<td>${record.no}</td>
					</tr>
					<tr>
						<th class="col-md-2 text-center">제목</th>
						<td>${record.title}</td>
					</tr>
					<tr>
						<th class="col-md-2 text-center">작성자</th>
						<td>${record.name}</td>
					</tr>

					<tr>
						<th class="col-md-2 text-center">등록일</th>
						<td>${record.postdate}</td>
					</tr>
					<tr>
						<th colspan="2" class="text-center">내용</th>
					</tr>
					<tr>
						<td colspan="2">${record.content}</td>
					</tr>

				</table>
			</div>
		</div>
		<!-- row -->
		<div class="row">
			<div class="text-center">

			
				<a href="#" class="btn btn-success">수정</a>
				<a id="del_memo" href="#" class="btn btn-success">삭제</a>
				<a href="#" class="btn btn-success">목록</a>

			</div>
		</div>
		<br/>
		<hr style="border: dotted 1px black;">
		<div class="row">
			<!-- 한줄 코멘트 입력 폼-->
			<h2>병원과 소통하세요!</h2>
			<form class="form-inline" id="frm">
				<input type="hidden" name="no" value="${record.no}" />
				<!-- 수정 및 삭제용 파라미터 -->
				<input type="hidden" name="cno" /> <input placeholder="댓글을 입력하세요"
					id="title" class="form-control" type="text" size="100"
					name="onelinecomment" /> <input class="btn btn-success"
					id="submit" type="button" value="등록" />

			</form>

		</div>
		<div class="row" id="comments"></div>
		<br/><br/><br/><br/>
		
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
</html>
<!-- body 끝 -->