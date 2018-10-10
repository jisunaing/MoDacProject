<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<style>
/*가운데 배치를 위핸 CSS*/
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
/*가운데 배치를 위핸 CSS*/
/*테이블 센터를 위한 css 시작*/
table{
 border:1px solid black;
}

table th {
 text-align: center;
 border:1px solid black;
}
table tr {
 border:1px solid black;
}
table tr:nth-child(odd) {
 background-color: #cee3f6;
}
table tr:nth-child(even) {
 background-color: white;
}
table td{
 border:1px solid black;
}
#top1{
 border:1px solid black;
}
#top2{
 border:1px solid black;
}
   

/*테이블 센터를 위한 css 끝*/
/*테이블 안의 폼들 간격을 위해 넣은 것*/
.form-group{
 padding-bottom: 35px;
}
.lastButton{
 padding-top: 200px;
}
/*테이블 안의 폼들 간격을 위해 넣은 것*/
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
						<table class="table table-hover">
							<tr>
								<th class="col-md-2 text-center" id="top1">성함</th>
								<td id="top2">${record.recname}${record.resname}</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">연락처</th>
								<td>${record.phone}</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">이메일</th>
								<td>${record.email}</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">예약시간</th>
								<td>${record.recdate}${record.resdate}</td>
							</tr>
							<tr>
								<th colspan="2" class="text-center">상담내용</th>
							</tr>
							<tr>
								<td colspan="2">${record.reccontens}${record.rescontens}</td>
							</tr>
						</table>
					<!-- 버튼들 -->
						<a href="<c:url value='/partner/hospital/yes.do?moveWhere=${where}&recnum=${recnum}&resnum=${resnum}'/>"><input type="button" class="btn btn-default" value="수락"/></a>
						<a href="<c:url value='/partner/hospital/no.do?moveWhere=${where}&recnum=${recnum}&resnum=${resnum}'/>"><input type="button" class="btn btn-default" value="거절"/></a>
						<a href="<c:url value='/partner/hospital/ListMove.do?moveWhere=${where}'/>"><input type="button" class="btn btn-default" value="목록"/></a>
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
