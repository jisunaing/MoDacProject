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

a {

    color: #337ab7;
    text-decoration: none;

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
		<div class="page-header text-center">
			<h2>
				회원정보 수정 <small> OOO님의 정보입니다</small>
			</h2>
			
		</div>
		<br/><br/><br/>
		<div class="row text-center">
			회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <a href="#" style="color: #337ab7">개인정보처리방침</a>
			
		</div>
		<br/><br/><br/>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">아이디</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="id"
						placeholder="아이디를 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-warning">중복확인</button>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="pwd"
						placeholder="비밀번호를 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="pwd2" class="col-sm-2 control-label">비밀번호 확인</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="pwd2"
						placeholder="비밀번호를 다시 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="name"
						placeholder="이름을 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="birthdate" class="col-sm-2 control-label">생년월일</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="birthdate">
				</div>
			</div>
			<div class="form-group">
				<label for="use" class="col-sm-2 control-label">성별</label>
				&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"> 
					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">여자
				</label> 
				<label class="radio-inline"> 
					<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">남자
				</label>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="email"
						placeholder="abcd@***.com">
				</div>
			</div>
			<div class="form-group">
				<label for="addr" class="col-sm-2 control-label">주소</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="addr"placeholder="주소를 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="use" class="col-sm-2 control-label">이용약관</label>
				&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"> 
					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">동의
				</label> 
				<label class="radio-inline"> 
					<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">비동의
				</label>
			</div><br/>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">회원가입하기</button>
				</div>
			</div>
		</form>


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