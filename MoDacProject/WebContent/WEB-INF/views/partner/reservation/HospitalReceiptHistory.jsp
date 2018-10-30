<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
			<div class="container">
				<div class="row" style="widows: 50%">	
				<h2>지난 접수</h2><br/><br/><br/>
					<table class="type10 table-hover">
					    <thead>
						<tr>
							<th>성명</th><th>접수시간</th><th>연락처</th><th>이메일</th><th>구분</th>
						</tr>
						</thead>
						<tbody>
						<c:if test="${empty requestScope.list }" var="isEmpty">
						<tr>
						<td></td>
						<td></td>
						<td>등록된 게시글이 없습니다</td>
						<td></td>
						<td></td>
						</tr>
						</c:if>
						<c:if test="${not isEmpty}">
						<c:forEach var="list" items="${list}" varStatus="loop">
						<tr>
							<td>
							<a href="<c:url value='/partner/hospital/ReceiptHistoryViewMove.do?recnum=${list.recnum}&genid=${list.genid}&name=${list.recname}'/>">
							${list.recname}
							</a>
							</td>
							<td>${list.recdate}</td>
							<td>${list.phone}</td>
							<td>${list.email}</td>
							<td>${list.recaccept}</td>
							
						</tr>
						</c:forEach>
						</c:if>
						
						</tbody>																							
					</table>																									
					<!-- 아래는 페이징 -->
					<div class="row">
						<div>${pagingString}</div>
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
