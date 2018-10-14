<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#hr {
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}

#dv {
	padding-top: 50px
}
#qna {
	margin-bottom: 20px
}
</style>
<title>건강문의</title>

<!-- body 시작 -->
<div class="container" id="dv">
	<h2 style="text-align: center">증상문의하기</h2>
	<br />
	<p style="text-align: center;">
		회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br /> 회원님의 증상에 대해 의사선생님께 직접 질문을 남기는 곳입니다.
		<br /> 언제든지 궁금한걸 물어보세요~
	</p>
	<br />
	<hr id="hr">
	<br /> <br />
	<div class="main_column">

		<div class="text_light">
			<!-- row -->
			<div class="row">
				<div class="text-center">
					<div class="container">
						<a id="qna" href="<c:url value='/general/qna/qnahealth/healthQnaWrite.do'/>"
							class="col-md-offset-10  btn btn-success"
							style="width: 120px; color: black">문의하기</a>
						<table class="table">
							<thead>
								<tr>
									<th class="col-md-2" style="text-align: center">번호</th>
									<th class="col-md-2" style="text-align: center">작성일</th>
									<th style="text-align: center">제목</th>
									<th class="col-md-2" style="text-align: center">답변여부</th>
								</tr>
							</thead>
							<tbody>
							<c:if test="${empty requestScope.list }" var="isEmpty">
								<tr>
									<td colspan="4">등록된 게시물이 없어요</td>
								</tr>
							</c:if>
							<c:if test="${not isEmpty }">
								<c:forEach var="record" items="${list}" varStatus="loop">
									<tr class="success">
										<td>${record.qno}</td>
										<td>${record.postdate}</td>
										<td><a style="color: black" href="<c:url value='/general/qna/qnahealth/healthQnaView.do?qno=${record.qno}'/>">${record.title}</a></td>
										<td>답변완료</td>
									</tr>
								</c:forEach>
							</c:if>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 사이드 바 -->
	<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
	<!-- 사이드바 끝 -->
	
</div>
<!-- container -->