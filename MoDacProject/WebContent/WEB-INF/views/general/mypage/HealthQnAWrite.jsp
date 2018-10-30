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

</style>

<!-- body 시작 -->

<img src="<c:url value='/Images/plasticheart.jpg'/>" id="toppic"/>
<div id="dv" class="container">

	<br />
	<br />
	<h2 style="text-align: center">건강문의하기</h2>
	<br />
	<p style="text-align: center;">
		회원님과 병원측만 확인 가능한 페이지 입니다.<br /> 회원님의 증상에 대해 의사선생님께 언제든지 궁금한걸
		물어보세요~
	</p>
	<br />
	<hr id="hr">
	<br />
	<br />
	<div class="row">
		<form class="form-horizontal" method="post" action="<c:url value='/general/qna/qnahealth/healthQnaChat.do'/>">

			<div class="form-group">
				<label class="col-sm-offset-1 col-sm-2  control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="title" placeholder="제목을 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectcode" class="col-sm-offset-1 col-sm-2 control-label">관련 진료 과목</label>
				<div class="col-sm-5">
				    <select class="form-control" name="subjectcode">
					  <option>증상과 관련된 진료과목을 선택하세요</option>
					  <c:forEach items="${sublist}" var="sub">
					  	<option value="${sub.subjectcode}">${sub.subname}</option>
					  </c:forEach>
					 <!--  <option value="0">모름</option>
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
					  <option>12</option> -->
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-10">
					<!-- <button type="submit" class="btn btn-primary">실시간 채팅 시작하기</button> -->
					<input type="button" class="btn btn-primary" value="실시간 채팅 시작하기" onclick="window.open('http://localhost:8080/MoDacProject/general/qna/qnahealth/healthQnaChat.do', '모닥 채팅', 'width=400, height=600')">
				</div>
			</div>
		</form>

	</div>
</div>

<!-- container -->
