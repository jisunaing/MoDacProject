<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 제이쿼리 유효성검증용 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script>
	$(function(){
		
		//3]validator 디폴트 설정
		//submit전에 수행할 로직 구현시
		//submitHandler속성 추가시에는 서브밑을 해줘야 됨.
		//매개변수로 form객체를 받는다.
		//반드시 validate()함수 위에 위치
		$.validator.setDefaults({submitHandler:function(form){
			//submit하기전 수행할 로직
			alert('전송하기 전 수행할 일');
			//반드시 submit()함수 호출
			form.submit();
		}});
		
		/*
		※$(폼 선택자).validate({rules:{},messages:{}});
		rules규칙:
			-필수 입력 혹은 필수 선택(체크박스/라디오/선택상자)
			하위요소명 : "required"
			혹은
			2개 이상  규칙 적용시
			required:true
			
			-최소 몇자 이상 혹은 몇개 이상 선택
			minlength:최소수		
		*/
		//1]input type="submit"버튼 일때
		$('.frm').validate({rules:{
			genid:{required:true,minlength:3},
		    pwd:{required:true,minlength:5},
		    pwd2:{required:true,minlength:5,equalTo:'#pwd'},
		    genname:'required',
		    year:{required:true,minlength:4},
		    month:'required',
		    day:'required',
		   	gen:'required',
		    email:{required:true,minlength:3},
		    phone:{required:true,minlength:5},
		    addr:'required'
		},messages:{
			genid:{required:'아이디를 입력하세요',minlength:'아이디는 최소 3자이상 입력..'},
		    pwd:{required:'비번을 입력하세요',minlength:'비번는 최소 5자이상 입력..'},
		    pwd2:{required:'비번확인을 입력하세요',minlength:'비번는 최소 5자이상 입력..',equalTo:'비번이 일치하지 않아요'},
		    genname:'이름을 입력하세요',
		    year:{required:'태어난 년도를 입력하세요',minlength:'4자리를 입력하세요'},
		    month:{required:'태어난 월을 입력하세요'},
		    day:{required:'태어난 일을 입력하세요'},
		   	gen:{required:'성별을 선택하세요'},
		    email:{required:'이메일을 입력하세요',contains('@'):'올바른 이메일 주소를 입력하세요'},
		    phone:'전화번호를 입력하세요',
		    addr:'주소를 입력하세요'
		    
		}});
		
		//2]input type="submit"버튼이 아닐때
		//Step1] $(폼객체 선택자).validate()적용
		//Step2] $(폼객체 선택자).valid()호출 
		//       true반환시 $(폼객체 선택자).submit()호출한다
		/* $('#submitbutton').click(function(){
			if($('.frm').valid()){
				$('.frm').submit();
			}
			
		}); */
		
	});
</script>
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
	   		<form class="form-horizontal" id="frm" action="<c:url value='/general/member/signup/genSignupProcess.do'/>" method="post">
				<div class="form-group center-block">
					<label class="col-sm-3 control-label">아이디</label>
					<div class="col-sm-4">
						<input type="text" class="form-control"  name="genid" placeholder="아이디를 입력하세요">
					</div>
					<button type="button" class="btn btn-warning">중복확인</button>
				</div>
				<div class="form-group">
					<label for="pwd" class="col-sm-3 control-label">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="pwd" name="pwd"
							placeholder="비밀번호를 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="pwd2" class="col-sm-3 control-label">비밀번호 확인</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="pwd2" name="pwd2"
							placeholder="비밀번호를 다시 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">이름</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="name" name="genname"
							placeholder="이름을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label for="birthdate" class="col-sm-3 control-label">생년월일</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="year" name="year" placeholder="년(4자)">
					</div>
					<div class="col-sm-2">
					    <select class="form-control" name="month">
						  <option>월</option>
						  <option>01</option>
						  <option>02</option>
						  <option>03</option>
						  <option>04</option>
						  <option>05</option>
						  <option>06</option>
						  <option>07</option>
						  <option>08</option>
						  <option>09</option>
						  <option>10</option>
						  <option>11</option>
						  <option>12</option>
						</select>
					</div>
					<div class="col-sm-2">
					    <select class="form-control" name="day">
						  <option>일</option>
						  <option>01</option>
						  <option>02</option>
						  <option>03</option>
						  <option>04</option>
						  <option>05</option>
						  <option>06</option>
						  <option>07</option>
						  <option>08</option>
						  <option>09</option>
						  <c:forEach begin="10" end="31" var="item" >
						  	<option>${item}</option>
						  </c:forEach>
						</select>
					</div>
					
				</div>
				<div class="form-group">
					<label for="use" class="col-sm-3 control-label">성별</label>
					&nbsp;&nbsp;&nbsp;
					<label class="radio-inline"> 
						<input type="radio" name="gender" id="inlineRadio1" value="F">여자
					</label> 
					<label class="radio-inline"> 
						<input type="radio"	name="gender" id="inlineRadio2" value="M">남자
					</label>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">이메일</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="email" name="email" placeholder="modacS2@modu.com">
					</div>
				</div>
				<div class="form-group">
					<label for="tel" class="col-sm-3 control-label">전화번호</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="tel" name="phone" placeholder="01012345678">
					</div>
				</div>
				<div class="form-group">
					<label for="addr" class="col-sm-3 control-label">주소</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="addr" name="addr" placeholder="주소를 입력하세요">
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
						<button type="submit" class="btn btn-primary" name="submitbutton">회원가입하기</button>
					</div>
				</div>
			</form>
	  </div>
	</div>
</div>
<!-- container -->
