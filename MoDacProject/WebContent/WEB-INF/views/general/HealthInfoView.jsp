<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->

	<!-- topMenu -->
<!-- 	<div class="topMenu"> -->
<%-- 		<jsp:include page="/WEB-INF/template/Top.jsp"/> --%>
<!-- 	</div> -->
	<!-- topMennu -->
<style>
.jumbotron {
	text-align:center;
}
.p {
	font-size: 3em;
}
.panel-body {
	line-height: 30px;
	font-family: Times New Roman;
}
</style>
<!-- body 시작 -->
<div class="container">
	<div class="jumbotron">
	  <h1> 어린이 시력, 왜 약해 지나 </h1>
	  <p class="p">가성근시 등에 잘못 대처해 근시 유병률 급증 컴퓨터 게임·잘못된 눈 교정도 눈에 해로워</p>
	</div>
	<div class="panel panel-default">
	  <div class="panel-body">
	    ${requestScope.content}		
	  </div>
	</div>	
</div>
<!-- 	<div class="footer"> -->
<%-- 		<jsp:include page="/WEB-INF/template/Footer.jsp"/> --%>
<!-- 	</div> -->
	
