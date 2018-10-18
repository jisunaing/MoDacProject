<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다. -->
<!-- 부트스트랩 -->
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
<!-- Bootstrap core JavaScript -->
<script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<!-- Bootstrap core CSS -->
<link href="<c:url value='/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<!-- font적용)https://fonts.google.com/?subset=korean -->
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">

<!-- 이페이지안에서만 쓰는 파일들 -->
<!-- SLIDE~ -->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet">
<link href="<c:url value='/dist/camroll_slider.css'/>" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
<script src="<c:url value='/dist/camroll_slider.js'/>"></script>
<!-- ~SLIDE -->

<!-- scrolle effect~ -->
<link href="<c:url value='/css/parallax.min.css'/>" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">
<!-- ~scroll effect -->
<!-- ~이페이지안에서만 쓰는 파일들 -->
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">

<title>모두의닥터</title>
<script>
	$(function(){
		
		$("#my-slider").camRollSlider();
		// 슬라이더 & 블러 이펙트
		var _gaq = _gaq || []; 
		_gaq.push(['_setAccount', 'UA-36251023-1']);
		_gaq.push(['_setDomainName', 'jqueryscript.net']);
		_gaq.push(['_trackPageview']);
		
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	});	 		
</script>
<!-- (1) LoginWithNaverId Javscript SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
<script>
	/* var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "kZTeZSK7xvqzpnXZcuau",
			callbackUrl: "http://localhost:8080/MoDacProject/home/index.do",
			isPopup: false,
			callbackHandle: true
			/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
		}
	); */

	/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
	/* naverLogin.init(); */

	/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
				var email = naverLogin.user.getEmail();
				var name = naverLogin.user.getNickName();
				var birthday = naverLogin.user.getBirthday();			
				var uniqId = naverLogin.user.getId();
				var age = naverLogin.user.getAge();
				if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
					naverLogin.reprompt();
					return;
				}

				window.location.replace("http://" + window.location.hostname + 
                           ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/MoDacProject/home/index.do");

			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});
</script> 
<style>
	/* 	
	.container { 
	  max-width: 760px;
	  width: 100%;
	  margin: 150px auto;
	  padding: 0 20px;
	  padding-bottom: 80px;
	} */
	#my-slider {
      width: 100%;
      height: 600px;
      color: white;
    }

    @media (max-width: 640px) {
      #my-slider .crs-bar-roll-current {
        width: 38px;
        height: 38px;
      }

      #my-slider .crs-bar-roll-item {
        width: 30px;
        height: 30px;
      }
    }
	html,body{
		height:100%; 
	}
	body{
		margin:0
	}
	html, * { margin: 0; padding: 0; font-family: 'Jua'/* 'Black Han Sans' */, sans-serif; }
	h1 { margin: 50px auto; text-align: center; }
	h2 { padding: 0; margin: 0;  font-size: 36px; }
	
	.container{
		min-height: 100%;
	} ////////////////
	.footer{
		background-color: #2b68a7;
		min-height:10%;
		margin-top: 10px; 
		min-width: 100%;
		position: absolute;
		bottom: 0;
		left: 0;
		right: 0;
	} /////////////////////
	.row{
		margin:0 auto;
 		text-align:center;
	}
	.imgcpation{
		font-size:1.2em;
		font-weight: bolder;
	}
	a{
		text-decoration: none;
	}
	p{
		font-weight: lighter;
		font-family: 'Black Han Sans';
	}
</style>
</head>

<body>
	
</script>

	
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp"/>
	</div><!-- topMennu -->
	<!-- 일반페이지 body 시작 -->
	<div class="container">
		<!-- 테스트컨트롤러_테스트용스팬 -->
		<span style="color:pink;font-size:3em;">${testvar }</span>
		<div class="row">
			<!-- slider -->
			<div id="my-slider" class="crs-wrap">
			 <div class="crs-screen"><!-- 슬라이드 -->
			   <div class="crs-screen-roll">
				 <!-- .parallax: scroll effect적용 -->
			     <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg1.jpg'/>')">
			       <div class="crs-screen-item-content "><h1 style="font-family: ''">Lorem...</h1></div>
			     </div>
			     <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg2.jpg'/>')">
			       <div class="crs-screen-item-content"><h1>Lorem...</h1></div>
			     </div>
			     <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg3.jpg'/>')">
			       <div class="crs-screen-item-content"><h1>Lorem...</h1></div>
			     </div>
			     <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg4.jpg'/>')">
			       <div class="crs-screen-item-content"><h1>Lorem...</h1></div>
			     </div>
			   </div><!--crs-screen-rol-->
			 </div><!--crs-screen-->
			 <div class="crs-bar"> <!-- 슬라이드선택버튼 -->
			   <div class="crs-bar-roll-current"></div>
			   <div class="crs-bar-roll-wrap">
			     <div class="crs-bar-roll">
			       <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg1.jpg'/>')"></div>
			       <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg2.jpg'/>')"></div> 	
			       <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg3.jpg'/>')"></div>
			       <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg4.jpg'/>')"></div>
			     </div><!-- ROLL -->
			   </div><!-- ROLL-WRAP -->
			 </div><!--BAR-->
			</div><!--crs-wrap-->
			<!-- slider -->
		</div><!-- row -->
		
  		<!-- themeSearch -->
  		<div class="row themeSearch-header">
  			<h2 style="color:balck; font-weight: bolder;"><br/>건강정보</h2>
  		</div><!-- second_row -->
  		<br/>
		<!--div_row:반응형이미지_첫번째row-->
			<div class="row">
				<div class="row">
					<div class="col-md-4">
					    <div class="thumbnail">
					      <a href="<c:url value='/general/HealthInfoList.do?categno=1'/>" target="_blank">
					        <img src="<c:url value='/Images/healthinfo1.jpg'/>" alt="Lights" style="width:100%">
					        <div class="caption">
					        	<span class="imgcpation">소아시력</span>
					        	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
					        </div>
					      </a>
					</div>
				  </div>
				  <div class="col-md-4">
				    <div class="thumbnail">
				      <a href="<c:url value='/general/HealthInfoList.do?categno=2'/>" target="_blank">
				        <img src="<c:url value='/Images/healthinfo2.jpg'/>" alt="Nature" style="width:100%">
				        <div class="caption">
				        	<span class="imgcpation">우울증</span>
				          	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
				        </div>
				      </a>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <div class="thumbnail">
				      <a href="<c:url value='/general/HealthInfoList.do?categno=3'/>" target="_blank">
				        <img src="<c:url value='/Images/healthinfo3.jpg'/>" alt="Fjords" style="width:100%">
				        <div class="caption">
				        	<span class="imgcpation">생리불순</span>
				        	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
				        </div>
				      </a>
				    </div>
				  </div>
				</div>
			</div>
			<!--div_row:반응형이미지_첫번째row끝-->
			<!--div_row:반응형이미지_두번째row-->
			<div class="row">
				<div class="row">
				  <div class="col-md-4">
				    <div class="thumbnail">
				      <a href="<c:url value='/general/HealthInfoList.do?categno=4'/>" target="_blank">
				        <img src="<c:url value='/Images/healthinfo4.jpg'/>" alt="Lights" style="width:100%">
				        <div class="caption">		        	
				        	<span class="imgcpation">주름</span>
				          	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
				        </div>
				      </a>	
				    </div>
				  </div>
				  <div class="col-md-4">
				    <div class="thumbnail">
				      <a href="<c:url value='/general/HealthInfoList.do?categno=5'/>" target="_blank">
				        <img src="<c:url value='/Images/healthinfo5.jpg'/>" alt="Nature" style="width:100%">
				        <div class="caption">		        	
				        	<span class="imgcpation">패혈증</span>
				         	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
				        </div>
				      </a>
				    </div>
				  </div>
				  <div class="col-md-4">
				    <div class="thumbnail">
				      <a href="<c:url value='/general/HealthInfoList.do?categno=6'/>" target="_blank">
				        <img src="<c:url value='/Images/healthinfo6.jpg'/>" alt="Fjords" style="width:100%">
				        <div class="caption">		        	
				        	<span class="imgcpation">뇌졸증</span>
				          	<p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
				        </div>
				      </a>
				    </div>
				  </div>
				</div>
			</div>
			<!--div_row:반응형이미지_두번째row끝-->
  		<!-- themeSearch -->
  	</div><!-- container -->
  	<!-- 일반페이지 body 끝 -->
	<!--footer를 감싸는 div 시작--> 
    <div class="footer" >
   	 	<jsp:include page="/WEB-INF/template/Footer.jsp"/>
    </div>
    <!--footer를 감싸는 div 끝-->
	
	
</body>
</html>