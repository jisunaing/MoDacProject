<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <head> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>병원</title>

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>

<style>
.row {
	margin-top:10px;
}
/* 병원이름 form 넓이 */
.input-group {
	width:600px;
}


#searchtoggle {
	float: right;
}

/* 지도 */
#map {
	width:auto;
	height:680px;
}


/* 커스텀 오버레이 */
.wrap {position: absolute;left: 0;bottom: 57px;width: 388px;height: 347px;margin-left: -194px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 386px;height: 335px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 2px 2px 10px;height: 40px;color: #fff;background: #00498c;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold; text-align:center;}
.info .body {position: relative; overflow: hidden;}
.info .desc {overflow: auto; text-overflow: ellipsis; position: relative; margin: 13px 0 0 110px; height: 300px;}
.smalltitle {font-weight: bold; color:#00498c;}
.schedule {width:100%; text-align:left}
.desc .ellipsis {white-space: nowrap;}
.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 66px;border: 1px solid #ddd;color: #888;overflow: hidden;}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>

<!-- BODY 영역 -->
<div id="dv" style="padding-top:10px">
	<div class="row" >
		<form class="form-inline" action="<c:url value='/general/hospital/SearchSubject.do'/>">
		  <div class="btn-group">
			  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    	진료과목으로 검색 &nbsp;&nbsp; <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=가정의학과'/>">가정의학과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=결핵과'/>">결핵과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=내과'/>">내과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=마취통증의학과'/>">마취통증의학과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=비뇨의학과'/>">비뇨의학과</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=산부인과'/>">산부인과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=성형외과'/>">성형외과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=소아청소년과'/>">소아청소년과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=신경외과'/>">신경외과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=안과'/>">안과</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=영상의학과'/>">영상의학과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=외과'/>">외과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=이비인후과'/>">이비인후과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=재활의학과'/>">재활의학과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=정신건강의학과'/>">정신건강의학과</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=정형외과'/>">정형외과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=치과'/>">치과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=피부과'/>">피부과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=한방과'/>">한방과</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?subname=흉부외과'/>">흉부외과</a></li>
			  </ul>
		</div>
		<div class="btn-group">
			  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			     	지역으로 검색 &nbsp;&nbsp; <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu" aria-labelledby="dLabel">
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=강남구&subname=${requestScope.subname}'/>">강남구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=강동구&subname=${requestScope.subname}'/>">강동구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=강북구&subname=${requestScope.subname}'/>">강북구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=강서구&subname=${requestScope.subname}'/>">강서구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=관악구&subname=${requestScope.subname}'/>">관악구</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=광진구&subname=${requestScope.subname}'/>">광진구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=구로구&subname=${requestScope.subname}'/>">구로구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=금천구&subname=${requestScope.subname}'/>">금천구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=노원구&subname=${requestScope.subname}'/>">노원구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=도봉구&subname=${requestScope.subname}'/>">도봉구</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=동대문구&subname=${requestScope.subname}'/>">동대문구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=동작구&subname=${requestScope.subname}'/>">동작구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=마포구&subname=${requestScope.subname}'/>">마포구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=서대문구&subname=${requestScope.subname}'/>">서대문구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=서초구&subname=${requestScope.subname}'/>">서초구</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=성동구&subname=${requestScope.subname}'/>">성동구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=성북구&subname=${requestScope.subname}'/>">성북구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=송파구&subname=${requestScope.subname}'/>">송파구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=양천구&subname=${requestScope.subname}'/>">양천구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=영등포구&subname=${requestScope.subname}'/>">영등포구</a></li>
			    <li class="divider"></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=용산구&subname=${requestScope.subname}'/>">용산구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=은평구&subname=${requestScope.subname}'/>">은평구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=종로구&subname=${requestScope.subname}'/>">종로구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=중구&subname=${requestScope.subname}'/>">중구</a></li>
			    <li><a href="<c:url value='/general/hospital/SearchSubject.do?address=중랑구&subname=${requestScope.subname}'/>">중랑구</a></li>
			  </ul>
		</div>
		<div class="btn-group">
			  <a class="btn btn-primary" href="<c:url value='/general/hospital/SearchSubject.do?subname=${requestScope.subname}&partner=1'/>" role="button"> 제휴병원만 조회 </a>
		</div>
	    <div class="input-group">
		      <input type="text" class="form-control" name="hosname" placeholder="병원 이름으로 검색"/>
		      <input type="hidden" class="form-control" name="subjectname" value='${requestScope.subname}'/>
		      <span class="input-group-btn">
		        <button class="btn btn-primary" type="submit">검색 </button>
		      </span>
	    </div>
	    <div class="btn-group btngroup" id="searchtoggle">
			  <a class="btn btn-default" href="<c:url value='/general/hospital/SelectSubject.do'/>" role="button"> 병원검색 </a>
		  	  <a class="btn btn-default" href="<c:url value='/general/pharm/AllPharm.do?address=강남구'/>" role="button"> 약국검색 </a>
		</div>
	</form>
</div>

<div class="row">
	<h4># 검색 키워드 : ${requestScope.partner} ${requestScope.subname} ${requestScope.address} ${requestScope.hosname} </h4>
</div>
	
<div class="row">
	<div id="map"></div>
</div>

<!-- 모달 창 -->
<div class="modal fade" id="reservation">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<!-- 모달닫기:data-dismiss="modal" -->
				<button class="close" data-dismiss="modal" >
					<span aria-hidden="true">&times;</span>
				</button>
				<h3>병원 예약하기</h3>
			</div>
			<div class="modal-body">
				<h4>병원 예약을 하기 위해선 반드시 "로그인"이 필요합니다.</h4>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger" data-dismiss="modal"> 닫기 </button>
			</div>
		</div>
	</div>	
</div>
<!-- 모달 창 -->
<div class="modal fade" id="reception">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<!-- 모달닫기:data-dismiss="modal" -->
				<button class="close" data-dismiss="modal" >
					<span aria-hidden="true">&times;</span>
				</button>
				<h3>병원 접수하기</h3>
			</div>
			<div class="modal-body">
				<h4>병원 접수를 하기 위해선 반드시 "로그인"이 필요합니다.</h4>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" data-dismiss="modal"> 닫기 </button>
			</div>
		</div>
	</div>	
</div>
</div>

<!-- KAKAO MAP API -->
<script>

function wrapWindowByMask() {
	
    var maskHeight = $(document).height(); 
    var maskWidth = window.document.body.clientWidth;
     
    var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg = '';
     
    loadingImg += "<div id='loadingImg' style='position:absolute; left:45%; top:60%; display:none; z-index:10000;'>";
    loadingImg += "<img src='/MoDacProject/Images/loading.gif'/>";
    loadingImg += "<h4 style='color:#ffffff'>데이터를 불러오는 중입니다.</h4>";
    loadingImg += "</div>";  
 
    //화면에 레이어 추가
    $('body').append(mask).append(loadingImg)
       
    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $('#mask').css({
            'width' : maskWidth,
            'height': maskHeight,
            'opacity' : '0.3'	
    }); 
 
    //마스크 표시
    $('#mask').show();   
 
    //로딩중 이미지 표시
    $('#loadingImg').show();
}

wrapWindowByMask();

function closeWindowByMask() {
    $('#mask, #loadingImg').hide();
    $('#mask, #loadingImg').remove();  
}



var reserve = function(no, pid) {
	if('${sessionScope.genid}' == '') {
		$('#reservation').modal('show');
	} else {
		location.href="<c:url value='/general/reservation/reservation.do?hosno="+no+"&pid="+pid+"&subname=${requestScope.subname}'/>";
	}
};
var reception = function(no, pid) {
	if('${sessionScope.genid}' == '') {
		$('#reception').modal('show');
	} else {
		location.href="<c:url value='/general/reservation/reception.do?hosno="+no+"&pid="+pid+"&subname=${requestScope.subname}'/>";
	}
};


//[컨트롤러로 부터 데이터 받아 세팅]
var datas = JSON.parse('${records}');
var editDatas = [];

var addrs = [];
for(var i = 0; i < datas.length; i++) {
	addrs[i] = datas[i]['addr'];
}


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
	minLevel : 5, // 클러스터 할 최소 지도 레벨
	disableClickZoom : true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
});

var dataIndex = 0;
var posArray = []; // 좌표객체 저장할 배열 선언
var geocoder = new daum.maps.services.Geocoder(); // 주소 => 좌표 변환 변수 선언

$.each(addrs,function(index,value){
	geocoder.addressSearch(value, function(result, status) {
    	
        if(status === daum.maps.services.Status.OK) {
            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
            editDatas[dataIndex] = datas[index];
            posArray[dataIndex] = coords;
            dataIndex++;
        }  
        
        if(index == addrs.length-1){
        	doNext(posArray);
        }
    });
})

if(datas.length == 0) {
	closeWindowByMask();
}

function doNext(posArray) {
	
	var markers = [];
	
	for(var i = 0; i < posArray.length; i++) {
		
		var imageSrc;
		if(editDatas[i]['pid'] == null) {
			imageSrc = '<c:url value="/Images/MarkerHospital.png"/>'; // 마커이미지의 주소입니다    
		} else {
			imageSrc = '<c:url value="/Images/MarkerPartner.png"/>';
		}
		
		var imageSize = new daum.maps.Size(55, 60); // 마커이미지의 크기입니다
		var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		
	    // 마커 생성
	    markers[i] = new daum.maps.Marker({
               map: map,
               image: markerImage,
               position: posArray[i],
               zIndex: editDatas[i]['no']
        });
		 
	}
	clusterer.addMarkers(markers); // 클러스터러에 마커들을 추가
	
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
				if (marker.getZIndex() === markers[i].getZIndex()) {
						
						// 마커를 클릭했을 때 마커가 지도 중심부로 향하도록 설정
						map.setCenter(marker.getPosition());
						var xPos = marker.getPosition().getLat();
						var yPos = marker.getPosition().getLng();
						var northXpos = map.getBounds().getNorthEast().getLat();
						var editxPos = xPos + (northXpos-xPos)/2;
						map.setCenter(new daum.maps.LatLng(editxPos, yPos));
						
						var name = editDatas[i]['name'];
						var addr = editDatas[i]['addr'];
						var phone = editDatas[i]['phone'];
						var mon = editDatas[i]['mon'];
						var tue = editDatas[i]['tue'];
						var wed = editDatas[i]['wed'];
						var thu = editDatas[i]['thu'];
						var fri = editDatas[i]['fri'];
						var sat = editDatas[i]['sat'];
						var sun = editDatas[i]['sun'];
						var holiday = editDatas[i]['holiday'];
						var pid = editDatas[i]['pid'];
						var no = editDatas[i]['no'];
						var website = editDatas[i]['website'];
						
						console.log(pid);
						console.log(website);
						
						var content = '';
						
						if(pid == null) { // 일반 병원인 경우
							content =
								'<div class="wrap">' + 
					            '    <div class="info">' + 
					            '        <div class="title"> '+name+' </div>' + 
					            '        <div class="body">' + 
					            '            <div class="img">' +
					            '                <img src="'+'<c:url value="/Images/BasicHospital.png"/>'+'" width="70" height="70">' +
					            '            </div>' + 
					            '            <div class="desc">' + 
					            '                <div class="smalltitle"> [주소] </div>' + 
					            '                <div class="ellipsis"> '+addr+' </div><br/>' +
					            '                <div class="smalltitle"> [전화번호] </div>' + 
					            '                <div class="ellipsis"> '+phone+' </div><br/>' + 
					            '                <div class="smalltitle"> [진료시간] </div>' + 
					            '                <table class="schedule">' + 
					            '                	<tr>' + 
					            '                		<td> 월요일: '+mon+' </td> <td> 화요일: '+tue+' </td>' + 
					            '              	    </tr>' + 
					            '                   <tr>' + 
					            '                		<td> 수요일: '+wed+' </td> <td> 목요일: '+thu+' </td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 금요일: '+fri+' </td> <td> 토요일: '+sat+'</td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 일요일: '+sun+' </td> <td> 공휴일: '+holiday+' </td>' + 
					            '                	</tr>' + 
					            '                </table><br/><hr/><br/>' + 
					            '                <div class="btn-group">' + 
						        '	                 <a class="btn btn-primary btn-sm" href="http://map.daum.net/link/to/'+name+','+xPos+','+yPos+'"> 길찾기 </a>' + 
					            '            	 </div>' + 
					            '            </div>' + 
					            '        </div>' + 
					            '    </div>' +    
					            '</div>';
						} else { // 제휴 병원인 경우
							content =
								'<div class="wrap">' + 
					            '    <div class="info">' + 
					            '        <div class="title"> '+name+' </div>' + 
					            '        <div class="body">' + 
					            '            <div class="img">' +
					            '                <img src="'+'<c:url value="/Images/BasicHospital.png"/>'+'" width="70" height="70">' +
					            '            </div>' + 
					            '            <div class="desc">' + 
					            '                <div class="smalltitle"> [주소] </div>' + 
					            '                <div class="ellipsis"> '+addr+' </div>' +
					            '                <div class="smalltitle"> [전화번호] </div>' + 
					            '                <div class="ellipsis"> '+phone+' </div>' + 
					            '                <div class="smalltitle"> [홈페이지] </div>' + 
					            '                <div class="ellipsis"> <a href="'+website+'"/>'+website+'</a> </div>' + 
					            '                <div class="smalltitle"> [진료시간] </div>' + 
					            '                <table class="schedule">' + 
					            '                	<tr>' + 
					            '                		<td> 월요일: '+mon+' </td> <td> 화요일: '+tue+' </td>' + 
					            '              	    </tr>' + 
					            '                   <tr>' + 
					            '                		<td> 수요일: '+wed+' </td> <td> 목요일: '+thu+' </td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 금요일: '+fri+' </td> <td> 토요일: '+sat+'</td>' + 
					            '                	</tr>' + 
					            '                   <tr>' + 
					            '                		<td> 일요일: '+sun+' </td> <td> 공휴일: '+holiday+' </td>' + 
					            '                	</tr>' + 
					            '                </table><br/><hr/><br/>' + 
					            '                <div class="btn-group">' + 
					            ' 				 	<a class="btn btn-primary btn-sm" href="javascript:reserve('+no+',\''+pid+'\')"> 예약하기 </a>' +
					            '            	 </div>' + 
					            '                <div class="btn-group">' + 
					            ' 				 	<a class="btn btn-primary btn-sm" href="javascript:reception('+no+',\''+pid+'\')"> 접수하기 </a>' +
					            '            	 </div>' +
					            '                <div class="btn-group">' + 
						        '	                 <a class="btn btn-primary btn-sm" href="http://map.daum.net/link/to/'+name+','+xPos+','+yPos+'"> 길찾기 </a>' + 
					            '            	 </div>' + 
					            '            </div>' + 
					            '        </div>' + 
					            '    </div>' +    
					            '</div>';
						}
							 
			            if(customOverlay[i].getMap() == null) {
			            	customOverlay[i].setContent(content);
			            	customOverlay[i].setZIndex(999999);
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
	closeWindowByMask();
}

</script>

