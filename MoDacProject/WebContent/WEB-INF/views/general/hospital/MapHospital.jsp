<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->

<!-- <head> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>병원</title>

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>


<!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> -->

<style>
/* 버튼과 폼 관련 */
/* footer{ */
/* 	margin-top: 10px;  */
/* 	min-width: 100%; */
/* /* 	position: absolute; */ */
/* 	bottom: 0; */
/* 	left: 0; */
/* 	right: 0; */
/* } */
.row {
	margin-top:10px;
/* 	padding-left:120px;  */
}
/* 병원이름 form 넓이 */
.input-group {
	width:700px;
}


#searchtoggle {
/* 	margin-left:10px; */
	float: right;
}

/* 지도 */
#map {
	width:auto;
	height:680px;
	/*
	margin-left:120px;
	margin-right:120px; 
	*/
}


/* 커스텀 오버레이 */
.wrap {position: absolute;left: 0;bottom: 57px;width: 388px;height: 317px;margin-left: -194px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 386px;height: 305px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 2px 2px 10px;height: 40px;color: #fff;background: #00498c;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold; text-align:center;}
.info .body { position: relative; overflow: hidden;}
.info .desc {overflow: auto; text-overflow: ellipsis; position: relative; margin: 13px 0 0 90px; height: 250px;}
.smalltitle {font-weight: bold; color:#00498c;}
.schedule {width:100%; text-align:left}
.desc .ellipsis {white-space: nowrap;}
.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>

<!-- </head> -->
<!-- <body> -->

	<!-- TOP 영역 -->
<!-- 	<div class="topMenu" > -->
<%-- 		<jsp:include page="/WEB-INF/template/Top.jsp" /> --%>
<!-- 	</div> -->
	
	<!-- BODY 영역 -->
		<div class="row">
			<form class="form-inline">
			  <div class="btn-group">
				  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				    	진료과목으로 검색 &nbsp;&nbsp; <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				    <li><a href="?subject=gajeong">가정의학과</a></li>
				    <li><a href="?subject=gyeolhack">결핵과</a></li>
				    <li><a href="?subject=nae">내과</a></li>
				    <li><a href="?subject=machi">마취통증의학과</a></li>
				    <li><a href="?subject=binyo">비뇨의학과</a></li>
				    <li class="divider"></li>
				    <li><a href="?subject=sanbu">산부인과</a></li>
				    <li><a href="?subject=seonghyung">성형외과</a></li>
				    <li><a href="?subject=soa">소아청소년과</a></li>
				    <li><a href="?subject=singyung">신경외과</a></li>
				    <li><a href="?subject=an">안과</a></li>
				    <li class="divider"></li>
				    <li><a href="?subject=youngsang">영상의학과</a></li>
				    <li><a href="?subject=oe">외과</a></li>
				    <li><a href="?subject=ebin">이비인후과</a></li>
				    <li><a href="?subject=jaehwal">재활의학과</a></li>
				    <li><a href="?subject=jeongsin">정신건강의학과</a></li>
				    <li class="divider"></li>
				    <li><a href="?subject=jeonghyung">정형외과</a></li>
				    <li><a href="?subject=chi">치과</a></li>
				    <li><a href="?subject=peebu">피부과</a></li>
				    <li><a href="?subject=hanbang">한방과</a></li>
				    <li><a href="?subject=hyungboo">흉부외과</a></li>
				  </ul>
			</div>
			<div class="btn-group">
				  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				     	지역으로 검색 &nbsp;&nbsp; <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dLabel">
				    <li><a href="?replace=gangnam">강남구</a></li>
				    <li><a href="?replace=gangdong">강동구</a></li>
				    <li><a href="?replace=gangbook">강북구</a></li>
				    <li><a href="?replace=gangseo">강서구</a></li>
				    <li><a href="?replace=gwanak">관악구</a></li>
				    <li class="divider"></li>
				    <li><a href="?replace=gwangjin">광진구</a></li>
				    <li><a href="?replace=gooro">구로구</a></li>
				    <li><a href="?replace=guemcheon">금천구</a></li>
				    <li><a href="?replace=nowon">노원구</a></li>
				    <li><a href="?replace=dobong">도봉구</a></li>
				    <li class="divider"></li>
				    <li><a href="?replace=dongdaemoon">동대문구</a></li>
				    <li><a href="?replace=dongjak">동작구</a></li>
				    <li><a href="?replace=mapo">마포구</a></li>
				    <li><a href="?replace=seodaemoon">서대문구</a></li>
				    <li><a href="?replace=seocho">서초구</a></li>
				    <li class="divider"></li>
				    <li><a href="?replace=seongdong">성동구</a></li>
				    <li><a href="?replace=seongbook">성북구</a></li>
				    <li><a href="?replace=songpa">송파구</a></li>
				    <li><a href="?replace=yangcheon">양천구</a></li>
				    <li><a href="?replace=youngduengpo">영등포구</a></li>
				    <li class="divider"></li>
				    <li><a href="?replace=yongsan">용산구</a></li>
				    <li><a href="?replace=eunpyung">은평구</a></li>
				    <li><a href="?replace=jongro">종로구</a></li>
				    <li><a href="?replace=joong">중구</a></li>
				    <li><a href="?replace=joongrang">중랑구</a></li>
				  </ul>
			</div>
		    <div class="input-group">
			      <input type="text" class="form-control" placeholder="병원 이름으로 검색"/>
			      <span class="input-group-btn">
			        <button class="btn btn-primary" type="button"> 검색 </button>
			      </span>
		    </div>
		    <div class="btn-group btngroup" id="searchtoggle">
				  <a class="btn btn-default" href="<c:url value='/general/hospital/SelectSubject.do'/>" role="button"> 병원검색 </a>
			  	  <a class="btn btn-default" href="<c:url value='/general/pharm/pharmMap.do'/>" role="button"> 약국검색 </a>
			</div>
		</form>
	</div>
		
		<br/>
		
<div class="row">
	<div id="map"></div>
</div>	

		
	<!-- FOOTER 영역 -->
<!-- 	<div class="footer"> -->
<%-- 		<jsp:include page="/WEB-INF/template/Footer.jsp" /> --%>
<!-- 	</div> -->


	<!-- KAKAO MAP API -->
	<script>
	// 병원 데이터 예
	var datas = [
		"서울특별시 광진구 능동로 415, 참존빌딩 3층 (중곡동)",
		"서울특별시 광진구 동일로 74 (자양동)",
		"서울특별시 강동구 상암로11길 5, 2층 (암사동)",
		"서울특별시 동작구 상도로 146 (상도동)",
		"서울특별시 강동구 천호대로 1087, 2층 201호 (천호동, 진넥스빌Ⅲ)",
		"서울특별시 동대문구 서울시립대로 42, (전농동)",
		"서울특별시 동대문구 무학로26길 5, 1층 (용두동)",
		"서울특별시 동대문구 망우로 78 (휘경동) 1층",
		"서울특별시 동대문구 망우로 77, 1층 (휘경동)",
		"서울특별시 동대문구 답십리로 252 (장안동) 1층",
		"서울특별시 동작구 동작대로25길 39, (사당동)",
		"서울특별시 강서구 등촌로13길 31, (화곡동)",
		"서울특별시 영등포구 디지털로37길 20 (대림동)",
		"서울특별시 영등포구 도림로41길 20",
		"서울특별시 영등포구 도림로38길 4, (대림동)",
		"서울특별시 성북구 보문로34길 59, 1층(동선동1가)",
		"서울특별시 성북구 동소문로20길 43 (동선동1가)",
		"서울특별시 성북구 동소문로20가길 51 (동선동1가)",
		"서울특별시 성북구 동소문로 321 (길음동)",
		"서울특별시 중구 동호로11길 43",
		"서울특별시 중구 동호로 171, (신당동)",
		"서울특별시 성북구 돌곶이로22길 49, (석관동)",
		"서울특별시 중구 다산로 215, 경북여인숙 1층 (신당동)",
		"서울특별시 도봉구 우이천로4길 32, 1층 (창동)",
		"서울특별시 동대문구 고산자로 410, 1층 (용두동)",
		"서울특별시 송파구 거마로 60, 1층(마천동)"
	];
	
	
	// [지도 생성]
	var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
		center : new daum.maps.LatLng(37.557335, 126.997985), // 지도의 중심좌표
		level : 9 // 지도의 확대 레벨
	});

	// [마커 클러스터러를 생성]
	// 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경
	// 데이터에서 좌표 값을 가지고 마커를 표시
	// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않음
	var clusterer = new daum.maps.MarkerClusterer({
		map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
		averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
		minLevel : 6, // 클러스터 할 최소 지도 레벨
		disableClickZoom : true
	// 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
	});
	
	var count = 0; // 콜백함수 관련 변수
	var posArray = []; // 좌표객체 저장할 배열 선언
	
	var geocoder = new daum.maps.services.Geocoder(); // 주소 => 좌표 변환 변수 선언
	
	datas.forEach(function(addr, index) {
		
	    geocoder.addressSearch(addr, function(result, status) {
	    	
	        if (status === daum.maps.services.Status.OK) {
	        	
	            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	            posArray.push(coords);
	            console.log("posArray[count]",posArray[count])
	            count++;
				
	            // 콜벡함수 (geocoder.addressSearch()) 호출 횟수와 병원 수가 일치되었을 때 다음 코드로 진행되게끔 처리
	            // 그렇지 않을 경우 아래쪽 코드가 먼저 실행되어 오류 발생
	            if(count === datas.length) {
					doNext(posArray);            	
	            }
	         	
	        } 
	    });
	});
	
	var imageSrc = '<c:url value="/Images/MakerHospital.png"/>', // 마커이미지의 주소입니다    
	imageSize = new daum.maps.Size(55, 60); // 마커이미지의 크기입니다
  
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
	
	function doNext(posArray) {
		
		var markers = [];
		for(var i = 0; i < posArray.length; i++) {
			
			console.log("posArray[i]",posArray[i]);
			  // 마커 생성
			  markers[i] = new daum.maps.Marker({
	                map: map,
	                image: markerImage,
	                position: posArray[i]
	           });
			 
			  console.log("markers[i]", markers[i]);
			 
		}
		clusterer.addMarkers(markers); // 클러스터러에 마커들을 추가
		
		console.log("clusterer")
		console.log("markers", markers);
		
		// 마커 클러스터러에 클릭이벤트를 등록
		// 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
		daum.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
			
			// 현재 지도 레벨에서 1레벨 확대한 레벨
			var level = map.getLevel() - 1;

			// 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
			map.setLevel(level, {
				anchor : cluster.getCenter()
			});

		});
		
		// [커스텀 오버레이]
		var customOverlay = [];
		for (var i = 0; i < posArray.length; i++) {
			
			customOverlay[i] = new daum.maps.CustomOverlay({
				position : posArray[i]
			});

			daum.maps.event.addListener(markers[i], 'click', openOverlayListener(map, markers[i]));

		}
		
		daum.maps.event.addListener(map,'rightclick',function() {
			for(var i = 0; i < customOverlay.length; i++) {
				if(customOverlay[i].getMap() != null) {
					customOverlay[i].setMap(null);
				}
			}
		});
		
		function openOverlayListener(map, marker) {

			return function() {

				for (var i = 0; i < posArray.length; i++) {
					
					// 클릭한 마커의 위치정보와 저장된 마커의 위치정보를 비교하여 클릭한 마커에 해당하는 정보를 가져온다.
					if (marker.getPosition().getLat() == markers[i].getPosition().getLat()) {

							var content =
								'<div class="wrap">' + 
					            '    <div class="info">' + 
					            '        <div class="title"> 병원 이름이 들어갑니다 </div>' + 
					            '        <div class="body">' + 
					            '            <div class="img">' +
					            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
					            '            </div>' + 
					            '            <div class="desc">' + 
					            '                <div class="smalltitle"> [주소] </div>' + 
					            '                <div class="ellipsis"> 서울특별시 광진구 능동로 415 </div>' +
					            '                <div class="ellipsis"> 참존빌딩 3층 (중곡동) </div>' + 
					            '                <div class="smalltitle"> [전화번호] </div>' + 
					            '                <div class="ellipsis"> 02-1234-5678 </div>' + 
					            '                <div class="smalltitle"> [진료시간] </div>' + 
					            '                <table class="schedule">' + 
					            '                	<tr>' + 
					            '                		<td> 월요일: 9:00 ~ 18:00 </td> <td> 화요일: 9:00 ~ 18:00</td>' + 
					            '              	    </tr>' + 
					            '                   <tr>' + 
					            '                		<td> 수요일: 9:00 ~ 18:00 </td> <td> 목요일: 9:00 ~ 18:00</td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 금요일: 9:00 ~ 18:00 </td> <td> 토요일: 10:00 ~ 14:00</td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 일요일: 휴무 </td> <td> 공휴일: 휴무 </td>' + 
					            '                	</tr>' + 
					            '                </table><br/><hr/><br/>' + 
					            '                <div class="btn-group">' + 
						        '	                 <a class="btn btn-primary btn-sm" href="'+'<c:url value="/general/reservation/reception.do"/>'+'" role="button"> 접수하기 </a>' + 
					            '            	 </div>' + 
					            '                <div class="btn-group">' + 
						        '	                 <a class="btn btn-primary btn-sm" href="'+'<c:url value="/general/reservation/reservation.do"/>'+'" role="button"> 예약하기 </a>' + 
					            '            	 </div>' + 
					            '                <div class="btn-group">' + 
						        '	                 <a class="btn btn-primary btn-sm" href="http://map.daum.net/link/to/카카오판교오피스,37.402056,127.108212" role="button"> 길찾기 </a>' + 
					            '            	 </div>' + 
					            '            </div>' + 
					            '        </div>' + 
					            '    </div>' +    
					            '</div>';
				           
				            if(customOverlay[i].getMap() == null) {
				            	customOverlay[i].setContent(content);
								customOverlay[i].setMap(map);
				            } else {
				            	customOverlay[i].setMap(null);
				            }
				            
						} else {
							customOverlay[i].setMap(null);
						}
					}
				}
			};
		}
		
	</script>

<!-- </body> -->
<!-- </html> -->