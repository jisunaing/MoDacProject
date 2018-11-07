<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- spring-security 위한 taglib 추가 -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html lang="ko" >
<head>
<meta charset="UTF-8">
<link rel="mask-icon" type="" 
href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />

<script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>

<script src="<c:url value='/Jquery/jquery.min.js'/>"></script>

<link href="<c:url value='/css/loginpage.css'/>" rel="stylesheet">

<title>모닥으로 로그인 중!!!</title>

<script>
  window.console = window.console || function(t) {};
</script>

<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>

</head>

<body translate="no" >
  <!-- form -->
<div class="form-box">
	<sec:authorize access="isAuthenticated()">
		<div>
			<fieldset>
				<legend>인증된 사용자 정보</legend>
				<ul type="A">
					<li>principal : <sec:authentication property="principal"/></li>
					<li>principal.username : <sec:authentication property="principal.username"/></li>
					<li>principal.password : <sec:authentication property="principal.password" /></li>
					<li>principal.enabled : <sec:authentication property="principal.enabled"/></li>
					<li>principal.accountNonExpired : <sec:authentication property="principal.accountNonExpired"/></li>
				</ul>
			</fieldset>
		</div>
		<c:redirect url="<c:url value='main.do'/>"></c:redirect>
	</sec:authorize><sec:authorize access="isAuthenticated()">
		<div>
			<fieldset>
				<legend>인증된 사용자 정보</legend>
				<ul type="A">
					<li>principal : <sec:authentication property="principal"/></li>
					<li>principal.username : <sec:authentication property="principal.username"/></li>
					<li>principal.password : <sec:authentication property="principal.password" /></li>
					<li>principal.enabled : <sec:authentication property="principal.enabled"/></li>
					<li>principal.accountNonExpired : <sec:authentication property="principal.accountNonExpired"/></li>
				</ul>
			</fieldset>
		</div>
		<c:redirect url="<c:url value='main.do'/>"></c:redirect>
	</sec:authorize>
	
	<!-- tab -->
	<ul class="tab-group">
		<li class="tab active"><a href="#signup">일반 회원</a></li>
		<li class="tab"><a href="#login">제휴 회원</a></li>
	</ul>
	<!-- //tab -->
	<sec:authorize access="isAnonymous()">
	<!-- 로그인 에러 메시지 부분 -->
	<c:if test="${!empty loginError}">
	<script type="text/javascript">
	
	alert('${loginError}');
	
	</script>
	</c:if>
	<!-- tab-cotent ---->
	<div class="tab-content">
		<!-- Sign Up for Free -->
		<div id="signup">
			<h1>환영 합니다!!</h1>
			<small id="genmemberlogin">이곳은  <span id="sp1">일반회원</span> 전용 로그인 입니다</small>
			<form action="<c:url value='/home/loginProcess.do'/>" method="post">
			<input type="hidden" name="GENERAL" value="YES"/>
				<div class="field-wrap">
					<label for="email2"> 아이디 <span class="req">*</span>
					</label>
					<input name="genid" type="text" id="email2" required autocomplete="off">
				</div>
				
				<div class="field-wrap">
					<label for="pwd2"> 비밀번호 <span class="req">*</span>
					</label>
					<input name="pwd" type="password" id="pwd2" required autocomplete="off">
				</div>
				
				<div class="col-sm-offset-2">
					<button type="submit" class="button button-block" style="width:280px" >로 그 인</button>
				</div>
				
			</form>
				<div class="col-sm-offset-3" style="margin-top: 13px;">
				
					<a href="<c:url value='/general/member/signup/gen_signup_write.do'/>" style="color: black">
						회원가입
					</a>	
					&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<a href='#' style="color: black">
					<!-- 이메일로 비밀번호 재 설정할 수 있는 링크 보내주기? -->
						비밀번호 찾기
					</a>				
				</div>
				<div >
				
				<a href="${url}"><img style="padding-left: 70px; padding-top:10px;"height="70" width="350px"src="https://static.nid.naver.com/oauth/big_g.PNG?version=js-2.0.0" height="60"></a>
			</div>
		</div>
		<!-- // Sign Up for Free -->
		</sec:authorize>
		
		<!-- Welcome Back! -->
		<div id="login">
			<h1>환영 합니다!!</h1>
			
			<small>이곳은 <span id="sp2" >제휴회원</span> 전용 로그인 입니다</small>         
	         	<form action="<c:url value='/partner/member/loginProcess.do'/>" method="post">
	            
		            <div class="field-wrap">
		               <label for="pid"> 아이디 <span class="req">*</span>
		               </label>
		               <input name="pid" type="text" id="pid" required autocomplete="off">
		            </div>
		            
		            <div class="field-wrap">
		               <label for="hpwd"> 비밀번호 <span class="req">*</span>
		               </label>
		               <input name="hpwd" type="password" id="hpwd" required autocomplete="off">
		            </div>
		             
		             <div class="col-sm-offset-3">
		               <button type="submit" class="button button-block">로 그 인</button>
		            </div>
	            
	         	</form>
	            <div class="col-sm-offset-3">
	               <a href='<c:url value='/general/member/signup/partnerJoin.do'/>'>
	                  <button type="submit" class="button button-block" style="margin-top: 13px;">제휴 신청</button>
	               </a>
	            </div>
	
	         </div>
		<!-- Welcome Back! -->
		
	</div>
	<!-- //tab-cotent -->
	
</div>
<!--  // form -->

    <script >
      var formTarget = $('.form-box').find('input, textarea');
formTarget.on('keyup blur focus', function (e) {

	var $this = $(this),
	label = $this.prev('label');

	if (e.type === 'keyup') {
		if ($this.val() === '') {
			label.removeClass('active highlight');
		} else {
			label.addClass('active highlight');
		}
	} else if (e.type === 'blur') {
		if ($this.val() === '') {
			label.removeClass('active highlight');
		} else {
			label.removeClass('highlight');
		}
	} else if (e.type === 'focus') {

		if ($this.val() === '') {
			label.removeClass('highlight');
		} else
		if ($this.val() !== '') {
			label.addClass('highlight');
		}
	}

});

var tab = $('.tab a');
tab.on('click', function (e) {

	e.preventDefault();

	$(this).parent().addClass('active');
	$(this).parent().siblings().removeClass('active');

	var target = $(this).attr('href'),
	tabContents = $('.tab-content > div');

	tabContents.not(target).hide();

	$(target).fadeIn(600);

});
      //# sourceURL=pen.js
    </script>

</body>
</html>