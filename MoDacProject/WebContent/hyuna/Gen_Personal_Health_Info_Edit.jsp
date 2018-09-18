<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>내 건강정보</title>
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
</style>
<script>
	$(function() {
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
		<div style="text-align: center">
		<br/>
			<h2>내 건강정보</h2>
			<br/>
				<p class="secondary-heading">접수를 더욱 편리하게 하기 위하여 회원님의 건강관련 정보를 등록하세요</p>
			<br/>
			<hr style="border: solid 1px black;width: 30%;align-content: center "><br/><br/>
		</div>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">혈액형</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="id"
						placeholder="혈액형 입력하세요">
				</div>
			</div>
			
			<div class="form-group">
				<label for="pwd" class="col-sm-2 control-label">키</label>
				<div class="col-sm-1">
					<input type="password" class="form-control" id="pwd"
						placeholder="키를 입력하세요"> cm
				</div>
			</div>
			
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">몸무게</label>
				<div class="col-sm-1">
					<input type="password" class="form-control" id="pwd"
						placeholder="몸무게를 입력하세요"> kg
				</div>
			</div>
			<div class="form-group">
				<label for="birthdate" class="col-sm-2 control-label">현재 복용중인 약</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="3" placeholder="현재 복용중인 약을 작성하세요"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="use" class="col-sm-2 control-label">임신 여부 및 가능성</label>
				&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"> 
					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">있다
				</label> 
				<label class="radio-inline"> 
					<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">없다
				</label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">수정하기</button>
				</div>
			</div>
		</form>
		
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