<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<style>
/*가운데 배치를 위핸 CSS*/
.row {
 margin: 0 auto;
 text-align: center;
 padding-top: 100px;
 width: 100%;
}

.row .col-md-4 {
 margin-top: 10px;
 outline: 1px pink solid;
 height: 200px;
}
.in{
 display: inline-block;
 width: 50%;
 height: 100px
 
 }
/*가운데 배치를 위핸 CSS*/
/*테이블 센터를 위한 css 시작*/
table{
 background-color: aqua;
}

table th {
 text-align: center;
}
/*테이블 센터를 위한 css 끝*/
/*테이블 안의 폼들 간격을 위해 넣은 것*/
.form-group{
 padding-bottom: 35px;
}
.lastButton{
 padding-top: 200px;
}
/*테이블 안의 폼들 간격을 위해 넣은 것*/

</style>
<title>병원 관리자 페이지</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"	name="viewport">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 여기부터가 탑 부분임 -->
		<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<!-- logo for regular state and mobile devices --> <span
				class="logo-lg"><b>병원관리자</b>페이지</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<li class="dropdown user user-menu">
						<a href="#"	class="dropdown-toggle" data-toggle="dropdown">
							<img src="Images/space.jpg" class="user-image" alt="User Image">
							<span class="hidden-xs">병원이름</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
								<img src="Images/space.jpg" class="user-image" alt="User Image">
									<p>병원이름 넣을 곳</p></li>
								<!-- Menu Body -->
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">로그아웃</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- 여기까지가 탑 부분임 -->
		<aside class="main-sidebar">
			<section class="sidebar">
				<div class="user-panel">
					<div class="pull-left image">
						<img src="Images/space.jpg" class="user-image" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>병원이름</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">카테고리</li>
					<li class="active treeview"><a href="#">
					<i	class="fa fa-dashboard"></i>
					<span>예약/문의 관리</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="<c:url value="/partner/hospital/ReservationMove.do"/>"><i class="fa fa-circle-o"></i>예약관리</a></li>
							<li><a href="<c:url value="/partner/hospital/ReservationListMove.do"/>"><i class="fa fa-circle-o"></i>예약지난내역</a></li>
							<li><a href="<c:url value="/partner/hospital/ReceiptMove.do"/>"><i class="fa fa-circle-o"></i>접수관리</a></li>
							<li><a href="<c:url value="/partner/hospital/ReceiptListMove.do"/>"><i class="fa fa-circle-o"></i>접수지난내역</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="#">
					<i class="fa fa-pie-chart"></i>
					<span>마이페이지</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
					</a>
						<ul class="treeview-menu">
							<li>
								<a href="#"><i class="fa fa-circle-o"></i>병원정보보기</a>
							</li>
						</ul>
					</li>
					<li class="treeview"><a href="#">
					<i class="fa fa-pie-chart"></i>
					<span>문의</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
					</a>
					<ul class="treeview-menu">
						<li><a href="#">
						<i class="fa fa-circle-o"></i> 문의확인하기</a></li>
					</ul></li>
				</ul>
			</section>
		</aside>
		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">
			<div class="row">
				<div class="in">
					<h2>상세보기페이지</h2><br/><br/><br/>
						<table class="table table-hover table-bordered">
							<tr>
								<th class="col-md-2 text-center">성함</th>
								<td>홍길동</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">연락처</th>
								<td>010-7777-7777</td>
							</tr>
							<tr>
								<th class="col-md-2 text-center">이메일</th>
								<td>abcd1234@naver.com</td>
							</tr>
					
							<tr>
								<th class="col-md-2 text-center">예약시간</th>
								<td>2018-10-15 10:54</td>
								
							</tr>
							<tr>
								<th colspan="2" class="text-center">상담내용</th>
							</tr>
							<tr>
								<td colspan="2">가슴이 아프고 통증이 있어요 <br/>감기 기운도 있는 것 같아요</td>
							</tr>
						</table>
					<!-- 버튼들 -->
						<input type="button" class="btn btn-default" value="수락"/>
						<input type="button" class="btn btn-default" value="거절"/>
						<input type="button" class="btn btn-default" value="목록"/>
					<!-- 버튼들 -->
				</div>
			</div>
		</div>
		<!-- 여기까지가 바디로 추정됨 -->
		<!-- 여기부터 퓨터로 추정됨 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.4.0
			</div>
			<strong>Copyright &copy; 2014-2016 <a
				href="https://adminlte.io">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 여기까지가 퓨터로 추정됨 -->
	</div>
	<!-- ./wrapper -->

	<!--아래부분 삭제하면 안됨 -->
	<script src="<c:url value="/Jquery/jquery.js"/>"></script>
	<script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>
