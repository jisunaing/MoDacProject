<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html lang="ko" >
<head>
<meta charset="UTF-8">


  
  <link rel="mask-icon" type="" 
  href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  
  <script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>

  <script src="<c:url value='/Jquery/jquery.min.js'/>">
  
  </script>


  
  <title>모닥으로 로그인 중!!!</title>
  
  
  
  
      <style>
      *, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}


 

.form-box {
	background: #F6F6F6; 
	padding: 40px;
	height: 700px;
	max-width: 1000px;
	margin: 68px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);
	
	
}

 
small {	
	color: black;
	font-weight: 150;
	margin-bottom: 40px;
}



#h2id{

text-align: center;
font-size: 2.5em;

}
#h4id{

text-align: center;
margin-top: 10px;
}

.title_result{

margin-top: 25px;
border: 1px solid;

 
} 

#btn_main{

text-align: center;
margin-top: 15px;

}





    </style>
 
</head>


<body>

 
 
	<div class="form-box">
	
	<h2 id="h2id">자가진단 <small>결과</small></h2>
	
	<hr/>
	 
	<h4 id="h4id">※ 현재 결과는 100% 정확한 결과가 아닙니다!! 무엇보다 전문의료진의 상담과 진료를 통하여 치료받으시길 권장드립니다.※</h4>
	
		<div class="title_result"> 
	
	<h3>감기</h3> 
	
	코,목과 같은 상부 호흡기계가 바이러스에 의해 감연된 상태
	
	<input type="button" value="병원 찾기"> 
	
	
	</div>
	
		<div class="title_result"> 
	 
	<h3>부비동염(축농증)</h3> 
	
	눈썹 위, 뺨, 코 뒤 등 공기로 차있는 빈공간에 염증이 생긴 상태
	
	<input type="button" value="병원 찾기"> 
	 
	
	</div>
	
	<div class="title_result"> 
	
	<h3>냉방병</h3> 
	
	냉방된 실내와 냉방되지 않은 실외의 온도차로 인해 인체가 적응하지 못하는 상태
	
	<input type="button" value="병원 찾기"> 
	
	
	</div>
	
	
		<div class="title_result">
	
	<h3>복막염</h3>
	
	복막(장기를 덮고 있는 얇은 막)에 염증이 생긴 상태
	
	<input type="button" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>세균성 이질</h3>
	
	시겔라 균에 의한 소화기계의 전염성질환으로 제1종 법정 전염병
	
	<input type="button" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>충수염</h3>
	
	충수돌기(맹장 끝에 위치)에 염증이 생긴 상태
	
	<input type="button" value="병원 찾기"> 
	
	</div> 
	
	<div id="btn_main">  
	<input type="button" value="메인 페이지 이동">
	</div>
	</div>
	
</body>
</html>