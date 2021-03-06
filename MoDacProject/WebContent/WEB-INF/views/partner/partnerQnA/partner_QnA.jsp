﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<style>
#hr{
	margin-left: 37%;
	border: solid 1px black; 
	width: 25%;
	margin-top: -6px;
	
}
#dv{
	padding-top: 50px
}
#qna{
	margin-bottom: 20px
}
.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 1300px;
	height: 1030px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini" >
	<div class="wrapper">

		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->

		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		<div class="content-wrapper" style="background-color: white;">
		
		
		
<!-- body 시작 -->
<div class="container" id="dv" >
<div class="row">
			<div>

	<h2 style="text-align: center">병원문의 관리</h2>
	<br />
	<p style="text-align: center;">
		일반회원님들의 문의를 답변해주세요~!
	</p>
	<hr id="hr">
	<br />
	<br />
	<!-- row -->
	<div class="row" >
		<div class="text-center">
			<div class="container" >										
				<table class="table table-hover table-bordered text-center">
						<tr style="background-color: #79ABFF;">
						<th style="text-align: center" class="col-md-1" >글번호</th>
							<th style="text-align: center" >제목</th>
							<th style="text-align: center" class="col-md-2">회원 아이디</th>
							<th style="text-align: center" class="col-md-2">작성일</th>
							<th style="text-align: center" class="col-md-1">답변 여부</th>						
						</tr>
				<c:if test="${empty requestScope.list }" var="isEmpty">
					<tr>
						<td colspan="5">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="record" items="${list}" varStatus="loop">
					
					
						<tr>
							<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
							<td class="text-left">
								 <a	href="<c:url value='/partner/partnerQnA/partner_QnA_View.do?qno=${record.qno}'/>">${record.title}</a>
								 <span class="badge">${record.commentCount}</span>
							</td>							
							<td>${record.genid}</td>
							<td>${record.postdate}</td>
							<c:if test="${record.commentCount != 0}" var="commentCounts">
							<td>답변 완료</td> <!--  답변여부 쪽 -->
							</c:if>
							<c:if test="${!commentCounts}">
							<td>답변 대기중</td> <!--  답변여부 쪽 -->
							</c:if> 
						</tr>
					</c:forEach>
				</c:if>
			</table>
			</div>
		</div>
	</div>
	
	<!-- 아래는 페이징 -->
<div class="row">
	<div>${pagingString}</div>
</div>
<!-- 검색용 UI -->
<div class="row">
	<div class="text-center">

		<form class="form-inline" method="post"	action="<c:url value='/partner/partnerQnA/partner_QnAList.do'/>">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="genid">아이디</option>
					<option value="qcontent">내용</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" name="searchWord" class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">검색</button>

		</form>
	</div>
</div>
	
	
	
	
	
</div>
<!-- container -->
		
</div>
</div>		
		</div>
		<!-- 여기까지가 바디로 추정됨 -->
		<!-- 여기부터 퓨터로 추정됨 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.4.0
			</div>
			<strong>Copyright &copy; 2014-2016 <a
				href="https://adminlte.io">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 여기까지가 퓨터로 추정됨 -->
	</div>
	<!-- ./wrapper -->
	<!--아래부분 삭제하면 안됨 -->
	<script src="<c:url value="/Jquery/jquery.js"/>"></script>
	<script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>
