<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>SelectSubject.jsp</title>
<style>
/* body { */
/* 	height: 70%; */
/* } */
/* html { */
/* 	height: 100%; */
/* } */
.btngroup {
	margin-left: 42px;
	background-color: gray;
}
.container {
	min-height: 88%;
}
.footer {
	background-color: #00498c;
	min-height: 10%;
}
.row {
	margin: 0 auto;
	text-align: center;
}
.lead {
	color: #DDCCEE;
}

/* Custom container */
.container-full {
	margin: 0 auto;
	margin-top:50px;
	width: 50%;
	background-color: #00498c;
	color: #eee;
	overflow: hidden;
	margin-bottom: 50px;
	border-radius: 20px;
	line-height: 15px;
}
.h1 {
	font-weight: bold;
}

/* 버튼  */
.button {
	width: 140px;
	height: 50px;
	border: 2px solid #00498c;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 0 40px 60px;
}
.button a {
/* 	font-family: arial; */
	font-size: 16px;
	color: #00498c;
	text-decoration: none;
	line-height: 50px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}
.eff {
	width: 140px;
	height: 50px;
	top: -50px;
	background: #00498c;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}
.button:hover .eff {
	top: 0;
}
.button:hover a {
	color: #fff;
}
.lead {
	text-align: center;
}

</style>

	<!-- TOP 영역 -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
<!--  -->
	<!-- BODY 영역 -->
	<!-- container-full -->
	<div class="container-full">
		<div class="row">
			<div class="content">
				<br/>
				<br/>
				<br/>
				<h1 class="h1"> 진료과목을 선택하세요 </h1>
				<br/>
				<p class="lead"> 해당 진료과목을 다룰 수 있는 병원들을 지도 상에 보여드립니다 </p>
				<br>
			</div>
		</div>
	</div>
	
	<!-- container -->
	<!--  -->
		<!-- container -->
	<div class="container">
		<div class="row">
			<div class="btngroup">
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=gajeong'/>"> 가정의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=gyeolhack'/>"> 결핵과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=nae'/>"> 내과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=machi'/>"> 마취통증의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=beenyo'/>"> 비뇨의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=sanbu'/>"> 산부인과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=seonghyung'/>"> 성형외과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=soa'/>"> 소아청소년과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=singyung'/>"> 신경외과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=an'/>"> 안과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=youngsang'/>"> 영상의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=oe'/>"> 외과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=ebin'/>"> 이비인후과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=jaehwal'/>"> 재활의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=jungsin'/>"> 정신건강의학과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=jeonghyung'/>"> 정형외과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=chi'/>"> 치과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=peeboo'/>"> 피부과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=hanbang'/>"> 한방과 </a>
				</div>
				<div class="button">
					<div class="eff"></div>
					<a href="<c:url value='/general/hospital/hosMap.do?subject=hyungboo'/>"> 흉부외과 </a>
				</div>
			</div>
		</div>

	</div>
	<!-- container -->

