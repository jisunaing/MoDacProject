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
<nav class="navbar navbar-default navbar-fixed-top navbar-fixed-width  navbar-inverse" style="background-color: #2b68a7 !important; border:none">
<div class="container" id="picture" >
   <a class="navbar-brand brand-logo" id="brandspace" href="<c:url value='/main.do'/>" style="color:white;font-size:3em;font-weight: bold;text-align: center;line-height: 70px">   
         <!-- 로고이미지 들어갈자리 -->
      <img style="padding:20px 0 30px 0;width:auto;height: 300%;" src="<c:url value='/Images/logo.png'/>" alt="로고이미지" />  
      </a> 
  <div class="navbar-header">
  <!-- 화면크기가 작을때 보여지는 메뉴버튼 -->
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapseMenu">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>              
    </button>   
   <!-- 로고자리끝남 -->    
  </div><!-- navbar-header --->
<!-- 일반사용자용 top -->
       <div class="collapse navbar-collapse" id="collapseMenu">
          <ul class="nav navbar-nav navbar-right">
            <li id="navbar-page" ><a class="navmenus" href="<c:url value='/main.do'/>">홈</a></li>
            <li id="navbar-page" ><a class="navmenus" href="<c:url value='/healthinfoList.do#healthinfodiv'/>">건강정보</a></li>
            <li class="dropdown">
               <a href="#" class="navmenus ropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">
                  찾기
               </a>
               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
                  <li><a href="<c:url value='/general/pharm/AllPharm.do?address=강남구'/>">약국찾기</a></li>
                  <li class="divider"></li>
                  <li><a href="<c:url value='/general/hospital/SelectSubject.do'/>">병원찾기</a></li>
               </ul>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-category navmenus" id="dropdownCategoryMenu" data-toggle="dropdown">
                  문의
               </a>
               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
                  <li><a href="<c:url value='/general/qna/qnahealth/healthQnaList.do'/>">병원에증상문의</a></li>
               </ul>
            </li>

            <c:if test="${not empty genid}" var="isMember">
               <li id="navbar-tag"><a href="<c:url value='/home/loginout.do'/>" class="navmenus">로그아웃</a></li>
               <li class="dropdown" style="margin-top:8px">
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
                  </li>

            </c:if>   
            <c:if test="${not isMember}">
               <li id="navbar-tag"><a href="<c:url value='/home/loginmain.do'/>" class="navmenus">로그인</a></li>
               <li id="navbar-guestbook"><a href="<c:url value='/general/member/signup/genSignupWrite.do'/>" class="navmenus">회원가입</a></li>
               <li>   
                  &nbsp;
                  <button onclick="location.href='<c:url value='/general/member/signup/partnerJoin.do'/>'" class="btn button-inverse-primary btn-sm" style="background:transparent;border:1px solid white; margin-top: 9px">제휴신청</button>
               </li>
            </c:if>
          </ul>
       </div>
</div><!-- div:container-fluid -->
</nav>
<!-- 네비게이션바 끝 -->  