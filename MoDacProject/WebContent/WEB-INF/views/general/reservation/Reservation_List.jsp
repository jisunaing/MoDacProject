<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 일반사용자 예약 목록 페이지입니다.-->
<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->
<link rel="stylesheet"
	href="<c:url value='/css/bootstrap-table-expandable.css'/>">
<script src="<c:url value='/js/bootstrap-table-expandable.js'/>"></script>

<style>
.row {
	margin: 0 auto;
	text-align: center;
}

#dv {
	padding-top: 50px
}

#table1 {
	margin-top: 3%;
	margin-left: 7%;
	width: 90%
}
/*테이블 센터를 위한 css 시작*/
table th {
	text-align: center;
}

table {
	min-width: 500px;
}

/*테이블 센터를 위한 css 끝*/
</style>
<!-- body 시작 -->
<!-- 가운데 정렬을 위한 DIV -->
<div class="container" id="dv">
<!-- 부트스트랩 점보트론 시작 -->
	<div class="jumbotron" style="width: 100%;text-align: center">
		<h2 class="display-3">예약 및 접수 목록 페이지</h2>
	</div>
	<!-- 부트스트랩 점보트론 끝-->
	<div class="main_column">
		<div class="text_light">
			<div class="row">
				<!-- 가운데 정렬을 위한 DIV -->
				<!-- 가운데 정렬 시작 -->
				
			<!-- 테이블 시작 -->
			<table class="table table-hover table-expandable">
				<thead>
					<tr>
						<th>예약신청일</th>
						<th>병원명</th>
						<th>진료과</th>
						<th>예약자</th>
						<th>예약구분</th>
						<th>상태</th>
						<th>취소</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty requestScope.receiptList }" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
					</c:if>
					<c:if test="not isEmpty">
					<c:forEach var="record" items="${receiptList}" varStatus="loop">
					<tr>
						<td>${record.recdate}</td>
						<td>${record.hospital.hosname}</td>
						<td>${record.subject.subname}</td>
						<td>${record.recname}</td>
						<td>접수</td>
						<td>${record.recaccept}</td>
						<td><c:if test="${record.recaccept=='접수신청'}" var="recacceptResult"><a href="<c:url value='/general/receipt/ReceiptCancel.do?resnum=${recnum}}'/>"><input type="button" value="취소" /></a></c:if><c:if test="${not recacceptResult}">취소불가</c:if></td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		${record.contans}
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
					</c:forEach>					
					</c:if>
					<c:forEach var="record" items="${receiptList}" varStatus="loop">
					<tr>
						<td>${record.resdate}</td>
						<td>${record.hospital.hosname}</td>
						<td>${record.subject.subname}</td>
						<td>${record.resname}</td>
						<td>접수</td>
						<td>${record.resaccept}</td>
						<td><c:if test="${record.resaccept=='예약신청'}" var="resacceptResult"><a href="<c:url value='/general/receipt/ReservationCancel.do?resnum=${resnum}}'/>"><input type="button" value="취소" /></a></c:if><c:if test="${not resacceptResult}">취소불가</c:if></td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		${record.contans}
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>					
					</c:forEach>
				</tbody>
			</table>
			<!-- 테이블 끝 -->
			<!-- 임시 페이징 시작 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					<span class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
			<!-- 임시 페이징 끝 -->


			<!-- 가운데 정렬 끝 -->
			<!-- 가운데 정렬을 위한 DIV -->
		</div>
	</div>
	<!-- 사이드 바 -->
	
	<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp"%>
	
	<!-- 사이드바 끝 -->
</div>
<!-- 가운데 정렬을 위한 DIV -->

<!-- body 끝 -->

