<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko" >
<head>
<meta charset="UTF-8">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />

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
<!--로그인 정보 틀렸을때  -->
<script>
/* 
$(function(){
	String msg = ${loginError};
	if(msg!=null){
		$('.genmemberlogin').html(${loginError});
	}
});
 */
</script>

</head>

<body translate="no" >
	<!-- 로그인 에러 메시지 부분 -->
	<c:if test="${!empty loginError}">
	<script type="text/javascript">
	
	alert('${loginError}');
	
	</script>
	</c:if>
  <!-- form -->
<div class="form-box">
	
	<!-- tab -->
	<ul class="tab-group">
		<li class="tab active"><a href="#signup">일반 회원</a></li>
		<li class="tab"><a href="#login">제휴 회원</a></li>
	</ul>
	<!-- //tab -->
	
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
				<div class="col-sm-offset-4" style="margin-top: 13px;">
				
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
				
				<a href="${url}"><img style="padding-left: 70px; padding-top:10px" height="60" width="350px" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
				
				
							<!-- 네이버아이디로로그인 버튼 노출 영역 -->

<%-- 				<div id="naverIdLogin" class="col-sm-offset-2" style="margin-top:10px"><a href="<c:url value='#'/>"></a></div>
 --%>				<!-- (2) LoginWithNaverId Javscript SDK -->
<!--  				<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
 -->				  <!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
				 <!-- <script>
					 var naverLogin = new naver.LoginWithNaverId(
							{
								clientId: "kZTeZSK7xvqzpnXZcuau",
								callbackUrl: "http://localhost:8080/MoDacProject/home/index.do",
								isPopup: false, /* 팝업을 통한 연동처리 여부 */
								loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
							}
						);
						
					   /* 설정정보를 초기화하고 연동을 준비 */
						naverLogin.init();
						
					
					</script>  -->
				</div>
		</div>
		<!-- Sign Up for Free -->
		
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