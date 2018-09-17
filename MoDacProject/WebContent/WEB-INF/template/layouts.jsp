<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<!-- 부트스트랩 -->
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- font적용)https://fonts.google.com/?subset=korean -->
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&amp;subset=korean" rel="stylesheet"> 
<!-- 이페이지안에서만 쓰는 파일들 -->
<!-- SLIDE~ -->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet">
<link href="dist/camroll_slider.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
<script src="dist/camroll_slider.js"></script>
<!-- ~SLIDE -->

<!-- scrolle effect~ -->
<link href="css/parallax.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">
<!-- ~scroll effect -->
<!-- ~이페이지안에서만 쓰는 파일들 -->

<title>모두의닥터</title>	
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
	html, * {
		margin: 0; padding: 0; font-family: 'Jua', sans-serif;
	}
	h1 { margin: 50px auto; text-align: center; }
	h2 { padding: 0; margin: 0;  font-size: 36px; }
	
	.container{
		min-height: 100%;
	} ////////////////
	
	.row{
		margin:0 auto;
		text-align:center;
	}
		.row .col-md-4{
		margin-top:10px;
		outline:1px pink solid;
		height:200px;
	}
			/* 	
	.container { 
	  max-width: 760px;
	  width: 100%;
	  margin: 150px auto;
	  padding: 0 20px;
	  padding-bottom: 80px;
	} */
	/* #my-slider {
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
	.imgcpation{
		font-size:1.2em;
		font-weight: bolder;
	}
	a{
		text-decoration: none;
		font-family: 'Jua', sans-serif;
	}
	p{
		font-weight: lighter;
		font-family: 'Black Han Sans';
	} */
/* 	.footer{ */
/* 		margin-top: 10px;  */
/* 		min-width: 100%; */
/* 		position: absolute; */
/* 		bottom: 0; */
/* 		left: 0; */
/* 		right: 0; */
/* 	} */
    </style>
    <script>
	$(function(){
/* 		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%'); */
		$("#my-slider").camRollSlider();
		// 슬라이더
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
  </head>
  <body>
	    <!-- 네비게이션바 시작 -->
	    <tiles:insertAttribute name="Top"/>
	    <!-- 네비게이션바 끝-->	    
	    <div class="container" style="margin-bottom: 10px;">
		    <!-- 내용 시작 -->
		    <tiles:insertAttribute name="Body"/>
		    <!-- 내용 끝 -->
	    </div>
	    <div class="footer">
			<!-- 푸터 시작 -->
	    	<tiles:insertAttribute name="Footer"/>
			<!-- 푸터 끝 -->
	    </div>
  </body>
</html>