﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	height: 900px;	
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

  <script>
  
  $(function() {

		/*모달용 함수 시작 */

			$("#selectable").selectable();
		
			var nujeok= new Array();
							
			var dydlf = new Array();
			
			var cut = new Array();
			
			var dkd = "";
			
			var ghd = "";
			
			
			
		
				$('li').click(function() {
					cut = $(this).html();

					if ($(this).val() == 0) {

						$(this).css({
							'background-color' : '#79ABFF',
							'color' : 'white'
						});
						
						$(this).attr('value', 1);
						
											
						
						
						nujeok += cut+",";	
						
						dkd = nujeok.substring(0,nujeok.lastIndexOf(','));
						
						ghd = dkd.split(','); //배열로 만듬
				
			
					} 
					else {

						$(this).css({
							'background-color' : 'white',
							'color' : 'black'
						});

						$(this).attr('value', 0);
						

						ghd.forEach(function(value,index) {
							
						if(value == cut){

							ghd.splice(index);
					
						}

						});

						
					}


				});
				
				
				
				$('#okbutton').click(function() {
					
					$('#humoo').val(ghd);
				
				});
				
			
								
			
				
				
				
				
				
				
				/*모달용 함수 끝 */

				
	  $('input[type="text"]').css('margin-bottom','23px');		
		
				
				
				
			});///최상위
		</script>





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
						<li>
						<a href="<c:url value="/partner/partnerQnA/partner_QnA.do"/>"><i class="fa fa-circle-o"></i>문의확인하기</a>
						</li>
					</ul></li>
				</ul>
			</section>
		</aside>
		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">

  <!-- form -->
<div class="container">
			<div class="row">
<div class="form-box">

		 
			
			<h2> 병원 정보<small> 상세 보기</small></h2>

				<div class="col-sm-12">
					<hr style="border: 1px dashed; margin-left: -16px;"	class="col-sm-12" />
				</div>

				<form action="#" method="post">
			 

				
				<div class="form-group">				
					<div class="col-sm-6">
					<div class="col-sm-8">
						<span class="sp">병원 명</span> 
						<label for="email2"> 병원 명 <span class="req">*</span> </label>
						<input type="text" class="form-control" name="id" id="id" value="" >
						</div>
					</div>
				</div>
				
				<div class="form-group">				
					<div class="col-sm-4 col-sm-pull-1">			
					<div class="col-sm-12">
						<span class="sp">병원 연락처</span> 
						<label for="email2"> 병원 연락처 <span class="req">*</span> </label>
						<input type="text" class="form-control" name="id" id="id" value="" >
						</div>
					</div>
				</div>


					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<span class="sp">진료 과목</span> <label for="email2"> 진료 과목
									<span class="req">*</span>
								</label> <input type="text" class="form-control" name="id" id="id" value="">
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-8">
								<span class="sp">병원 주소</span> 
								<label for="email2"> 병원 주소 <span class="req">*</span> </label>
								 <input type="text" class="form-control" name="id" id="id" value="">																	
							</div>
						</div>
					</div>

					
					
					
					
					<div class="form-group" >
				<div class="col-sm-6">				
					<div class="col-sm-12">
						<span class="sp">진료 시간</span> 
						<label for="email2"> ex)오전 9시 30분 ~ 오후 7시 30분 <span class="req">*</span> </label>
						<input type="text" class="form-control" name="id" id="id" value="" >
					</div>
					</div>
				</div>
				
				<div class="form-group">	
					<div class="col-sm-6">			
						<div class="col-sm-12">
							<span class="sp">점심 시간</span> 
							<label for="email2">ex)오후 12시 30분 ~ 오후 1시 30분 <span class="req">*</span> </label>
							<input type="text" class="form-control" name="id" id="id" value="" >
						</div> 
					</div>	
				</div>
					
		
				
					
					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-5">
								<span class="sp">휴무 안내</span> 
							
								 <input type="text" class="form-control" name="humoo" id="humoo" value="" disabled>
							</div>
							<div class="col-sm-7">					
								<button style="margin-top: 25px; margin-left: -15px;" 
								type="button" class="btn btn-primary testbtn" data-toggle="modal" data-target="#basicModal" > 휴무일 선택 </button>
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
											<h4 class="modal-title">휴무일을 선택해주세요 </h4>
										</div>
										<div class="modal-body" >
										
										<ol id="selectable">	
										
										  <li class="ui-state-default" >일요일</li>
										
										  <li class="ui-state-default" >월요일</li>
										  
										  <li class="ui-state-default">화요일</li>
										  
										  <li class="ui-state-default" >수요일</li>
										  
										  <li class="ui-state-default">목요일</li>
										  
										  <li class="ui-state-default" >금요일</li>
										  
										  <li class="ui-state-default" >토요일</li>
										  
										  <li class="ui-state-default" >공휴일</li>
											
										</ol>

										</div>
										<div class="modal-footer">
											<button id="okbutton" class="btn btn-primary" data-dismiss="modal">확 인</button>
										</div>
									</div>
								</div>
							</div>







					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-12">
								<span class="sp">병원 안내글</span>
								<textarea rows="10" class="form-control" id="greeting" name="greeting"></textarea>
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






  

    <script >
      var formTarget = $('.form-box').find('input, textarea');
formTarget.on('keyup blur focus', function (e) {

	var $this = $(this),
	label = $this.prev('label');

	if (e.type === 'keyup') {
		if ($this.val() === '') {
			label.removeClass('active highlight');
		} else {
			label.addClass('active highlight');
		}
	} else if (e.type === 'blur') {
		if ($this.val() === '') {
			label.removeClass('active highlight');
		} else {
			label.removeClass('highlight');
		}
	} else if (e.type === 'focus') {

		if ($this.val() === '') {
			label.removeClass('highlight');
		} else
		if ($this.val() !== '') {
			label.addClass('highlight');
		}
	}

});

    </script>
		
		
		
		
		
			
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