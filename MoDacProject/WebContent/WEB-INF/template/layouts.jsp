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

<!-- Bootstrap core CSS -->
<!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<!-- font적용)https://fonts.google.com/?subset=korean -->
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&amp;subset=korean" rel="stylesheet"> 

<title>모두의닥터</title>	
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
	@font-face {
		font-family: 'GoodFont';
		src: url('font/cc1-돋움(TTF)-Medium.ttf');
	}
	html *{
		font-family: 'GootFont' , monospace !important;
}
	html, * {
		margin: 0; padding: 0; 
/* 		font-family: 'Jua', sans-serif; */
		font-family: GootFont !important, monospace;
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
	#toppic{
	width:100%;
	height:510px;
	overflow: hidden;
	}
	
	.table-responsive {
		padding-left: 15%;
		padding-right: 15%
	}	
</style> 	
<script>
$(function(){
	$("div").removeClass("container");
	$("#picture").addClass("container");
	$("#dv").addClass("container");
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
	    <div class="footer" style="margin-top:10px;">
			<!-- 푸터 시작 -->
	    	<tiles:insertAttribute name="Footer"/>
			<!-- 푸터 끝 -->
	    </div>
  </body>
</html>