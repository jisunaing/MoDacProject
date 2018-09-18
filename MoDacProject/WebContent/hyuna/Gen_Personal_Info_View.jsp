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
					OOO님의 회원정보 <small> 개인정보</small>
				</h2>
			</div>
			<br/><br/>
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
			  <table class="table table-bordered ">
			  	<tr >
			  		<th class="col-sm-2" style="text-align: center">
			  			이름
			  		</th>
			  		<td class="col-sm-5">
			  			홍길동
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			비밀번호
			  		</th>
			  		<td>
			  			****   
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			생년월일
			  		</th>
			  		<td>
			  			1998-08-19
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			생별
			  		</th>
			  		<td>
			  			여자
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			이메일
			  		</th>
			  		<td>
			  			email@gmail.com
			  		</td>
			  	</tr>
			  	<tr>
			  		<th>
			  			주소
			  		</th>
			  		<td>
			  			가산동
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