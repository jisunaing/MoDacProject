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

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">

<style>
	.container{
		min-height: 100%;
	}
	.footer{
		background-color: #2b68a7;
		min-height:10%;
	}
	.row{
		margin:0 auto;
		text-align:center;
	}
	.row .col-md-4{
		margin-top:10px;
		outline:1px pink solid;
		height:200px;
	}
</style>
<script>
	$(function(){
		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%');
	});
</script>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp"/>
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
		<h2>body 내용 넣을 곳</h2>
	</div><!-- container -->

	<!--footer를 감싸는 div 시작--> 
    	<div class="footer" >
   	 	<jsp:include page="/WEB-INF/template/Footer.jsp"/>
    	</div>
    	<!--footer를 감싸는 div 끝-->

</body>
</body>
</html>
	<!-- body 끝 -->