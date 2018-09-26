<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <script src="<c:url value='/js/jquery.fixedcontent.min.js'/>"></script>
    

<style>
@media screen and (min-width: 767px) {
	.container {
		width: 90%;
		margin: 0 auto;
		overflow: hidden;
		clear: both;
	}
	.main_column {
		float: right;
		width: 85%;
		clear: right;
	}
	.sidebar {
		float: left;
		width: 15%;
		clear: left;
		font-size: 0.889em;
	}
}

.box {
	margin-bottom: 2em;
	padding: 1.5em;
	border: 1px solid #ddd;
}

.box_gray {
	margin-bottom: 2em;
	padding: 1.5em;
	background: #CFCFCF;
}

.highlight {
	background-color: #f8ca00;
}
</style>
<!-- body 시작 -->
<div class="sidebar">
	<div class="js_fixedcontent"
		style="top: 24px; z-index: 500; width: 184px; position: static;">
		<div class="box_gray">
			<p style="color: #2b68a7; font-size: 1.8em">
				MyPage
				<!-- 내정보 -->
			<div class="dropdown">
				<button class="btn dropdown-toggle" type="button" id="dropdownMenu1"
					data-toggle="dropdown" aria-expanded="true"
					style="background-color: #CFCFCF">
					내정보 관리 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">개인정보</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">건강상태</a></li>
				</ul>
			</div>
			<!--가족정보  -->
			<button class="btn" style="background-color: #CFCFCF">가족정보
				관리</button>

			<!-- 자가진단 -->
			<button class="btn" style="background-color: #CFCFCF">자가진단</button>
			<!-- 예약/접수 -->
			<div class="dropdown">
				<button class="btn dropdown-toggle" type="button" id="dropdownMenu1"
					data-toggle="dropdown" aria-expanded="true"
					style="background-color: #CFCFCF">
					예약/접수 관리 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">예약/접수하기</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">진료내역</a></li>
				</ul>
			</div>
			<!-- 건강문의 -->
			<button class="btn" style="background-color: #CFCFCF">건강문의</button>
			<!-- 사이트문의 -->
			<button class="btn" style="background-color: #CFCFCF">사이트문의
			</button>
			</p>

		</div>
	</div>
</div>
