<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html lang="ko" >
<head>
<meta charset="UTF-8">


  
  <link rel="mask-icon" type="" 
  href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  
  <script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>

  <script src="<c:url value='/Jquery/jquery.min.js'/>"></script>


  
  <title>모닥으로 로그인 중!!!</title>
  
  
  
  
      <style>
      *, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {	
	font-family:sans-serif;	
	background-repeat: no-repeat;
	background-size: 100%
	
	
} 
a {
	text-decoration: none;
	color: #1ab188;
	-webkit-transition: .5s ease;
	transition: .5s ease;
}
li {
	list-style:none;
}
a:hover {
	color: #5587ED;
}

.form-box {
	background: #F6F6F6; 
	padding: 40px;
	max-width: 500px;
	margin: 68px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);
	
	
}

.tab-group {
	margin: 0 0 40px 0;
}
.tab-group::after {
	content: "";
	display: table;
	clear: both;
}
.tab-group li a {
	display: block;
	padding: 15px;
	font-size: 20px;
	float: left;
	width: 50%;
	text-align: center;
	/* 전이기 일어나기 전의 초기 스타일 */
	background: rgba(160, 179, 176, .25);
	color: #a0b3b0;
	/* 초기 스타일에 화면 전이를 설정 */
	-webkit-transition: .5s ease;
	transition: .5s ease;
}
.tab-group li a:hover {
	/* 마우스오버를 할 경우에 나타나는 전이에 대한 스타일을 정의 */
	background-color: #5587ED;
	color: #fff;
}
.tab-group .active a {
	background: #79ABFF;
	color: #fff;
}
.tab-content > div:last-child {
	display: none;
}
h1 {
	text-align: center;
	color: black;
	font-weight: 300;
	margin-bottom: 40px;
}
 
small {	
	color: black;
	font-weight: 150;
	margin-bottom: 40px;
}



label {
	pointer-events: none;
	position: absolute;
	left:13px;
	/* 화면 전이가 일어나기 전의 스타일 정의 */
	/* 레이블 위치 스타일 정의 */
	-webkit-transform: translateY(6px);
	transform: translateY(6px);
	color: black;
	font-size: 22px;
	/* 화면 전이 정의 */
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
}
label .req {
	margin: 2px;
	color: red; 
}
label.active {
	/* 화면 전이의 최종 변천 스타일 정의 */
	-webkit-transform: translateY(50px);
	transform: translateY(50px);
	left: 2px;
	font-size: 14px;
	
}
label.active .req {
	opacity: 0;
	
}
label.highlight {
	color: black;
}
input, textarea {
	font-size: 22px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 5px 10px;
	background: none; /* 밑 배경색 보여주기 위해 none 처리 */
	border: 1px solid #a0b3b0;
	color: black;
	border-radius: 0;
	-webkit-transition: border-color .25s ease, box-shadow .25s ease;
	transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
	outline: 0;
	border-color: black;
}
textarea {
	border: 2px solid #a0b3b0;
	resize: vertical;
}
.field-wrap {
	position: relative;
	margin-bottom: 40px;
}
.top-row::after {
	display: table;
	clear: both;
	content: "";
}
.top-row > div {
	float: left;
	width: 48%;
	margin-right: 4%;
}
.top-row > div:last-child {
	margin: 0;
}
.button {
	padding: 15px 0;
	border: 0;
	outline: none;
	border-radius: 0;
	font-size: 2rem;
	font-weight: 600;
	text-transform: uppercase; 
	letter-spacing: .1em;
	background: #79ABFF;
	color: #fff;
	-webkit-appearance: none;
	-webkit-transition: all 0.5s ease;
	transition: all 0.5s ease;
}
.button:hover, .button:focus {
	background: #5587ED;
}
.button-block {

	
	display: block;
	width: 70%;
	
}
.forgot {
	margin: -20px 0 20px;
	text-align: right;
}


#sp1,#sp2{

 font-size: 1.5em;
 color: red;
 font-weight: bold;


}




    </style>

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
	
	<!-- tab -->
	<ul class="tab-group">
		<li class="tab active"><a href="#signup">일반 회원</a></li>
		<li class="tab"><a href="#login">제휴 회원</a></li>
	</ul>
	<!-- //tab -->
	
	<!-- tab-cotent -->
	<div class="tab-content">
		<!-- Sign Up for Free -->
		<div id="signup">
			<h1>환영 합니다!!</h1>
			<small>이곳은  <span id="sp1">일반회원</span> 전용 로그인 입니다</small>
			<form action="<c:url value='/home/loginProcess.do'/>" method="get">
				
				<div class="field-wrap">
					<label for="email2"> 아이디 <span class="req">*</span>
					</label>
					<input name="id" type="text" id="email2" required autocomplete="off">
				</div>
				
				<div class="field-wrap">
					<label for="pwd2"> 비밀번호 <span class="req">*</span>
					</label>
					<input name="pwd"type="password" id="pwd2" required autocomplete="off">
				</div>
				
				<div class="col-sm-offset-3">
					<button type="submit" class="button button-block">로 그 인</button>
				</div>
				
			</form>
				<div class="col-sm-offset-3">
					<a href='<c:url value='/general/member/signup/gen_signup_write.do'/>'><button type="submit" class="button button-block" style="margin-top: 13px;">회원 가입</button></a>					
				</div>
			
		</div>
		<!-- // Sign Up for Free -->
		
		<!-- Welcome Back! -->
		<div id="login">
			<h1>환영 합니다!!</h1>
			
			<small>이곳은 <span id="sp2" >제휴회원</span> 전용 로그인 입니다</small>			
			<form action="<c:url value='/home/loginProcess.do'/>" method="post">
				
				<div class="field-wrap">
					<label for="email2"> 아이디 <span class="req">*</span>
					</label>
					<input name="id_p" type="text" id="email2" required autocomplete="off">
				</div>
				
				<div class="field-wrap">
					<label for="pwd2"> 비밀번호 <span class="req">*</span>
					</label>
					<input name="pwd_p"type="text" id="pwd2" required autocomplete="off">
				</div>
				 
				 <div class="col-sm-offset-3">
					<button type="submit" class="button button-block">로 그 인</button>
				</div>
				
			</form>
				<div class="col-sm-offset-3">
					<a href='<c:url value='general/member/join_P.do'/>'><button type="submit" class="button button-block" style="margin-top: 13px;">제휴 신청</button></a>
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