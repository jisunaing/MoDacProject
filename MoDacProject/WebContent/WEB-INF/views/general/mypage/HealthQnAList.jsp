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
<img src="<c:url value='/Images/healthquestion.jpg'/>" id="toppic"/>
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
	<!-- row -->
	<div class="row">
		<div class="text-center">
			<div class="container">
				<a id="qna" href="<c:url value='/general/qna/qnahealth/healthQnaWrite.do'/>"
					class="col-md-offset-10  btn btn-success"
					style="width: 120px; color: black">문의하기</a>
				
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">문의하기</button>
				<!-- 모달창 시작 -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" >
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="exampleModalLabel">문의하기</h4>
				      </div>
				      <form action="<c:url value='/general/qna/qnahealth/healthQnaWrite.do'/>" method="post">
				      <div class="modal-body">
				        
				          <div class="form-group" style="padding-left:17px;text-align: left" >
				            <label class="control-label" >제목:</label>
				            <input type="text" class="form-control" id="title" name="title" style="width:500px;">
				            <input type="hidden" name="qcontent" value="chat">
				          </div>
				          <div class="form-group" style="text-align: left;padding-left:17px;">
				            <label for="message-text" class="control-label">관련 진료과목:</label>
				            <div style="width:500px;">
							    <select class="form-control" name="subjectcode">
							    	<option>증상과 관련된 진료과목을 선택하세요</option>
								   	<c:forEach items="${sublist}" var="subject" varStatus="loop">
								  		<option value="${subject['SUBJECTCODE']}">${subject['SUBNAME']}</option>
								  	</c:forEach>
								</select>
							</div>
						</div>
				      
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				        <button type="submit" class="btn btn-primary">문의하기</button>
				      </div>
				       </form>
				      </div>
				    </div>
				  </div>
				  <!-- 모달창 끝-->
				</div>
				
				
				
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
								<td>
									<a href="#" onclick="window.open('http://localhost:8080/MoDacProject/general/qna/qnahealth/healthQnaChat.do?qno=${record.qno}', '모닥 채팅', 'width=400, height=600,toolbar=no,menubar=no')">${record.title}</a>
								</td>
								<td>답변완료</td>
							</tr>
						</c:forEach>
					</c:if>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>

<!-- container -->