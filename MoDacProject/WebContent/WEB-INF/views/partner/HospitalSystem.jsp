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
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
			[ 'Task', 'Hours per Day' ],
			[ '월요일', ${mon} ],
			[ '화요일', ${tue} ],
			[ '수요일', ${wed} ],
			[ '목요일', ${thu} ],
			[ '금요일', ${fri} ],
			[ '토요일', ${dat} ],
			[ '일요일', ${sun} ]
		]);
		var options = {
			title : '요일별 고객 현황',
			is3D : true,
		};
		var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
		chart.draw(data, options);
	}
</script>
<style>
	#piechart_3d{
		width: 100%; height: 865px;
	}
</style>
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
         <div id="piechart_3d"></div>
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