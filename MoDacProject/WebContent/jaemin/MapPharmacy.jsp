<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>MapPharmacy.jsp</title>

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>


<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<style>
.footer {
	background-color: #32323C;
}
/* 버튼과 폼 관련 */
.row1 {
	margin-top:10px;
	padding-left:120px; 
}
/* 병원이름 form 넓이 */
.input-group {
	width:600px;
}

#searchtoggle {
	margin-left:10px;
}
/* 지도 CSS */
#map {
	width:auto;
	height:750px;
	margin-left:120px; 
	margin-right:120px; 
}

/* 커스텀 오버레이 관련 CSS */
.wrap {position: absolute;left: 0;bottom: 40px;width: 388px;height: 317px;margin-left: -194px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 386px;height: 305px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 2px 2px 10px;height: 40px; color:#fff; background: #00498c;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold; text-align:center;}
.info .body { position: relative; overflow: hidden;}
.info .desc {overflow: auto; text-overflow: ellipsis; position: relative; margin: 13px 0 0 90px; height: 250px;}
.smalltitle {font-weight: bold; color:#00498c;}
.schedule {width:100%; text-align:left}
.desc .ellipsis {white-space: nowrap;}
.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>

</head>
<body>

	<!-- TOP 영역 -->
	<div class="topMenu" >
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	
	<!-- BODY 영역 -->
	<div class="row1">
		<form class="form-inline">
		<div class="btn-group">
		  <a class="btn btn-default" href="?pharmacyoption=simya" role="button"> 심야약국 </a>
		</div>
		<div class="btn-group">
		  <a class="btn btn-default" href="?pharmacyoption=ilban" role="button"> 일반약국 </a>
		</div>
	    <div class="input-group">
	      <input type="text" class="form-control" placeholder="약국 이름으로 검색"/>
	      <span class="input-group-btn">
	        <button class="btn btn-primary" type="button"> 검색 </button>
	      </span>
	    </div>
	    <div class="btn-group" id="searchtoggle">
		  <a class="btn btn-default" href="#" role="button"> 병원검색 </a>
		  <a class="btn btn-default" href="#" role="button"> 약국검색 </a>
		</div>
		</form>
		
	</div>
	<br/>
	<div class="row2">
		<div id="map"></div>
	</div>	
		
	<!--footer -->
	<div class="footer">
		<jsp:include page="/WEB-INF/template/Footer.jsp" />
	</div>


	<!-- KAKAO MAP API -->
	<script>
		// 약국 데이터 예
		var datas = [
		"서울특별시 광진구 능동로 415, 참존빌딩 3층 (중곡동)",
		"서울특별시 광진구 동일로 74 (자양동)",
		"서울특별시 강동구 상암로11길 5, 2층 (암사동)",
		"서울특별시 동작구 상도로 146 (상도동)",
		"서울특별시 강동구 천호대로 1087, 2층 201호 (천호동, 진넥스빌Ⅲ)"
		];
		
		
		// [지도 생성]
		var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
			center : new daum.maps.LatLng(37.558309, 126.925512), // 지도의 중심좌표
			level : 9 // 지도의 확대 레벨
		});

		// 마커 클러스터러를 생성합니다
		// 마커 클러스터러를 생성할 때 disableClickZoom 값을 true로 지정하지 않은 경우
		// 클러스터 마커를 클릭했을 때 클러스터 객체가 포함하는 마커들이 모두 잘 보이도록 지도의 레벨과 영역을 변경합니다
		// 이 예제에서는 disableClickZoom 값을 true로 설정하여 기본 클릭 동작을 막고
		// 클러스터 마커를 클릭했을 때 클릭된 클러스터 마커의 위치를 기준으로 지도를 1레벨씩 확대합니다
		// 데이터에서 좌표 값을 가지고 마커를 표시합니다
		// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다.

		var clusterer = new daum.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
			minLevel : 10, // 클러스터 할 최소 지도 레벨
			disableClickZoom : true
		// 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
		});
		
		var count = 0;
		var posArray = [];
		
		var geocoder = new daum.maps.services.Geocoder();
		
		datas.forEach(function(addr, index) {
			
		    geocoder.addressSearch(addr, function(result, status) {
		    	
		        if (status === daum.maps.services.Status.OK) {
		        	
		            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		            posArray.push(coords);
		            console.log("posArray[count]",posArray[count])
		            count++;
		            
		            if(count === datas.length) {
						doNext(posArray);            	
		            }
		         	
		        } 
		    });
		});
		
		function doNext(posArray) {
			
			var markers = [];
			for(var i = 0; i < posArray.length; i++) {
				
				console.log("posArray[i]",posArray[i]);
				
				  markers[i] = new daum.maps.Marker({
		                map: map,
		                position: posArray[i]
		           });
				 
				  console.log("markers[i]", markers[i]);
				  
				 // 클러스터러에 마커들을 추가
			}
			clusterer.addMarkers(markers); 
			
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
			
			console.log("customOverlay:",customOverlay);
			
			function openOverlayListener(map, marker) {

				console.log('openOverlayListener()');

				return function() {

					for (var i = 0; i < posArray.length; i++) {

						if (marker.getPosition().getLat() == markers[i].getPosition().getLat()) {

							console.log('리스너 함수 if문');
							
							var content =
							'<div class="wrap">' + 
				            '    <div class="info">' + 
				            '        <div class="title"> 약국 이름이 들어갑니다 </div>' + 
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
				            '                		<td> 일요일: 휴무 </td> <td> 공휴일: 휴무</td>' + 
				            '                	</tr>' + 
				            '                </table><br/><hr/><br/>' + 
				            '                <div class="btn-group">' + 
					        '	                 <a class="btn btn-primary btn-sm" href="http://map.daum.net/link/to/카카오판교오피스,37.402056,127.108212" role="button"> 길찾기 </a>' + 
				            '            	 </div>' + 
				            '            </div>' + 
				            '        </div>' + 
				            '    </div>' +    
				            '</div>';
				            
				            console.log(i+'////'+customOverlay[i].getMap());
				            
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

</body>
</html>