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

	//드롭다운 1
	$(document).ready(function(){
		  $('.dropdown-submenu a.test').on("click", function(e){
		    $(this).next('ul').toggle();
		   /*  $('.mypagedd').mouseleave(function() {
		    	$('.mypagedd').show();
		    });
		    $('.multidropitem').hover(function(){
		    	$('.mypagedd').show();
		    },function(){
		    	$('.mypagedd').show();
		    }) */
		    
		    /* e.stopPropagation();
		    e.preventDefault(); */
		  });
		  $('.dropcolor').css('color','black').css('text-decoration','none').css('font-weight','normal');
		    $('.dropcolor').on("click", function() {
		    	$(this).css("background-color","white"); 
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
   	<a class="navbar-brand" href="<c:url value='/home/index.do'/>" style="color:white;font-size:3em;font-weight: bold;text-align: center;line-height: 70px">	
    <!-- 로고이미지 들어갈자리 -->
		<img style="padding-top:15px;width:40%" src="<c:url value='/Images/logo.png'/>" alt="로고이미지" />  
<!-- 		모닥 -->
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
				
				<div class="dropdown" style="margin-top:8px">
				  <button style="background:transparent;border:none" class="btn btn-default dropdown-toggle navmenus" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
				    마이페이지 
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" >
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/mypage.do'/>" style="width:150px;" >마이페이지</a></li>
				    <li role="presentation" class="divider"></li>
				    <li role="presentation" class="dropdown-header" style="color:gray">내정보 관리</li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/personalinfo.do'/>">개인정보</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/healthinfo.do'/>">건강상태</a></li>
				     <li role="presentation" class="divider"></li>
				   <li role="presentation" class="dropdown-header" style="color:gray">예약/접수 관리</li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/hospital/SelectSubject.do'/>">예약/접수하기</a></li>
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/reservation/reservationlist.do'/>">진료내역</a></li>
				     <li role="presentation" class="divider"></li>
				      
				    <li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/familyinfoview.do'/>">가족정보 관리</a></li>
				     <li role="presentation" class="divider"></li>
				    
				  	<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/qna/qnahealth/healthQnaList.do'/>">증상문의</a></li>
				  	 <li role="presentation" class="divider"></li>
				  	<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/qna/qnaList.do'/>">사이트문의</a></li>
				  </ul>
				</div>
				
				<%-- <li id="navbar-guestbook"><a href="<c:url value='/general/mypage/mypage.do'/>" class="navmenus">마이페이지</a></li> --%>
				<!-- 드롭다운 1  -->
				<%-- <div class="dropdown ">
				  <a href="<c:url value='/general/mypage/mypage.do'/>"><button class="dropbtn navmenus">마이페이지</button></a>
				  <div class="dropdown-content ">
				  <ul class="dropdown-menu1 dropdown mypagedd" >
				      <li class="dropdown-submenu">
				        <a class="test dropcolor secondnav1" tabindex="-1" href="#">내정보 관리 <span class="caret"></span></a>
				        <ul class="dropdown-menu multidropitem" role="menu" style="margin-top:-205px; margin-right:165px; border-radius: 0" >
				          <li><a tabindex="-1" href="<c:url value='/general/mypage/personalinfo.do'/>" class="dropcolor" >개인정보</a></li>
				          <li class="divider"></li>
				          <li><a tabindex="-1" href="<c:url value='/general/mypage/healthinfo.do'/>" class="dropcolor">건강상태</a></li>
				        </ul>
				      </li>
				      <li class="divider"></li>
				      <li><a tabindex="-1" href="<c:url value='/general/mypage/familyinfoview.do'/>" class="dropcolor">가족정보 관리</a></li>
				      <li class="divider"></li>
				      <li class="dropdown-submenu" >
				        <a class="test dropcolor secondnav2" tabindex="-1" href="#" >예약/접수 관리 <span class="caret"></span></a>
				        <ul class="dropdown-menu multidropitem" style="margin-top:-120px; margin-right:165px; border-radius: 0">
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
				</div>  --%>
				
				<!-- 드롭다운 2 -->
				<!-- <div class="dropdown"> -->
	            <%-- <a href="<c:url value='/general/mypage/mypage.do'/>" style='margin-top:7px'class="btn dropdown-toggle navmenus" data-toggle="dropdown" data-hover="dropdown" data-animations="zoomIn zoomIn zoomIn zoomIn" aria-expanded="false">마이페이지<span class="caret"></span></a>
	            <ul class="dropdown-menu dropdownhover-bottom" role="menu">
	              
	              <li><a href="<c:url value='/general/mypage/mypage.do'/>">마이페이지</a></li>
	              <li class="divider"></li>
	              <li class="dropdown">
	                <a href="#">내정보 관리 </a>
	                <ul class="dropdown-menu dropdownhover-right">
	                  <li><a href="<c:url value='/general/mypage/personalinfo.do'/>">개인정보</a></li>
	                  <li class="divider"></li>
	                  <li><a href="<c:url value='/general/mypage/healthinfo.do'/>">건강상태</a></li>
	                </ul>
	              </li>
	              <li class="divider"></li>
	              <li><a href="<c:url value='/general/mypage/familyinfoview.do'/>">가족정보 관리</a></li>
	              <li class="divider"></li>
	              <li class="dropdown">
	                <a href="#">예약/접수 관리</a>
	                <ul class="dropdown-menu dropdownhover-right">
	                  <li><a href="<c:url value='/general/hospital/SelectSubject.do'/>">예약/접수하기</a></li>
	                  <li class="divider"></li>
	                  <li><a href="<c:url value='/general/reservation/reservationlist.do'/>">진료내역</a></li>
	                </ul>
	              </li>
	              <li class="divider"></li>
	              <li><a href="<c:url value='/general/qna/qnahealth/healthQnaList.do'/>">증상문의</a></li>
	              <li class="divider"></li>
	              <li><a href="<c:url value='/general/qna/qnaList.do'/>">사이트문의</a></li>
	            </ul> --%>
					
				
			</c:if>	
			<c:if test="${not isMember }">			
				<li id="navbar-tag"><a href="<c:url value='/home/loginmain.do'/>" class="navmenus">로그인</a></li>
				<li id="navbar-guestbook"><a href="<c:url value='/general/member/signup/genSignupWrite.do'/>" class="navmenus">회원가입</a></li>
				<li>
                	<button onclick="location.href='<c:url value='/general/member/signup/partnerJoin.do'/>'" class="btn button-inverse-primary btn-sm" style="background:transparent;border:1px solid white; margin-top: 9px">제휴신청</button>
           		</li> 
			</c:if>
			
	</ul>
</div>
<!-- 일반사용자용 top -->

</div><!-- div:container-fluid -->
</nav>
<!-- 네비게이션바 끝 -->  