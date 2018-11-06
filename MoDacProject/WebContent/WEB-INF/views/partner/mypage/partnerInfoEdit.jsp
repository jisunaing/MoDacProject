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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>


<style>
   
html { overflow-y: scroll; }

body {	
	font-family:sans-serif;
	background-repeat: no-repeat;
	background-size: 90%	
		
}


li {list-style:none;} 
.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 1030px;	
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
	margin-top: 26px;   /* 폼안에있는 이벤트용 라벨  */
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

    </style>

	<script>
  
  $(function() {
			
	  $('input[type="text"]').css('margin-bottom','13px');		
			
	  $('#hosaddr').keyup(function(){
	         var geocoder = new daum.maps.services.Geocoder();
	         var address = document.getElementById('hosaddr').value;
	         
	         geocoder.addressSearch(address, function(result, status) {
	            
	              if (status === daum.maps.services.Status.OK) {
		               var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		               $('#message').css('color','green').html('해당 주소는 지도상에 표시할 수 있습니다.');    
		               $('#lat').val(coords.getLat());
		               $('#lng').val(coords.getLng());
	             } else {
	            	   $('#message').css('color','red').html('해당 주소는 지도상에 표시할 수 없습니다.');
	            	   $('#lat').val('nopos');
		               $('#lng').val('nopos');
	             }
	              
	         });
	    });
	  
	  var geocoder = new daum.maps.services.Geocoder();
      var address = document.getElementById('hosaddr').value;
      
      geocoder.addressSearch(address, function(result, status) {
         
           if (status === daum.maps.services.Status.OK) {
	           var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	           $('#message').css('color','green').html('해당 주소는 지도상에 표시할 수 있습니다.');    
	           $('#lat').val(coords.getLat());
	           $('#lng').val(coords.getLng());
          } else {
       	  	   $('#message').css('color','red').html('해당 주소는 지도상에 표시할 수 없습니다.');
          }
      });
	  
	});///최상위
			
			
	</script>





</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->

		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		
		<!-- 여기부터가 바디로 추정됨 -->
		<div class="content-wrapper">

  <!-- form -->
<div class="container">
			<div class="row">
<div class="form-box">

		 
			
			<h2> 병원 정보<small> 수정</small></h2>

				<div class="col-sm-12">
					<hr style="border: 1px dashed; margin-left: -16px;"	class="col-sm-12" />
				</div>

				<form action="<c:url value='/partner/mypage/partnerInfoEditOK.do' />" method="post">
				<input type="hidden" name="pid" id="pid" value="${pid}">		
			 

				
				<div class="form-group">				
					<div class="col-sm-6">
					<div class="col-sm-8">
						<span class="sp">병원 명</span> 
						
						<input type="text" class="form-control" name="hosname" id="hosname" value="${partner.hosname}">
						</div>
					</div>
				</div>
				
				<div class="form-group">				
					<div class="col-sm-4 col-sm-pull-1">			
					<div class="col-sm-12">
						<span class="sp">병원 연락처</span> 
						
						<input type="text" class="form-control" name="hosphone" id="hosphone" value="${partner.hosphone}">
						</div>
					</div>
				</div>


					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-10">
								<span class="sp">진료 과목</span> 								
								<input type="text" class="form-control" name="subjectlist" id="subjectlist" value="${subjectlist}">
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-8">
								<span class="sp">병원 주소</span>								 						
								 <input type="text" class="form-control" name="hosaddr" id="hosaddr" value="${partner.hosaddr}">
								 <span id="message"></span>																	
								 <input type="hidden" id="lat" name="lat"/>
            					 <input type="hidden" id="lng" name="lng"/>
							</div>
						</div>
					</div>

					
					
					
					
					<div class="form-group"> 					
						<div class="col-sm-12">  
						
						<div class="col-sm-12">
							<span class="sp" style="text-align: center;">진료 시간 </span> <span> ex) 09:30 ~ 20:30 or 휴무</span> 
							</div> 
								 
							<div style="margin-left: 30px;" class="col-sm-5">
								월요일	<input type="text" class="form-control" name="mon" value="${partner.mon}">
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								화요일	<input type="text" class="form-control" name="tue"  value="${partner.tue}">
							</div>
							
							<div style="margin-left: 30px;" class="col-sm-5">
								수요일	<input type="text" class="form-control" name="wed"  value="${partner.wed}">
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								목요일	<input type="text" class="form-control" name="thu"  value="${partner.thu}">
							</div>
							<div style="margin-left: 30px;" class="col-sm-5">
								금요일	<input type="text" class="form-control" name="fri" value="${partner.fri}">
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								토요일	<input type="text" class="form-control" name="sat"  value="${partner.sat}">
							</div>
							<div style="margin-left: 30px;" class="col-sm-5">
								일요일	<input type="text" class="form-control" name="sun"  value="${partner.sun}">
							</div> 
							<div class="col-sm-offset-1 col-sm-5">
								공휴일	<input type="text" class="form-control" name="holiday"  value="${partner.holiday}"> 
							</div>

							<div style="margin-left: 30px;" class="col-sm-5">
								점심시간	<input type="text" class="form-control" name="lunch" value="${partner.lunch}"> 
							</div>
							
						</div>			
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-12">
								<span class="sp">병원 안내글</span>
								<textarea rows="10" class="form-control" name="info">${partner.info}</textarea>
							</div>
						</div>
					</div>




					<div class="form-group">
						<div class="col-sm-12">
							<div class="col-sm-5 col-sm-offset-5">
								<button style="margin-top: 20px; margin-left: -14px;" type="submit" class="btn btn-danger">정보 수정</button>
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
		<!-- 퓨터-->
		<jsp:include page="/WEB-INF/template/hospital/Footer.jsp"/>
		<!-- 퓨터 -->
	</div>
	<!-- ./wrapper -->
	<!--아래부분 삭제하면 안됨 -->
	<script src="<c:url value="/Jquery/jquery.js"/>"></script>
	<script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>
