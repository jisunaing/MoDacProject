<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript">
$(function(){
	$('td').click(function(){
		console.log('테이블이 클릭됨');
		location.replace("<c:url value='/partner/hospital/ReceiptViewMove.do'/>");
	});
});
</script>
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
table td{
	text-align: center;
}
/*테이블 센터를 위한 css 끝*/
table{
	min-width: 400px;
}
/*새로운 테이블 CSS*/
table.type10 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
}
table.type10 thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background: #2b68a7;
    margin: 20px 10px;
}
table.type10 tbody th {
    width: 150px;
    padding: 10px;
}
table.type10 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}
table.type10 .even {
    background: #ecf0f5;
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
		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">
			<div class="container">
				<div class="row">
				<h2>병원접수관리</h2><br/><br/><br/>
					<table class="type10 table-hover">
					    <thead>
							<tr>
								<th>성명</th><th>예약시간</th><th>연락처</th><th>이메일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>홍길동</td><td>2018-10-17 15:30</td><td>010-7777-7777</td><td>abcd12@naver.com</td>
							</tr>
							<tr>
								<td>홍길동</td><td>2018-10-17 15:30</td><td>010-7777-7777</td><td>abcd12@naver.com</td>
							</tr>
							<tr>
								<td>홍길동</td><td>2018-10-17 15:30</td><td>010-7777-7777</td><td>abcd12@naver.com</td>
							</tr>
							<tr>
								<td>홍길동</td><td>2018-10-17 15:30</td><td>010-7777-7777</td><td>abcd12@naver.com</td>
							</tr>
							<tr>
								<td>홍길동</td><td>2018-10-17 15:30</td><td>010-7777-7777</td><td>abcd12@naver.com</td>
							</tr>
						</tbody>																								
					</table>	
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
