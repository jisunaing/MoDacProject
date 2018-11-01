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
<link href="<c:url value='/css/indexpage.css'/>" rel="stylesheet">


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
<style>
	#img_resize{
	padding-top: 15px;
	}
</style>
</head>

<body>
   <!-- topMenu -->
   <div class="topMenu" style="margin-bottom: 0px;padding-bottom: 0px;">
      <jsp:include page="/WEB-INF/template/Top.jsp"/>
   </div><!-- topMennu -->
   <!-- 일반페이지 body 시작 -->
      <!-- 테스트컨트롤러_테스트용스팬 -->
<%--       <span style="color:pink;font-size:3em;">${testvar }</span> --%>
      <div class="row" style="padding-top: 0px;margin-top: 0px;">
         <!-- slider -->
         <div id="my-slider" class="crs-wrap">
          <div class="crs-screen"><!-- 슬라이드 -->
            <div class="crs-screen-roll">
             <!-- .parallax: scroll effect적용 -->
             <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg3.jpg'/>')">
<!--                 <div class="crs-screen-item-content"><h1 style="font-family:Black Han Sans;">MoDacProject&<span style="color:red">♥</span></h1></div> -->
              </div>
              <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg2.jpg'/>')">
                <div class="crs-screen-item-content"><h1>Lorem...</h1></div>
              </div>
                 <div class="parallax crs-screen-item" style="background-image: url('<c:url value='/Images/healthimg1.jpg'/>')">
                <div class="crs-screen-item-content "><h1 style="font-family: ''">Lorem...</h1></div>
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
                <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg3.jpg'/>')"></div>
                <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg2.jpg'/>')"></div>    
                <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg1.jpg'/>')"></div>
                <div class="crs-bar-roll-item" style="background-image: url('<c:url value='/Images/healthimg4.jpg'/>')"></div>
              </div><!-- ROLL -->
            </div><!-- ROLL-WRAP -->
          </div><!--BAR-->
         </div><!--crs-wrap-->
         <!-- slider -->
      </div><!-- row -->
      
      <div id="healthinfodiv"></div>
      <div class="container">
        <!-- themeSearch -->
        <div class="row themeSearch-header">
           <h2 style="color:balck; font-weight: bolder;"><br/>건강정보</h2>
        </div><!-- second_row -->
        <br/>
            <c:forEach var="record" varStatus="status" items="${list}" step="1" begin="0">
              <c:if test="${status.index % 3 eq 0}">
		         <div class="row">
		            <div class="row">
		      </c:if>
		              <div class="col-md-4">
		                <div class="thumbnail">
		                  <a style="padding-top: 20px"href="<c:url value='/general/HealthInfoList.do?categno=${record.categno }'/>" target="_blank">
							${record.categimage }
		                    <div class="caption">                 
		                       <span class="imgcpation">${record.categname }</span>
		                         <p>${record.explanation }</p>
		                    </div>
		                  </a>   
		                </div>
		              </div>
              <c:if test="${status.index % 3 eq 2}">
              	    </div>
              	</div>
		      </c:if>
		    </c:forEach>
      		</div>
      	</div>
      </div>
     <!-- 일반페이지 body 끝 -->
   <!--footer를 감싸는 div 시작--> 
    <div class="footer" >
          <jsp:include page="/WEB-INF/template/Footer.jsp"/>
    </div>
    <!--footer를 감싸는 div 끝-->
   
   
</body>
</html>