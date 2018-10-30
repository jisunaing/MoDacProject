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
/*테이블 센터를 위한 css 끝*/
/*테이블 안의 폼들 간격을 위해 넣은 것*/

.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 650px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}
.content-wrapper{
 padding-bottom: 100px;
}
.sp{

	font-size: 1.3em;
	color: black;

}
a input{
 margin-left: 10px;
 margin-top: 15px;
}
.cen{
 text-align: center;
}
.le{
 margin-left: 400px;
}
/*
.colorss{
 background-color: #2b68a7;
}
*/
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
				<div class="form-box">
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">성함</span>
									 <input type="text"	class="form-control cen"  value="${reservationDto.resname}${receptViewDto.recname}" disabled>
								</div>
							</div>
						</div>
	
						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">연락처</span> 
									<input type="text" class="form-control cen" value="${reservationDto.phone}${receptViewDto.phone}" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">이메일</span>
									 <input type="text"	class="form-control cen" value="${reservationDto.email}${receptViewDto.email}" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">날짜</span>
									 <input type="text"	class="form-control cen" value="${reservationDto.resdate}${receptViewDto.recdate}" disabled>
								</div>
							</div>
						</div>
	
						<c:if test="${empty helthinfo}" var="helthinfoOk"></c:if>
						<c:if test="${not helthinfoOk}">
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">신장</span>
									 <input type="text"	class="form-control cen" value="${helthinfo.height}" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">몸무게</span>
									 <input type="text"	class="form-control cen" value="${helthinfo.weight}" disabled>
								</div>
							</div>
						</div>					
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">현재 복용 중인 약</span>
									 <input type="text"	class="form-control cen" value="${helthinfo.bloodtype}" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">혈액형</span>
									 <input type="text"	class="form-control cen" value="${helthinfo.bloodtype}" disabled>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">기타</span>
									 <input type="text"	class="form-control cen" value="${helthinfo.etc}" disabled>
								</div>
							</div>
						</div>
						</c:if>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-12">
									<span class="sp">상담내용</span>
									<textarea rows="10" class="form-control" disabled>${reservationDto.rescontents}${receptViewDto.reccontents}</textarea>
								</div>
							</div>
						</div>
	
	
	
	
						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-5 col-sm-offset-3">
									<a href="<c:url value='/partner/hospital/ListMove.do?moveWhere=${where}'/>"><input type="button" class="btn btn-default" style="margin-left: 70px;" value="목록"/></a>
								</div>
							</div>
						</div>
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
