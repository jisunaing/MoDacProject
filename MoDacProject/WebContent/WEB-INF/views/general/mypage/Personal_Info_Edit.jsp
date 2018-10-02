<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
<style>
form{
	padding-left : 13%
}
.text-center{
	padding-top:50px
}
.panel{
	margin-top:50px;
	margin-left: 8%;
	padding-top:20px;
	padding-bottom:20px
}
#hr{
	margin-left: 40%
}

</style>


<!-- body 시작 -->
<div class="container">
<div class="main_column">
        
<div class="text_light">
<div class="panel panel-default" style="width: 70%;">
	<div class="text-center">
		<h2>
			${USER_ID}님의 정보수정
		</h2>
		<br/>
	</div><br/>
	<hr align="center" style="border: 1px solid lightgray" width="20%" id="hr">
	<div class="row text-center">
		회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <br/><a href="#" style="color: #337ab7">개인정보처리방침</a>
	</div><br/><br/>
	<form class="form-horizontal">
		<div class="form-group">
			<label for="id" class="col-sm-3 control-label">아이디</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="id" disabled>
			</div>
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
				<input type="text" class="form-control" id="email"
					placeholder="abcd@***.com">
			</div>
		</div>
		<div class="form-group">
			<label for="addr" class="col-sm-3 control-label">주소</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="addr"placeholder="주소를 입력하세요">
			</div>
		</div>
		<br/>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-10">
				<button type="submit" class="btn btn-primary">수정하기</button>
			</div>
		</div>
	</form>

</div>
</div>
</div>
<!-- 사이드 바 -->
<div style="padding-top:15%">

<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
</div>

<!-- 사이드바 끝 -->

</div>
<!-- container -->
