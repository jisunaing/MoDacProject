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
.btnsidebar{
	color:black
}
</style>
<script>

$(function(){
	//예약/접수 버튼 클릭시 alert창 띄워주기 위함
	$('#reservation').click(function() {
		alert("예약/접수를 위해 병원 선택 페이지로 이동합니다");
	})	
});

</script>
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
					<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/personalinfo.do'/>">개인정보</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/mypage/healthinfo.do'/>">건강상태</a></li>
				</ul>
			</div>
			<!--가족정보  -->
			<a href="<c:url value='/general/mypage/familyinfo.do'/>"><button  class="btn btnsidebar" style="background-color: #CFCFCF">가족정보 관리</button></a>

			<!-- 예약/접수 -->
			<div class="dropdown">
				<button class="btn dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="background-color: #CFCFCF">
					예약/접수 관리 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/hospital/SelectSubject.do'/>">예약/접수하기</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="<c:url value='/general/reservation/reservationlist.do'/>">진료내역</a></li>
				</ul>
			</div>
			<!-- 건강문의 -->
			<a href="<c:url value='/general/qna/qnahealth/health_qna_list.do'/>"><button class="btn btnsidebar" style="background-color: #CFCFCF">건강문의</button></a>
			<!-- 사이트문의 -->
			<a href="<c:url value='/general/qna/qna_list.do'/>"><button class="btn btnsidebar" style="background-color: #CFCFCF">사이트문의</button></a>
			
			</p>

		</div>
	</div>
</div>
