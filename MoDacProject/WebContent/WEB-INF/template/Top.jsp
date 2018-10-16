<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <style>
	body{      
		padding-top:100px;
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
	
/*네브바*/
/* Dropdown Button */
.dropbtn {
    background-color: #2b68a7;
    color: white;
    padding: 14px;
    font-size: 14px;
    border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
   	color:#000000;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content .dropdown-menu1 {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    
}
.dropcolor{
	color:black
}

.dropcolor:hover {
	color:black;
	background-color:white;
	font-style: none;
	text-decoration:none
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd; font-style: none; }

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover a {font-color: #000000;}

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
	
	$(document).ready(function(){
		  $('.dropdown-submenu a.test').on("click", function(e){
		    $(this).next('ul').toggle();
		    $('.dropcolor').css('color','black').css('text-decoration','none').css('font-weight','normal');
		    e.stopPropagation();
		    e.preventDefault();
		  });
		  
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
	<%--     	
		<img src="<c:url value='/Images/logo.png'/>" alt="로고이미지" />  
	--%>
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
			<%-- <li id="navbar-guestbook"><a href="<c:url value='/general/mypage/mypage.do'/>" class="navmenus">마이페이지</a></li> --%>
			<div class="dropdown">
			  <a href="<c:url value='/general/mypage/mypage.do'/>"><button class="dropbtn navmenus">마이페이지</button></a>
			  <div class="dropdown-content">
			  <ul class="dropdown-menu1 dropdown" >
			      <li class="dropdown-submenu">
			        <a class="test dropcolor" tabindex="-1" href="#">내정보 관리 <span class="caret"></span></a>
			        <ul class="dropdown-menu" role="menu">
			          <li><a tabindex="-1" href="<c:url value='/general/mypage/personalinfo.do'/>" class="dropcolor">개인정보</a></li>
			          <li class="divider"></li>
			          <li><a tabindex="-1" href="<c:url value='/general/mypage/healthinfo.do'/>" class="dropcolor">건강상태</a></li>
			        </ul>
			      </li>
			      <li class="divider"></li>
			      <li><a tabindex="-1" href="<c:url value='/general/mypage/familyinfoview.do'/>" class="dropcolor">가족정보 관리</a></li>
			      <li class="divider"></li>
			      <li class="dropdown-submenu">
			        <a class="test dropcolor" tabindex="-1" href="#" >예약/접수 관리 <span class="caret"></span></a>
			        <ul class="dropdown-menu">
			          <li><a tabindex="-1" href="<c:url value='/general/hospital/SelectSubject.do'/>" class="dropcolor">예약/접수하기</a></li>
			          <li class="divider"></li>
			          <li><a tabindex="-1" href="<c:url value='/general/reservation/reservationlist.do'/>" class="dropcolor">진료내역</a></li>
			        </ul>
			      </li>
			      <li class="divider"></li>
			      <li><a tabindex="-1" href="<c:url value='/general/qna/qnahealth/healthQnaList.do'/>" class="dropcolor">증상문의</a></li>
			      <li class="divider"></li>
			      <li><a tabindex="-1" href="<c:url value='/general/qna/qnaList.do'/>" class="dropcolor">사이트문의</a></li>
			    </ul> 
			  </div>
			</div> 
		</c:if>	
		<c:if test="${not isMember }">			
			<li id="navbar-tag"><a href="<c:url value='/home/loginmain.do'/>" class="navmenus">로그인</a></li>
			<li id="navbar-guestbook"><a href="<c:url value='/general/member/signup/genSignupWrite.do'/>" class="navmenus">회원가입</a></li>
		</c:if>
	</ul>
</div>
<!-- 일반사용자용 top -->
</div><!-- div:container-fluid -->
</nav>
<!-- 네비게이션바 끝 -->  