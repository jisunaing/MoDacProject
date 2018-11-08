<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsGenMember.jsp" %>
<link rel="stylesheet" href="<c:url value='/css/bootstrap-table-expandable.css'/>">
<link rel="stylesheet" href="<c:url value='/css/jumbo.css'/>">
<style>
#hr{
	margin-left: 40%;
	border: solid 1px black; 
	width: 20%
}
#content{
	padding-top: 50px;
	width:61%
}
#qna{
	margin-bottom: 20px
}
</style>
<script src="<c:url value='/js/bootstrap-table-expandable.js'/>"></script>
<!-- body 시작 -->  
<div class="jumbotron jumbotron-billboard" style="height: 500px">
  <div class="img">
	  <img src="<c:url value='/Images/questionmark1.jpg'/>" style="min-height:700px; height: auto;width:100%;margin-top:-200px" id="toppic"/>
  </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
				<h2 style="text-align: center">사이트 문의하기</h2>
   	          <br/>
				<p style="text-align:center">
					언제든지 궁금한걸 물어보세요~
				</p>
				<hr id="hr">
            </div>
        </div>
    </div>
</div>

<div class="container" id="dv">

	<div class="row" >
		<div class="text-center">
			<div class="container" >
				
				<table class="table table-hover table-expandable" style="margin-bottom:100px">
					<thead>
						<tr>
							<th colspan="3" style="text-align: left; font-size: 2em;color:#2b68a7">자주 묻는 질문 Top 5</th>
						</tr>
					</thead>
					<tbody>
						<tr style="text-align: left;font-size: 1.3em" >
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2b68a7;font-size: 1.5em">Q.</span> 광고는 안하시나요?<!-- <span style="padding-left:60px">▽</span> --></td>
						</tr>
						<tr>
							<td>아직은 계획이 없습니다</td>
						</tr>
						<tr style="text-align: left; font-size: 1.3em">
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2b68a7;font-size: 1.5em">Q.</span> 카카오 로그인은 왜 없죠? </td>
						</tr>
						<tr>
							<td>아직은 계획이 없습니다</td>
						</tr>
						<tr style="text-align: left;font-size: 1.3em">
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2b68a7;font-size: 1.5em">Q.</span> 광고는 안하시나요?</td>
						</tr>
						<tr>
							<td>아직은 계획이 없습니다</td>
						</tr>
						<tr style="text-align: left; font-size: 1.3em">
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2b68a7;font-size: 1.5em">Q.</span> 카카오 로그인은 왜 없죠? </td>
						</tr>
						<tr>
							<td>아직은 계획이 없습니다</td>
						</tr>
						<tr style="text-align: left;font-size: 1.3em">
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#2b68a7;font-size: 1.5em">Q.</span> 광고는 안하시나요?</td>
						</tr>
						<tr>
							<td>아직은 계획이 없습니다</td>
						</tr>
						
					</tbody>
					
						
				
					
				</table> 
					
				<a id="qna" href="<c:url value='/general/qna/qnaWrite.do'/>" class="col-md-offset-10  btn btn-primary" style="width: 120px;  color: black">문의하기</a>
				<br><br><br><br>
				<table class="table">
					<thead>
						<tr>
							<th style="text-align: center">작성일</th>
							<th style="text-align: center">제목</th>
							<th style="text-align: center">답변여부</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${empty list}" var="isEmpty">
						<tr>
							<td colspan="3" style="text-align: center">등록된 문의사항이 없어요</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty }">
						<c:forEach var="record" items="${list}" varStatus="loop">
							<tr class="danger">
								<td>${record.postadate}</td>
								<td><a style=" color: black" href="<c:url value='/general/qna/qnaView.do?no=${record.no}'/>">${record.title}</a></td>
								<td>답변대기중</td>
							</tr>
						</c:forEach>
					</c:if>		
					
						
					</tbody>
				</table>
				<br>	<br><br><br><br><br><br><br>
			</div>
		</div>
	</div>
 </div>       

<!-- 끝 -->

