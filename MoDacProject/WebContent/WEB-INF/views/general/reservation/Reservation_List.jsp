<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 일반사용자 예약 목록 페이지입니다.-->
<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap-table-expandable.css'/>">
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
#hr{
	margin-left: 40%;
	border: solid 1px black; 
	width: 20%
}
/*테이블 센터를 위한 css 끝*/
</style>
<!-- body 시작 -->
<!-- 가운데 정렬을 위한 DIV -->
<img src="<c:url value='/Images/reservation.jpg'/>" id="toppic"/>
<div class="container" id="dv">
<!-- 부트스트랩 점보트론 시작 -->
	<div  style="width: 100%;text-align: center">
		<h1 class="display-3" style="padding-top:5px">예약 및 접수 목록</h1>
		<br>
		<hr id="hr">
		<br>
		<br><br>
	</div>
	<!-- 부트스트랩 점보트론 끝-->
	<div class="row" >
				<!-- 가운데 정렬을 위한 DIV -->
				<!-- 가운데 정렬 시작 -->
				
			<!-- 테이블 시작 -->
			<h2 style="text-align: left; padding-left: 100px; color: #2b68a7">접수내역</h2>
			<br><br><br>
			<table class="table table-hover table-expandable">
				<thead>
					<tr>
						<th>접수신청일</th>
						<th>병원명</th>
						<th>접수자</th>
						<th>접수구분</th>
						<th>상태</th>
						<th>취소</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty receiptList}" var="isEmpty">
					<tr>
						<td colspan="4">등록된 접수 내역이 없어요</td>
					</tr>
					</c:if>
					<c:if test="${not isEmpty}">
					<c:forEach var="record" items="${receiptList}" varStatus="loop">
					<tr>
						<td>${record.recdate}</td>
						<td>${record.hosname}</td>
						<td>${record.recname}</td>
						<td>접수</td>
						<td>${record.recaccept}</td>
						<td><c:if test="${record.recaccept=='접수신청'}" var="recacceptResult"><a href="<c:url value='/general/receipt/ReceiptCancel.do?recnum=${record.recnum}'/>"><input type="button" value="취소" /></a></c:if><c:if test="${not recacceptResult}">취소불가</c:if></td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		${record.reccontents}
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
					</c:forEach>		
					</c:if>
					</tbody>
					</table>
					<div class="row">
						<div>${receptionPagingString}</div>
					</div>	
					
					<br><br><br><br><br>
					<h2 style="text-align: left; padding-left: 100px; color: #2b68a7">예약내역</h2>
					<br><br>
					<table class="table table-hover table-expandable">
					<thead>
						<tr>
							<th>예약신청일</th>
							<th>병원명</th>
							<th>예약자</th>
							<th>예약구분</th>
							<th>상태</th>
							<th>취소</th>
						</tr>
					</thead>
					<tbody>					
					<c:if test="${empty reservationList}" var="res">
					<tr>
						<td colspan="4">등록된 예약 내역이 없어요</td>
					</tr>					
					</c:if>
					<c:if test="${not res}">
					<c:forEach var="record" items="${reservationList}" varStatus="loop">
					<tr>
						<td>${record.resdate}</td>
						<td>${record.hosname}</td>
						<td>${record.resname}</td>
						<td>예약</td>
						<td>${record.resaccept}</td>
						<td><c:if test="${record.resaccept=='예약신청'}" var="resacceptResult"><a href="<c:url value='/general/receipt/ReservationCancel.do?resnum=${record.resnum}'/>"><input type="button" value="취소" /></a></c:if><c:if test="${not resacceptResult}">취소불가</c:if></td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		${record.rescontents}
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>					
					</c:forEach>
					</c:if>
					</tbody>
					</table>
					<div class="row">
						<div>${reservationPagingString}</div>
					</div>
			<!-- 테이블 끝 -->
			<!-- 가운데 정렬 끝 -->
			<!-- 가운데 정렬을 위한 DIV -->
		
	</div>
</div>
<!-- 가운데 정렬을 위한 DIV -->

<!-- body 끝 -->

