<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#hr{
	margin-left: 40%;
	border: solid 1px black; 
	width: 20%
}
#dv{
	padding-top: 50px
}
#qna{
	margin-bottom: 20px
}
</style>
<title>건강문의</title>

<!-- body 시작 -->
<div class="container" id="dv">
	<h2 style="text-align: center">증상문의하기</h2>
	<br />
	<p style="text-align: center;">
		회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br /> 
		회원님의 증상에 대해 의사선생님께 직접 질문을 남기는 곳입니다. <br /> 
		언제든지 궁금한걸 물어보세요~
	</p>
	<br />
	<hr id="hr">
	<br />
	<br />
	<!-- row -->
	<div class="row" >
		<div class="text-center">
			<div class="container" >
				<a id="qna" href="<c:url value='/general/qna/qnahealth/health_qna_write.do'/>" class="col-md-offset-10  btn btn-success" style="width: 120px;  color: black">문의하기</a>
				
				<table class="table">
					<thead>
						<tr>
							<th style="text-align: center">작성일</th>
							<th style="text-align: center">제목</th>
							<th style="text-align: center">답변여부</th>
						</tr>
					</thead>
					<tbody>
						<tr class="success">
							<td>2018-09-15</td>
							<td><a style=" color: black" href="<c:url value='/general/qna/qnahealth/health_qna_view.do'/>">제목1</a></td>
							<td>답변완료</td>
						</tr>
						<tr class="danger">
							<td>2018-09-15</td>
							<td>제목2</td>
							<td>답변 준비중</td>
						</tr>
						<tr class="success">
							<td>2018-09-15</td>
							<td>제목3</td>
							<td>답변완료</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</div>
<!-- container -->