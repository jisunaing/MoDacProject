<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>병원 관리자 페이지</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"	name="viewport">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">
<style>
html { overflow-y: scroll; }

body {	
	font-family:sans-serif;
	/*
	background-image: url("<c:url value='/Images/1.jpg'/>");
	*/	
	background-repeat: no-repeat;
	background-size: 90%	
		
}

.form-box{
	background: #F6F6F6; 
	padding: 20px;
	width: 600px;
	height: 530px;	 
	margin: 180px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}
	
	#h2id{
	
	text-align: center; 
	}
</style>
 
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
							<img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
							<span class="hidden-xs">병원이름</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
								<img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
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
						<img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>병원이름</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">카테고리</li>
					<li class="active treeview"><a href="#"> <i
							class="fa fa-dashboard"></i> <span>예약/문의 관리</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="<c:url value="/partner/hospital/ReservationMove.do"/>"><i class="fa fa-circle-o"></i>예약관리</a></li>
							<li><a href="<c:url value="/partner/hospital/ReservationListMove.do"/>"><i class="fa fa-circle-o"></i>예약지난내역</a></li>
							<li><a href="<c:url value="/partner/hospital/ReceiptMove.do"/>"><i class="fa fa-circle-o"></i>접수관리</a></li>
							<li><a href="<c:url value="/partner/hospital/ReservationListMove.do"/>"><i class="fa fa-circle-o"></i>접수지난내역</a></li>
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
								<a href="<c:url value="/partner/mypage/partnerInfo.do"/>"><i class="fa fa-circle-o"></i>병원정보보기</a>
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
							<li><a href="<c:url value="/partner/partnerQnA/partner_QnA.do"/>"><i class="fa fa-circle-o"></i>일반회원 문의 확인하기</a></li>

							<li><a href="<c:url value="/partner/partnerQnA/admin_QnA.do"/>"><i class="fa fa-circle-o"></i>관리자와 문의하기</a></li>
							
					</ul></li>
					
					<li class="treeview"><a href="#">
					<i class="fa fa-pie-chart"></i>
					<span>제휴 탈퇴</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
					</a>
					<ul class="treeview-menu">
						<li>
						<a href="<c:url value="/partner/withdrawal/partner_withdrawal.do"/>"><i class="fa fa-circle-o"></i>제휴 탈퇴 신청</a>
						</li>
					</ul></li>
					
					
				</ul>
			</section>
		</aside>
		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">

			<div class="container">
				<div class="row">


					<div class="form-box">

						<h2 id="h2id">
							제휴 회원 <small> 탈퇴 신청</small>
						</h2>


						<form action="<c:url value='/partner/withdrawal/partner_withdrawalREQ.do'/>" method="post" id="submits">
							<div class="form-group">
								<div class="col-sm-12">
									<div class="col-sm-6">
										<span class="margins">병원 명</span> <input type="text"
											class="form-control" name="id" id="id" disabled>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="col-sm-6" style="margin-top: 10px;">
										<span class="margins">아이디</span> <input type="text"
											class="form-control" name="id" id="id" disabled>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<div class="col-sm-12" style="margin-top: 10px;">
										<span class="sp">탈퇴 이유</span>
										<textarea style="margin-top: 5px;" rows="10"
											class="form-control" id="greeting" name="greeting"></textarea>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<div class="col-sm-5 col-sm-offset-5">
										
						<button style="margin-top: 20px; margin-left: -14px;" type="button" class="btn btn-primary" 
						data-toggle="modal" data-target="#basicModal" > 탈퇴 신청 </button>					
									</div>
								</div>
							</div>
							
							<!-- 모달 창 -->
							<div class="modal fade" id="basicModal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<!-- 모달닫기:data-dismiss="modal" -->
											<button class="close" data-dismiss="modal">
												<span aria-hidden="true">&times;</span>
											</button>
										
										</div>
										<div class="modal-body" style="text-align: center;" >

											그동안 저희 모닥을 사랑해주셔서 감사합니다.<br/>
											고객님의 요청을 확인 후 빠른 시일 내에 처리하겠습니다.

										</div>
										<div class="modal-footer">
											<button type="button" id="okbutton" class="btn btn-primary" data-dismiss="modal">확 인</button>
										</div>
									</div>
								</div>
							</div>


						</form>
					</div>
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
	<script>
	
	$(function() {
		
		$('#okbutton').click(function() {
			
			$('#submits').submit();
			
		})
	
		
	});
	
	
	
	
	</script>
	

</body>
</html>
