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
<!-- plugins:js -->
<script src="<c:url value='/js/vendor.bundle.base.js'/>"></script>
<script src="<c:url value='/js/vendor.bundle.addons.js'/>"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<style>
	.card{
		background-color: white;
	}
	.card-right{
		margin-right:30px;
	}
	.card-left{
		margin-left:30px;
	}
	.card-title{
		padding: 35px 0 15px 0;
	}
	.card-body{
		padding:0 50px 50px 50px;		
	}
	.row{
		border: solid thin #EAEAEA;
		padding:30px 0 30px 0	;
/* 		padding-bottom: 70px; */
	}
</style>
<script type="text/javascript">
   $(function() {
	   /* ChartJS
	    * -------
	    * Data and config for chartjs
	    */
	   'use strict';
	   var data = {
	     labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일","일요일"],
	     datasets: [{
	       label: '# of Votes',
	       data: [${mon}, ${tue}, ${wed}, ${thu}, ${fri}, ${dat}, ${sun}],
	       backgroundColor: [
	         'rgba(255, 99, 132, 0.2)',
	         'rgba(54, 162, 235, 0.2)',
	         'rgba(255, 206, 86, 0.2)',
	         'rgba(75, 192, 192, 0.2)',
	         'rgba(153, 102, 255, 0.2)',
	         'rgba(255, 159, 64, 0.2)',
	         'rgba(75, 192, 192, 0.2)'
	       ],
	       borderColor: [
	         'rgba(255,99,132,1)',
	         'rgba(54, 162, 235, 1)',
	         'rgba(255, 206, 86, 1)',
	         'rgba(75, 192, 192, 1)',
	         'rgba(153, 102, 255, 1)',
	         'rgba(255, 159, 64, 1)',
	         'rgba(75, 192, 192, 1)',
	       ],
	       borderWidth: 1
	     }]
	   };
	   var lines = {
			     labels: ["00시","01시", "02시", "03시", "04시", "05시", "06시","07시","08시","09시","10시","11시","12시","13시","14시","15시","16시","17시","18시","19시","20시",
			    	 "21시","22시","23시"
			    	 ],
			     datasets: [{
			       label: '# of Votes',
			       data: [${d00},${d01},${d02},${d03},${d04},${d05},${d06},${d07},${d08},${d09},${d10},${d11},${d12},${d13},${d14},${d15},${d16}
			       ,${d17},${d18},${d19},${d20},${d21},${d22},${d23}],
			       backgroundColor: [
			         'rgba(255, 99, 132, 0.2)',
			         'rgba(54, 162, 235, 0.2)',
			         'rgba(255, 206, 86, 0.2)',
			         'rgba(75, 192, 192, 0.2)',
			         'rgba(153, 102, 255, 0.2)',
			         'rgba(255, 159, 64, 0.2)',
			         'rgba(75, 192, 192, 0.2)'
			       ],
			       borderColor: [
			         'rgba(255,99,132,1)',
			         'rgba(54, 162, 235, 1)',
			         'rgba(255, 206, 86, 1)',
			         'rgba(75, 192, 192, 1)',
			         'rgba(153, 102, 255, 1)',
			         'rgba(255, 159, 64, 1)',
			         'rgba(75, 192, 192, 1)',
			       ],
			       borderWidth: 1
			     }]
			   };
	   
	   var multiLineData = {
	     labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
	     datasets: [{
	         label: 'Dataset 1',
	         data: [12, 19, 3, 5, 2, 3],
	         borderColor: [
	           '#587ce4'
	         ],
	         borderWidth: 2,
	         fill: false
	       },
	       {
	         label: 'Dataset 2',
	         data: [5, 23, 7, 12, 42, 23],
	         borderColor: [
	           '#ede190'
	         ],
	         borderWidth: 2,
	         fill: false
	       },
	       {
	         label: 'Dataset 3',
	         data: [15, 10, 21, 32, 12, 33],
	         borderColor: [
	           '#f44252'
	         ],
	         borderWidth: 2,
	         fill: false
	       }
	     ]
	   };
	   var options = {
	     scales: {
	       yAxes: [{
	         ticks: {
	           beginAtZero: true
	         }
	       }]
	     },
	     legend: {
	       display: false
	     },
	     elements: {
	       point: {
	         radius: 0
	       }
	     }

	   };
	   var doughnutPieData1 = {
	     datasets: [{
	       data: [${totals.A},${totals.B},${totals.C},${totals.D}],
	       backgroundColor: [
	         'rgba(255, 99, 132, 0.5)',
	         'rgba(54, 162, 235, 0.5)',
	         'rgba(255, 206, 86, 0.5)',
	         'rgba(75, 192, 192, 0.5)',
	         'rgba(153, 102, 255, 0.5)',
	         'rgba(255, 159, 64, 0.5)',
	         'rgba(255, 159, 64, 0.5)'
	       ],
	       borderColor: [
	         'rgba(255,99,132,1)',
	         'rgba(54, 162, 235, 1)',
	         'rgba(255, 206, 86, 1)',
	         'rgba(75, 192, 192, 1)',
	         'rgba(153, 102, 255, 1)',
	         'rgba(255, 159, 64, 1)',
	         'rgba(255, 159, 64, 1)'
	       ],
	     }],

	     // These labels appear in the legend and in the tooltips when hovering different arcs
	     labels: [
	       '일반 병원 수',
	       '제휴 병원 수',
	       '일반 약국 수',
	       '심야 약국 수'
	     ]
	   };
	   
	   var doughnutPieData = {
			     datasets: [{
			       data: [${reservation.RESERVATION},${reservation.RECEPTION}],
			       backgroundColor: [
			         'rgba(255, 99, 132, 0.5)',
			         'rgba(54, 162, 235, 0.5)',
			         'rgba(255, 206, 86, 0.5)',
			         'rgba(75, 192, 192, 0.5)',
			         'rgba(153, 102, 255, 0.5)',
			         'rgba(255, 159, 64, 0.5)',
			         'rgba(255, 159, 64, 0.5)'
			       ],
			       borderColor: [
			         'rgba(255,99,132,1)',
			         'rgba(54, 162, 235, 1)',
			         'rgba(255, 206, 86, 1)',
			         'rgba(75, 192, 192, 1)',
			         'rgba(153, 102, 255, 1)',
			         'rgba(255, 159, 64, 1)',
			         'rgba(255, 159, 64, 1)'
			       ],
			     }],

			     // These labels appear in the legend and in the tooltips when hovering different arcs
			     labels: [
			       '예약',
			       '접수'
			     ]
			   };	   
	   var doughnutPieOptions = {
	     responsive: true,
	     animation: {
	       animateScale: true,
	       animateRotate: true
	     }
	   };
	   var browserTrafficData = {
	     datasets: [{
	       data: [20, 20, 10, 30, 20],
	       backgroundColor: [
	         'rgba(255,99,132,1)',
	         'rgba(54, 162, 235, 1)',
	         'rgba(255, 206, 86, 1)',
	         'rgba(75, 192, 192, 1)',
	         'rgba(75, 192, 117, 1)',
	         'rgba(255, 159, 64, 1)'
	       ],
	       borderColor: [
	         'rgba(255,99,132,1)',
	         'rgba(54, 162, 235, 1)',
	         'rgba(255, 206, 86, 1)',
	         'rgba(75, 192, 192, 1)',
	         'rgba(75, 192, 117, 1)',
	         'rgba(255, 159, 64, 1)'
	       ],
	     }],

	     // These labels appear in the legend and in the tooltips when hovering different arcs
	     labels: [
	       'Firefox',
	       'Safari',
	       'Explorer',
	       'Chrome',
	       'Opera Mini'
	     ]
	   };
	   var areaOptions = {
	     plugins: {
	       filler: {
	         propagate: true
	       }
	     }
	   }

	   var multiAreaData = {
	     labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
	     datasets: [{
	         label: 'Facebook',
	         data: [8, 11, 13, 15, 12, 13, 16, 15, 13, 19, 11, 14],
	         borderColor: ['rgba(255, 99, 132, 0.5)'],
	         backgroundColor: ['rgba(255, 99, 132, 0.5)'],
	         borderWidth: 1,
	         fill: true
	       },
	       {
	         label: 'Twitter',
	         data: [7, 17, 12, 16, 14, 18, 16, 12, 15, 11, 13, 9],
	         borderColor: ['rgba(54, 162, 235, 0.5)'],
	         backgroundColor: ['rgba(54, 162, 235, 0.5)'],
	         borderWidth: 1,
	         fill: true
	       },
	       {
	         label: 'Linkedin',
	         data: [6, 14, 16, 20, 12, 18, 15, 12, 17, 19, 15, 11],
	         borderColor: ['rgba(255, 206, 86, 0.5)'],
	         backgroundColor: ['rgba(255, 206, 86, 0.5)'],
	         borderWidth: 1,
	         fill: true
	       }
	     ]
	   };

	   var multiAreaOptions = {
	     plugins: {
	       filler: {
	         propagate: true
	       }
	     },
	     elements: {
	       point: {
	         radius: 0
	       }
	     },
	     scales: {
	       xAxes: [{
	         gridLines: {
	           display: false
	         }
	       }],
	       yAxes: [{
	         gridLines: {
	           display: false
	         }
	       }]
	     }
	   }

	   // Get context with jQuery - using jQuery's .get() method.
	   if ($("#barChart").length) {
	     var barChartCanvas = $("#barChart").get(0).getContext("2d");
	     // This will get the first returned node in the jQuery collection.
	     var barChart = new Chart(barChartCanvas, {
	       type: 'bar',
	       data: data,
	       options: options
	     });
	   }

	   if ($("#lineChart").length) {
	     var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
	     var lineChart = new Chart(lineChartCanvas, {
	       type: 'line',
	       data: lines,
	       options: options
	     });
	   }

	   if ($("#linechart-multi").length) {
	     var multiLineCanvas = $("#linechart-multi").get(0).getContext("2d");
	     var lineChart = new Chart(multiLineCanvas, {
	       type: 'line',
	       data: multiLineData,
	       options: options
	     });
	   }

	   if ($("#areachart-multi").length) {
	     var multiAreaCanvas = $("#areachart-multi").get(0).getContext("2d");
	     var multiAreaChart = new Chart(multiAreaCanvas, {
	       type: 'line',
	       data: multiAreaData,
	       options: multiAreaOptions
	     });
	   }

	   if ($("#doughnutChart").length) {
	     var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
	     var doughnutChart = new Chart(doughnutChartCanvas, {
	       type: 'doughnut',
	       data: doughnutPieData,
	       options: doughnutPieOptions
	     });
	   }

	   if ($("#pieChart").length) {
	     var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
	     var pieChart = new Chart(pieChartCanvas, {
	       type: 'pie',
	       data: doughnutPieData1,
	       options: doughnutPieOptions
	     });
	   }

	   if ($("#browserTrafficChart").length) {
	     var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
	     var doughnutChart = new Chart(doughnutChartCanvas, {
	       type: 'doughnut',
	       data: browserTrafficData,
	       options: doughnutPieOptions
	     });
	   }
	 });
   
</script>
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
			<div class="row">
				<!-- 동그라미 차트 -->
				<div class="col-lg-6 grid-margin stretch-card">
					<div class="card card-left">
						<div class="card-body">
							<h2 class="card-title">서울시 병원 약국 현황</h2>
							<canvas id="pieChart" style="height: 195px;width:50%"></canvas>
						</div>
					</div>
				</div>
				<!-- 동그라미 차트 -->
				<div class="col-lg-6 grid-margin stretch-card">
					<div class="card card-right">
						<div class="card-body">
							<h2 class="card-title">요일별</h2>
							<canvas id="barChart" style="height: 195px;width:50%"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 grid-margin stretch-card">
					<div class="card card-left">
						<div class="card-body">
							<h2 class="card-title">시간대별</h2>
							<canvas id="lineChart" style="height: 195px;width:50%"></canvas>
						</div>
					</div>
				</div>
				<div class="col-lg-6 grid-margin stretch-card">
					<div class="card card-right">
						<div class="card-body">
							<h2 class="card-title">예약 접수 비율</h2>
							<canvas id="doughnutChart" style="height: 195px;width:50%"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 바디 -->
      <!-- 퓨터-->
      <jsp:include page="/WEB-INF/template/hospital/Footer.jsp"/>
      <!-- 퓨터 -->
   </div>
   <!-- ./wrapper -->
   <!--아래부분 삭제하면 안됨 -->
	<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
	<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>   
   <script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
   <script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
   <script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>