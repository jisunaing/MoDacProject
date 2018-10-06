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



.form-box {
	background-color:white;
	padding: 20px;
	width: 900px;
	height: 930px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}


tr th{
	text-align: center
}
#hr1{
	
	border: solid 1px black; 
	width: 45%;
	margin-top: -4px;
	text-align: center;

}
#hr2{
	margin-left: 10%;
	border: dashed 1px black; 
	width: 80%;
	margin-top: 30px;
	margin-bottom:30px
}
#contain{
	margin-top:50px
}
#frm{
	margin-left: 25%
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
<div id="contain"class="container" >
<div class="row">
			<div class="form-box">
	<h2 style="text-align: center">관리자에게 한 문의 확인 하기</h2>
	<br />
	<p style="text-align: center;">
		제휴회원님과 관리자만 이용 가능한 페이지 입니다.<br /> 
		
	</p>
	<hr id="hr1" ><br/><br/>
	<div class="row">
		<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
		<div>
			<table class="table table-striped table-bordered">
				<tr style="background-color: #79ABFF;">
					<th class="col-md-2 text-center">번호</th>
					<td>1</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">제목</th>
					<td>제목</td>
				</tr>
				<tr style="background-color: #79ABFF;">
					<th class="col-md-2 text-center">작성자</th>
					<td>홍길동</td>
				</tr>

				<tr>
					<th class="col-md-2 text-center">등록일</th>
					<td>2018-08-08</td>
				</tr>
				<tr style="background-color: #79ABFF;">
					<th colspan="2" class="text-center">내용</th>
				</tr>
				<tr>
					<td colspan="2"  class="text-center">내용입니다</td>
				</tr>

			</table>
		</div>
	</div>
	<!-- row -->
	<div class="row">
		<div class="text-center">

		</div>
	</div>
	<br/>
	<hr id="hr2">
	<div class="row">
		<h3 class="text-center">관리자와 소통하세요!</h3>
		<br/>
		<form class="form-inline" id="frm">
			<!-- 수정 및 삭제용 파라미터 -->
			<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="onelinecomment" /> 
			<input class="btn btn-success" 	id="submit" type="button" value="등록" />

		</form>

	</div><br><br>
	<div class="row" id="comments">
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
			  <table class="table table-bordered" >
			    <tr>
			     <th>
			   		 작성자
			    	</th>
			    	 <th>
			   		 답변
			    	</th>
			    	
			    </tr>
			   
			    <tr>
			    <td>홍길똥</td>
			    	<td>
			    		내용
			    		내용
			    		내용내용
			    		내용
			    	
			    	
			    	</td>
			    </tr>
			  </table>
			</div>
	</div>
	
	<br/><br/><br/><br/>
	
	</div>
	</div>
	</div>
	
	
	<!-- container -->
		
		
		
		
		
		
		
		
			
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
