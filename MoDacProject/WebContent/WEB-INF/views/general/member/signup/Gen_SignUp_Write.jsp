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
		$('#frm').validate({rules:{
			name:'required',
			id:{required:true,minlength:3},
		    pwd:{required:true,minlength:5},
		    pwd2:{required:true,minlength:5,equalTo:'#pwd'},
		    inter:{required:true,minlength:2},
		    sex:'required',
		    sel:'required',
		    file:'required',
		    self:'required'
		    
		},messages:{
			name:'이름을 입력하세요',
			id:{required:'아이디를 입력하세요',minlength:'아이디는 최소 3자이상 입력..'},
			pwd:{required:'비번을 입력하세요',minlength:'비번는 최소 5자이상 입력..'},
			pwd2:{required:'비번확인을 입력하세요',minlength:'비번는 최소 5자이상 입력..',equalTo:'비번이 일치하지 않아요'},
			inter:{required:'관심사항을 선택하세요',minlength:'최소 2개이상 선택하세요'},
			sex:{required:'성별을 선택하세요'},
			sel:{required:'학력을 선택하세요'},
			file:{required:'파일을 첨부하세요'},
			self:{required:'자기소개를 입력하세요'}
		}});
		
		//2]input type="submit"버튼이 아닐때
		//Step1] $(폼객체 선택자).validate()적용
		//Step2] $(폼객체 선택자).valid()호출 
		//       true반환시 $(폼객체 선택자).submit()호출한다
		$(':button:last').click(function(){
			if($('#frm').valid()){
				$('#frm').submit();
			}
			
		});
		
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
	   		<form class="form-horizontal" id="frm" action="<c:url value=''/>">
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
					<div class="col-sm-2">
					    <select class="form-control">
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>
						
					</div><div>년</div>
					<div class="col-sm-1">
					    <select class="form-control">
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>
					</div>월
					<div class="col-sm-1">
					    <select class="form-control">
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>
					</div>일
					
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
