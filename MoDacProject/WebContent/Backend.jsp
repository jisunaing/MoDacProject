<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Insert title here</title>
<style>
	html,body{
		height:100%
	}
	body{
		margin:0
	}
	.container{
		min-height: 100%;
	}
	.footer{
		background-color: #32323C;
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

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</body>
</html>
	<!-- body 끝 -->