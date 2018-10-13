<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='/css/bootstrap-table-expandable.css'/>">
<script src="<c:url value='/js/bootstrap-table-expandable.js'/>"></script>
<style>
tr th {
	text-align: center
}

#hr1 {
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}

#hr2 {
	margin-left: 10%;
	border: solid 1px black;
	width: 80%;
	margin-top: 30px;
	margin-bottom: 30px
}

#contain {
	margin-top: 50px
}

#frm {
	margin-left: 18%
}
</style>

<!-- body 시작 -->
<div id="contain" class="container">
	<h2 style="text-align: center">증상문의하기</h2>
	<br />
	<p style="text-align: center;">
		회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br />

	</p>
	<br />
	<hr id="hr1">
	<br />
	<br />
	<div class="main_column">

		<div class="text_light">
			<div class="row">
				<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
				<div>
					<table class="table table-striped table-bordered" style="width: 80%; margin-left:10%">
						<tr>
							<th class="col-md-2 text-center">번호</th>
							<td>${healthquestion.qno}</td>
						</tr>
						<tr>
							<th class="col-md-2 text-center">제목</th>
							<td>${healthquestion.title}</td>
						</tr>
						<tr>
							<th class="col-md-2 text-center">증상 관련 진료 과목</th>
							<td>${healthquestion.subname}</td>
						</tr>
						<tr>
							<th class="col-md-2 text-center">작성자</th>
							<td>${healthquestion.genname}</td>
						</tr>

						<tr>
							<th class="col-md-2 text-center">등록일</th>
							<td>${healthquestion.postdate}</td>
						</tr>
						<tr>
							<th colspan="2" class="text-center">내용</th>
						</tr>
						<tr>
							<td colspan="2" class="text-center">${healthquestion.qcontent}</td>
						</tr>

					</table>
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="text-center">
					<a href="#" class="btn btn-success">수정</a> <a href="#"
						class="btn btn-success">삭제</a> <a href="#" class="btn btn-success">목록</a>

				</div>
			</div>
			<br />
			<hr id="hr2">
			<div class="row">
				<h3 class="text-center">의사선생님과 소통하세요!</h3>
				<br />
				<div class="row">
					<form class="form-horizontal" method="post" action="#">
			
						<div class="form-group">
							<label for="title" class="col-sm-2  control-label">제목</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
							</div>
						</div>
			
						<div class="form-group">
							<label for="content" class="col-sm-2  control-label">내용</label>
							<div class="col-sm-7">
								<textarea rows="10" class="form-control" id="summernote" name="content"></textarea>
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
			<br>
			<br>
			<!-- 테이블 시작 -->
			<div class="col-sm-7">
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
			</div>
			<!-- 테이블 끝 -->

			<br/>
			<br/>
			<br/>
			<br/>
		</div>
	</div>
	<!-- 사이드 바 -->
		<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
	<!-- 사이드바 끝 -->
</div>

<!-- container -->
