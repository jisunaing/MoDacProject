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

/*테이블 센터를 위한 css 시작*/
table th {
 text-align: center;
}
/*테이블 센터를 위한 css 끝*/
</style>
	<!-- body 시작 -->
	<!-- 가운데 정렬을 위한 DIV -->
	<div class="container">
		<div class="row">
			<!-- 가운데 정렬을 위한 DIV -->
			<!-- 가운데 정렬 시작 -->
			<!-- 부트스트랩 점보트론 시작 -->
			<div class="jumbotron">
				<h2 class="display-3">예약 및 접수 목록 페이지</h2>
			</div>
			<!-- 부트스트랩 점보트론 끝-->
			<!-- 테이블 시작 -->
			<table class="table table-hover table-expandable" style="min-width: 500px;">
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
					<tr>
						<td>2018-11-15</td>
						<td>우리들병원</td>
						<td>정형외과</td>
						<td>홍길동</td>
						<td>예약</td>
						<td>신청</td>
						<td><input type="button" value="취소" /></td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		내원이유: 머리가 아파요
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
					<tr>
						<td>2018-11-16</td>
						<td>산들희병원</td>
						<td>치과</td>
						<td>홍길동</td>
						<td>접수</td>
						<td>취소</td>
						<td>취소불가</td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		내원이유: 머리가 아파요
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
					<tr>
						<td>2018-11-17</td>
						<td>을지병원</td>
						<td>성형외과</td>
						<td>홍길동</td>
						<td>예약</td>
						<td>완료</td>
						<td>취소불가</td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		내원이유: 머리가 아파요
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
					<tr>
						<td>2018-11-17</td>
						<td>을지병원</td>
						<td>성형외과</td>
						<td>홍길동</td>
						<td>예약</td>
						<td>거절</td>
						<td>취소불가</td>
					</tr>
					<tr>
					  <td colspan="7">
					  	<div>
					  		<br/><br/>
					  		내원이유: 머리가 아파요
					  		<br/><br/><br/>
					  	</div>
					  </td>
					</tr>
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
	<!-- 가운데 정렬을 위한 DIV -->

	<!-- body 끝 -->

