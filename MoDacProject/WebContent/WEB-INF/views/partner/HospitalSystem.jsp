<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>병원 관리자 페이지</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"   name="viewport">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"   href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"   href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">

</head>
<body class="hold-transition skin-blue sidebar-mini">
   <div class="wrapper">
      <!-- 탑 -->
      <jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
      <!-- 탑-->
      <!-- 카테고리 -->
      <jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
      <!-- 카테고리 -->
      <!-- 바디 -->
      <div class="content-wrapper">
         
      </div>
      <!-- 바디 -->
      <!-- 퓨터-->
      <jsp:include page="/WEB-INF/template/hospital/Footer.jsp"/>
      <!-- 퓨터 -->
   </div>
   <!-- ./wrapper -->
   <!--아래부분 삭제하면 안됨 -->
   <script src="<c:url value="/Jquery/jquery.js"/>"></script>
   <script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
   <script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
   <script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>