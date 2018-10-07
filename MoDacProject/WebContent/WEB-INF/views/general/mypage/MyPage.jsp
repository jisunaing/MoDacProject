<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="<c:url value='/css/masongram.min.css'/>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/paper/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!--아이콘때문에 필요 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<title>Insert title here</title>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.1.1/masonry.pkgd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.1/imagesloaded.pkgd.min.js"></script>
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="<c:url value='/js/masongram.min.js'/>"></script>
<style>
.top {
	margin: 0 auto;
	margin-top:50px;
	width: 60%;
	border: solid 3px #2b68a7;
	overflow: hidden;
	margin-bottom: 30px;
	border-radius: 15px;
	line-height: 15px;
	box-sizing: border-box;
}

hr{
	border: solid 1px black;
	width: 30%; 
	align-content: center 
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
<div class="container-fluid" style="background-image: url('Images/greenapple.jpg')">
<br/>
<br/>
	
		
		
		<div class="top" style="text-align: center">
			<h1>
				${USER_ID}님의 <small>MyPage</small>
			</h1>
			<br/>
			<p>회원님의 정보들을 한눈에 확인 할 수 있는 페이지 입니다.</p>
			<br/>
		</div>
	<div class="masongram-container" style="position: relative; height: 2360px;">
		<!-- 개인정보 -->
		<div tabindex="0" class="masongram-image-container masongram-image-size-standard_resolution"
			style="position: absolute; left: 5%; top: 30px;">
			
			<img src="<c:url value='/Images/todolist.jpg'/>" class="masongram-image">
			<div class="masongram-image-caption-container">
				<div class="masongram-image-caption">
					<div class="text-center">
						<p>
							<h2>내 정보</h2>
							회원님의 개인 정보와 건강상태를 확인하세요
						</p>
						<a tabindex="-1" class="btn btn-primary " href="<c:url value='/general/mypage/personalinfo.do'/>"> 
							<i class="fas fa-id-card-alt"></i> 개인정보
						</a> 
						<a tabindex="-1" class="btn btn-primary" href="<c:url value='/general/mypage/healthinfo.do'/>"> 
							<i class="fas fa-notes-medical"></i> 건강 상태
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 개인정보  끝 -->
		<!-- 가족정보관리 -->
		<div tabindex="0"
			class="masongram-image-container masongram-image-size-standard_resolution"
			style="position: absolute; left: 35%; top: 30px;">
 			<img src="<c:url value='/Images/babyfeet.jpg'/>" class="masongram-image" width="640" height="800">
			<div class="masongram-image-caption-container">
				<div class="masongram-image-caption">
					<div class="text-center">
						<p>
							<h2>가족 정보 관리</h2>
							가족들의 정보까지 한번에 관리하세요.
						</p>
						<a tabindex="-1" class="btn btn-primary" href="<c:url value='/general/mypage/familyinfo.do'/>"> 
							<i class="fas fa-heart"></i> 보러가기
						</a>
					</div>
				</div>
			</div>


		</div>
		<!-- 가족정보관리 끝-->
		<!-- 접수/예약 내역 -->
		<div tabindex="0"
			class="masongram-image-container masongram-image-size-standard_resolution"
			style="position: absolute; left: 65%; top: 30px;">
			<img src="<c:url value='/Images/doclookingforinfo.jpg'/>" class="masongram-image">
			<div class="masongram-image-caption-container">
				<div class="masongram-image-caption">
					<div class="text-center">
						<p>
							<h2>접수/예약 내역</h2>
							그동안의 진료내역과 예약을 한번에 확인하세요
						</p>
						<form  method="get" action="<c:url value='/general/hospital/SelectSubject.do'/>" >
							<input type="hidden" name="where" value="mypage">
							<button id="reservation" tabindex="-1" type="submit" class="btn btn-primary"> 
								<i class="far fa-hospital"></i> 예약/접수
							</button>
							
							<a tabindex="-1" class="btn btn-primary" href="<c:url value='/general/reservation/reservationlist.do'/>"> 
								<i class="far fa-hospital"></i> 진료내역
							</a>
						</form>
						
					</div>
				</div>
			</div>
		</div>
		<!-- 접수/예약 내역 끝-->

		<!-- 건강 문의 -->
		<div tabindex="0"
			class="masongram-image-container masongram-image-size-standard_resolution"
			style="position: absolute; left: 20%; top: 10.7%;">
			<img src="<c:url value='/Images/stet.jpg'/>" class="masongram-image">
			<div class="masongram-image-caption-container">
				<div class="masongram-image-caption">
					<div class="text-center">
						<p>
							<h2>증상문의</h2>
							의사 선생님께 내 상태에 대해 직접 물어보세요
						</p>
						<a tabindex="-1" class="btn btn-primary" href="<c:url value='/general/qna/qnahealth/health_qna_list.do'/>"> 
							<i class="fas fa-stethoscope"></i>문의하기
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 건강 문의 끝 -->
		<!-- 사이트 문의 -->
		<div tabindex="0"
			class="masongram-image-container masongram-image-size-standard_resolution" 
			style="position: absolute; left: 50%; top: 10.7%;">
			<img src="<c:url value='/Images/sayingbubble.jpg'/>" class="masongram-image">
			<div class="masongram-image-caption-container">
				<div class="masongram-image-caption">
					<div class="text-center">
						<p>
							<h2>사이트 문의하기</h2>
							사이트에 대해 문의하실 사항이 있으면 적어주세요. 빠른 시일 내에 답변드리겠습니다.
						</p>
						<a tabindex="-1" class="btn btn-primary" href="<c:url value='/general/qna/qna_list.do'/>"> 
							<i class="far fa-comment-dots"></i> 문의하기
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 사이트 문의 끝 -->


	</div>

</div>


	<!-- container -->

	