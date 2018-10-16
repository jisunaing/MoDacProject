<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
//첫 시작시 알림 허용창 띄우기
 	Notification.requestPermission();
//접수알림 서비스
function successAjax1(data,target){
   if(data.length !=0){
      var audio = new Audio('../../Audio/notice.mp3');
      audio.play();
      console.log(Notification.permission)
      //웹 알림
      if (Notification.permission == "granted") {
         var options = {
            body : data,
            icon : "../../Images/Modac.png",
            dir : "ltr"
         };
         var notification = new Notification("접수 건이 왔습니다", options);
         notification.onclick=function(){
            location.replace("<c:url value='/partner/hospital/ReceiptMove.do'/>");
            //window.open("http://www.nate.com")
         };
      }//if
   }//if
   else{}
   
}/////////////////////////
//예약알림 서비스
function successAjax2(data,target){
   if(data.length !=0){
      var audio = new Audio('../../Audio/notice.mp3');
      audio.play();
      console.log(Notification.permission)
      //웹 알림
      if (Notification.permission == "granted") {
         var options = {
            body : data,
            icon : "../../Images/Modac.png",
            dir : "ltr"
         };
         var notification = new Notification("예약 건이 왔습니다", options);
         notification.onclick=function(){
            location.replace("<c:url value='/partner/hospital/ReservationMove.do'/>");
            //window.open("http://www.nate.com")
         };
      }//if
   }//if
   else{}
   
}/////////////////////////   
		//접수 에이작스
		window.setInterval(function(){
			$.ajax({
				url:'<c:url value="/Ajax/AjaxReception.do"/>',
				type:'post',
				dataType:'text',
				success:function(data){
					successAjax1(data,'#polling');
				},
				error:function(request,error){
					console.log('상태코드:',request.status);
					console.log('서버로 부터 받은 데이타:',request.responseText);
					console.log('에러:',error);
				}
			});			
		},3000);
		//예약 에이작스
		window.setInterval(function(){
			$.ajax({
				url:'<c:url value="/Ajax/AjaxReservation.do"/>',
				type:'post',
				dataType:'text',
				success:function(data){
					successAjax2(data,'#polling');
				},
				error:function(request,error){
					console.log('상태코드:',request.status);
					console.log('서버로 부터 받은 데이타:',request.responseText);
					console.log('에러:',error);
				}
			});			
		},1500);
</script>
		<!-- 탑부분 시작 -->
		<header class="main-header">
			<!-- Logo -->
			<a href="<c:url value='/partner/hospital/MainMove.do'/>" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
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
										<a href="<c:url value='/partner/hospital/Logout.do'/>" class="btn btn-default btn-flat">로그아웃</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- 탑부분 끝-->