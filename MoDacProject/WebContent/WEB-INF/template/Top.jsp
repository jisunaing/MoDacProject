<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	body{      
		padding-top:90px; 
	}
	.active{
		font-weight: bolder;
		font-size:1.3m;
	}	
	.navbar-brand{
		padding-top: 0px;
	}
	.navbar-toggle{ 
		border:none;
	}
	.navbar-right li{
		color: white;
	}
	#navbar-page a{
		color:white;
	}
</style>
<script>  	
	$(function(){	 		
		$(".navbar-right li a").click(function(){		 			
			 $('.navbar-right li').each(function(){
  				$(this).removeClass("active");
  			});    			
			$(this).parent().addClass("active");
		});
		$('.nav').css('padding', '20px');
		$('.navmenus').css('color', 'white');
	});	
</script>
<!-- 네비게이션바 시작 -->
<nav class="navbar navbar-default navbar-fixed-top navbar-fixed-width  navbar-inverse" style="background-color: #2b68a7; border:none">
<div class="container" >
  <div class="navbar-header">
  <!-- 화면크기가 작을때 보여지는 메뉴버튼 -->
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapseMenu">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>		        
    </button>	
	<!-- 로고자리 -->
   	<a class="navbar-brand" href="<c:url value='/home/index.do'/>" style="color:white;font-size:3em;font-weight: bold;text-align: center;line-height: 70px">		      		
    <!-- 로고이미지 들어갈자리 -->
<%-- 		<img style="width:50%;"  src="<c:url value='/Images/logo.png'/>" alt="로고이미지" />   --%>
	모닥
    </a> 
	<!-- 로고자리끝남 -->    
  </div><!-- navbar-header -->

<!-- 일반사용자용 top -->
<div class="collapse navbar-collapse" id="collapseMenu">
	<ul class="nav navbar-nav navbar-right">
		<li id="navbar-page" ><a class="navmenus" href="<c:url value='/home/index.do'/>">홈</a></li>
		<li class="dropdown">
			<a href="#" class="navmenus ropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">찾기</a>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
				<li><a href="<c:url value='/general/pharm/AllPharm.do?address=강남구'/>">약국찾기</a></li>
				<li class="divider"></li>
				<li><a href="<c:url value='/general/hospital/SelectSubject.do'/>">병원찾기</a></li>
			</ul>
		</li>
		<li class="dropdown">
			<a href="#" class="dropdown-category navmenus" id="dropdownCategoryMenu" data-toggle="dropdown">문의</a>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
				<li><a href="<c:url value='/general/qna/qnahealth/healthQnaWrite.do'/>">병원에증상문의</a></li>
			</ul>
		</li>
	
		<c:if test="${not empty genid}" var="isMember"> 
			<li id="navbar-tag"><a href="<c:url value='/home/loginout.do'/>" class="navmenus">로그아웃</a></li>
			<li id="navbar-guestbook"><a href="<c:url value='/general/mypage/mypage.do'/>" class="navmenus">마이페이지</a></li>
		</c:if>	
		<c:if test="${not isMember }">			
			<li id="navbar-tag"><a href="<c:url value='/home/loginmain.do'/>" class="navmenus">로그인</a></li>
			<li id="navbar-guestbook"><a href="<c:url value='/general/member/signup/genSignupWrite.do'/>" class="navmenus">회원가입</a></li>
		</c:if>
		<%-- 
		<c:url value='/general/member/signup/partnerJoin.do'/>
		--%>
		<li style="margin-top: 8px" id="navbar-page" >
			<button onclick="location.href='<c:url value='/general/member/signup/partnerJoin.do'/>'" style="background-color: transparent; border:1px white solid" type="button" class="btn btn-inverse-primary" ><span style="font-size: 10px">제휴신청</span></button>
		</li>
	</ul>
</div>
<!-- 일반사용자용 top -->
</div><!-- div:container-fluid -->
</nav>
<!-- 네비게이션바 끝 -->  