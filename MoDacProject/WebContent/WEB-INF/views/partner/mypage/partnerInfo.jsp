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
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">


<script src="<c:url value='/Jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
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


li {list-style:none;} 



.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 930px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}

label {
	pointer-events: none;
	position: absolute;
	left:13px;
	/* 화면 전이가 일어나기 전의 스타일 정의 */
	/* 레이블 위치 스타일 정의 */
	-webkit-transform: translateY(6px);
	transform: translateY(6px);
	color: black;
	font-size: 16px;
	/* 화면 전이 정의 */
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	margin-top: 25px;
	margin-left: 10px; 
}

label .req {color: red; }


label.active {
	/* 화면 전이의 최종 변천 스타일 정의 */
	-webkit-transform: translateY(35px);
	transform: translateY(35px);
	left: 5px;
	font-size: 13px;
	
	}
	
label.active .req { opacity: 0; }

label.highlight { color: black; }

input{
	font-size: 22px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 5px 10px;
	background: none; /* 밑 배경색 보여주기 위해 none 처리 */
	border: 1px solid #a0b3b0;
	color: black;
	border-radius: 0;
	-webkit-transition: border-color .25s ease, box-shadow .25s ease;
	transition: border-color .25s ease, box-shadow .25s ease;
}

input:focus{ outline: 0; border-color: black; }


.field-wrap { position: relative; margin-bottom: 40px; }


.sp{

	font-size: 1.3em;
	font-weight:bold;
	color: black;

}
 
	/* 아래는 휴일 모달창 스타일  */

    #selectable { list-style-type: none; margin: 0; padding: 0; width: 550px; }

    #selectable li { margin: 0px 0px 0px 18px; padding: 11px; float: left; width: 50px; height: 120px; 
    
    font-size: 1.5em; text-align: center; border: 1px solid black; border-radius: 10px; }
    
    .modal-footer{margin-top: 130px; }
    
     #selectable li:hover {background-color: #79ABFF; color : white; }
    
    /* 휴일 모달창 스타일 끝  */

    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
	
		<header class="main-header">
		
			<a href="index2.html" class="logo"> 
			<span class="logo-lg"><b>병원관리자</b>페이지</span>
			</a>
			
			<nav class="navbar navbar-static-top">
			
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<li class="dropdown user user-menu">
						<a href="#"	class="dropdown-toggle" data-toggle="dropdown">
							<img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
							<span class="hidden-xs">병원이름</span>
						</a>
							<ul class="dropdown-menu">
							
								<li class="user-header">
								<img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
									<p>병원이름 넣을 곳</p></li>
								
								<li class="user-footer">
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">로그아웃</a>
									</div>
								</li>
							</ul></li>
					
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
			
					<h2> 병원 정보<small> 정보 보기</small> </h2>

					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;" class="col-sm-12" />
					</div>

				<form action="<c:url value='/partner/mypage/partnerInfoEdit.do' />" method="post">

					<div class="form-group">
						<div class="col-sm-6">
							<div class="col-sm-8">
								<span class="sp">병원 명</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4 col-sm-pull-1">
							<div class="col-sm-12">
								<span class="sp">병원 연락처</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<span class="sp">진료 과목</span> <label for="email2"> </label> <input
									type="text" class="form-control" name="id" id="id" value=""
									disabled>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-8">
								<span class="sp">병원 주소</span> <input type="text"
									class="form-control" name="id" id="id" value="" disabled>
							</div>
						</div>
					</div>



					<div class="form-group"> 
					
						<div class="col-sm-12">  
						
						<div class="col-sm-12">
							<span class="sp" style="text-align: center;">진료 시간</span>  
							</div> 
								 
							<div style="margin-left: 30px;" class="col-sm-5">
								월요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								화요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div>
							
							<div style="margin-left: 30px;" class="col-sm-5">
								수요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								목요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div>
							<div style="margin-left: 30px;" class="col-sm-5">
								금요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								토요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div>
							<div style="margin-left: 30px;" class="col-sm-5">
								일요일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								공휴일	<input type="text" class="form-control" name="id" id="id" value="" disabled> 
							</div>
							
							<div style="margin-left: 30px;" class="col-sm-5">
								휴무일	<input type="text" class="form-control" name="id" id="id" value="" disabled>
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								점심시간	<input type="text" class="form-control" name="id" id="id" value="" disabled> 
							</div>
						</div> 
					</div>



					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-12">
								<span class="sp">병원 안내글</span>
								<textarea rows="10" class="form-control" id="greeting" name="greeting" disabled></textarea>
							</div>
						</div>
					</div>




					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-5 col-sm-offset-5">
								<button style="margin-top: 20px; margin-left: -14px;" type="submit" class="btn btn-danger">병원정보 수정</button>
							</div>
						</div>
					</div>
					
					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;" class="col-sm-12" />
						  
					</div>
					
				</form>

			</div>

		</div>

	</div>
	

	<!--  내용 끝   -->
		
		
		
		
		
			
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
