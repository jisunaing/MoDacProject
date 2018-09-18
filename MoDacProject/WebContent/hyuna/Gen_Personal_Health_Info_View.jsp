<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Insert title here</title>
<style>
.container {
	min-height: 100%;
}

.footer {
	background-color: #32323C;
	min-height: 10%;
}

.row {
	margin: 0 auto;
	text-align: center;
}

.row .col-md-4 {
	margin-top: 10px;
	outline: 1px pink solid;
	height: 200px;
}
tr th{
	text-align: center;
}
 
</style>
<script>
	$(function(){
		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%');
	});
</script>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
		
		<div class="panel panel-default">
		  <div class="panel-body">
		  	<div class="page-header text-center">
				<h2>
					OOO님의 건강정보 
				</h2>
			</div>
			<br/><br/>
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
			  <table class="table table-bordered ">
			  	<tr >
			  		<th class="col-sm-2" style="text-align: center">
			  			혈액형
			  		</th>
			  		<td class="col-sm-5">
			  			O
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			키
			  		</th>
			  		<td>
			  			180cm   
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			몸무게
			  		</th>
			  		<td>
			  			70kg
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			현재 복용중인 약
			  		</th>
			  		<td>
			  			없음
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			임신여부 및 가능성
			  		</th>
			  		<td>
			  			없음
			  		</td>
			  	</tr>
			  
			  </table>
			  <br/><br/>
			  <div class="row">
			  	<a class="btn btn-warning">수정하기</a>
			  </div>
			  <br/><br/><br/>
			</div>
		   	</div>	
		</div>

	</div>
	<!-- container -->

	<!--footer를 감싸는 div 시작-->
	<div class="footer">
		<jsp:include page="/WEB-INF/template/Footer.jsp" />
	</div>
	<!--footer를 감싸는 div 끝-->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</body>
</html>
<!-- body 끝 -->