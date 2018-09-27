<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<style>
/*가운데 정렬을 위한 CSS*/
.row {
 margin: 0 auto;
 text-align: center;
 padding-top: 100px;
 width: 100%;
}

.row .col-md-4 {
 margin-top: 10px;
 outline: 1px pink solid;
 height: 200px;
}

.in{
 display: inline-block;
 width: 50%;
 height: 100px
 
 }
/*가운데 정렬을 위한 CSS*/
/*테이블 센터를 위한 css 시작*/
table th {
 text-align: center;
}
/*테이블 센터를 위한 css 끝*/
/*테이블 배치를 위한 CSS*/
.form-group{
 padding-bottom: 35px;
}
.lastButton{
 padding-top: 200px;
}
/*테이블 배치를 위한 CSS*/

</style>
<title>병원 관리자 페이지</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"	name="viewport">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">
			<div class="row">
				<div class="in">
					<h2>상세보기페이지</h2><br/><br/><br/>
						<table class="table table-hover table-bordered">
							<tr>
								<th class="col-md-2 text-center">성함</th>
								<td>홍길동</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">연락처</th>
								<td>010-7777-7777</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">이메일</th>
								<td>abcd1234@naver.com</td>
							</tr>
					
							<tr>
								<th class="col-md-2 text-center">예약시간</th>
								<td>2018-10-15 10:54</td>
								
							</tr>
							<tr>
								<th colspan="2" class="text-center">상담내용</th>
							</tr>
							<tr>
								<td colspan="2">가슴이 아프고 통증이 있어요 <br/>감기 기운도 있는 것 같아요</td>
							</tr>
					
						</table>
					
					
					<!-- 버튼들 -->
						<input type="button" class="btn btn-default" value="수락"/>
						<input type="button" class="btn btn-default" value="거절"/>
						<input type="button" class="btn btn-default" value="목록"/>
					<!-- 버튼들 -->
				</div>
			</div>
		</div>
		<!-- 여기까지가 바디로 추정됨 -->
		<!-- 퓨터-->
		<jsp:include page="/WEB-INF/template/hospital/Footer.jsp"/>
		<!-- 퓨터 -->
	</div>
	<!-- ./wrapper -->

	<!--아래부분 삭제하면 안됨 -->
	<script src="<c:url value="/Jquery/jquery.js"/>"></script>
	<script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>
