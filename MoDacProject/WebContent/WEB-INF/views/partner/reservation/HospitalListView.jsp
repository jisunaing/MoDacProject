<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>병원 관리자 페이지</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"	name="viewport">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">

<link rel="stylesheet" href="<c:url value="/css/partnerTable.css"/>">

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
									<a href="<c:url value='/partner/hospital/yes.do?recnum=${param.recnum}&resnum=${param.resnum}'/>"><input type="button" class="btn btn-default" value="수락" style="margin-left: 100px;"/></a>
									<a href="<c:url value='/partner/hospital/no.do?moveWhere=${where}&recnum=${param.recnum}&resnum=${param.resnum}'/>"><input type="button" class="btn btn-default" value="거절"/></a>
									<a href="<c:url value='/partner/hospital/ListMove.do?moveWhere=${where}'/>"><input type="button" class="btn btn-default" value="목록"/></a>
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
