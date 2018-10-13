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
<style>
tr th{
	text-align: center
}
#hr1{
	margin-left: 40%;
	border: solid 1px black; 
	width: 20%
}
#hr2{
	margin-left: 10%;
	border: solid 1px black; 
	width: 80%;
	margin-top: 30px;
	margin-bottom:30px
}

#frm{
	margin-left: 25%
}

#contain{

margin: 150px auto;



}



</style>

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
		
		<div class="content-wrapper">
		<!-- body 시작 -->
<div class="container">

<div id="contain" class="panel panel-default" style="width: 70%;">
	<br/><br/>
	<h2 style="text-align: center">관리자에게 문의하기</h2><br/>
	<p style="text-align: center;">
	관리자에게 문의가능한 페이지 입니다 언제든지 문의하세요~!
	</p><br/>
	<hr id="hr"><br/><br/>
	<div class="row">
		<form class="form-horizontal" method="post" action="<c:url value='/partner/partnerQnA/admin_QnA_WriteOK.do'/>">

			<div class="form-group">
				<label for="title" class="col-sm-2  control-label">제목</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력하세요">
				</div>
			</div>

			<div class="form-group">
				<label for="content" class="col-sm-2  control-label">내용</label>
				<div class="col-sm-7">
					<textarea rows="10" class="form-control" id="content" name="content"></textarea>
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
	
</div><!-- container -->

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			
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
