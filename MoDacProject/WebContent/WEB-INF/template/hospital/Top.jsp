<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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