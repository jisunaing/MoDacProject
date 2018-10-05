<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
form{
	padding-left : 13%
}
.panel{
	margin-top:50px;
	margin-left: 15%;
	padding-top:20px;
	padding-bottom:20px
}
#email{
	padding-left:15px
}
</style>
<!-- datepicker 시작 -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
</script>
<!-- datepicker 끝-->
<!-- body 시작 -->
<div class="container">
	
	<div class="panel panel-default" style="width: 70%;">
	  <div class="panel-body">
	  	<div class="text-center">
			<h2>
				회원가입 <small> 일반회원</small>
			</h2>
			<hr>
		</div>
		<br/>
	   		<form class="form-horizontal">
				<div class="form-group center-block">
					<label for="id" class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="id"
							placeholder="아이디를 입력하세요">
							
					</div>
					<button type="button" class="btn btn-warning">중복확인</button>
				</div>
				<div class="form-group">
					<label for="pwd" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="pwd"
							placeholder="비밀번호를 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="pwd2" class="col-sm-3 control-label">비밀번호 확인</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="pwd2"
							placeholder="비밀번호를 다시 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">이름</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="name"
							placeholder="이름을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="birthdate" class="col-sm-3 control-label">생년월일</label>
					<div class="col-sm-6">
					    <input type="text" id="datepicker">
						<input type="text" class="form-control" id="birthdate">
					</div>
				</div>
				<div class="form-group">
					<label for="use" class="col-sm-3 control-label">성별</label>
					&nbsp;&nbsp;&nbsp;
					<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">여자
					</label> 
					<label class="radio-inline"> 
						<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">남자
					</label>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">이메일</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="email" placeholder="modacS2@modu.com">
					</div>
				</div>
				<div class="form-group">
					<label for="tel" class="col-sm-3 control-label">전화번호</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="tel" placeholder="01012345678">
					</div>
				</div>
				<div class="form-group">
					<label for="addr" class="col-sm-3 control-label">주소</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="addr"placeholder="주소를 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="use" class="col-sm-3 control-label">이용약관</label>
					&nbsp;&nbsp;&nbsp;
					<label class="radio-inline"> 
						<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">동의
					</label> 
					<label class="radio-inline"> 
						<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">비동의
					</label>
				</div><br/>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						<button type="submit" class="btn btn-primary">회원가입하기</button>
					</div>
				</div>
			</form>
	  </div>
	</div>
</div>
<!-- container -->
