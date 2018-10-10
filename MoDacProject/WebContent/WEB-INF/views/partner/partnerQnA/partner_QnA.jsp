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


.container {
 min-height: 100%;
}
.row {
 margin: 0 auto;
 text-align: center;
 padding-top: 100px
}

.row .col-md-4 {
 margin-top: 10px;
 outline: 1px pink solid;
 height: 200px;
}
/*가운데 배치를 위핸 CSS*/
/*테이블  th태그 센터를 위한 css 시작*/
table th {
 text-align: center;
}
/*테이블 센터를 위한 css 끝*/

#hr1{
	
	border: solid 1px black; 
	width: 25%;
	text-align: center;

}


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

		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->

		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->

		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper" style="background-color: white;">
			<div class="container">
				<div class="row">
				<h2>병원 문의관리</h2><hr id="hr1" ><br/><br/><br/>
				<div>
					<table class="table table-hover" style="min-width: 400px;">
						<tr style="background-color: #79ABFF;">
							<th>글 번호</th><th>제목</th><th>아이디</th><th>등록일자</th>
						</tr>
						<tr>
							<td>1</td>
							
							<td><a href="<c:url value='/partner/partnerQnA/partner_QnA_View.do'/>">환 자 들 의 질 문 _ 제 목 1</a></td>
							<td>회원 1</td>
							<td>2018-10-17 15:30</td>
						</tr>
						<tr>
							<td>2</td>
							<td>환 자 들 의 질 문 _ 제 목 2</td>
							<td>회원 2</td>
							<td>2018-10-17 15:30</td>
						</tr>
						<tr>
							<td>3</td>
							<td>환 자 들 의 질 문 _ 제 목 3</td>
							<td>회원 1</td>
							<td>2018-10-17 15:30</td>
						</tr>
						<tr>
							<td>4</td>
							<td>환 자 들 의 질 문 _ 제 목 4</td>
							<td>회원 3</td>
							<td>2018-10-17 15:30</td>
						</tr>
						<tr>
							<td>5</td>
							<td>환 자 들 의 질 문 _ 제 목 5</td>
							<td>회원 4</td>
							<td>2018-10-17 15:30</td>
						</tr>																								
					</table>
					</div>	
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
							<li class="page-item"><a class="page-link" href="#"	aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							<span class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
					<!-- 임시 페이징 끝 -->
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
