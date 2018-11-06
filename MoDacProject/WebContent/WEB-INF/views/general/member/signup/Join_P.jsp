<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<link href="<c:url value='/css/jumbo.css'/>" rel="stylesheet">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>
<script>

	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	//document.domain = "abc.go.kr";  /popup/jusoPopup.jsp
	
	function goPopup(){
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		
		var pop = window.open("<c:url value='/jusoPopup/jusoPopup.jsp'/>","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
		//var pop = window.open("/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo){
		
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			document.partnerjoin.hosaddr.value = roadAddrPart1;		
			document.partnerjoin.addrDetail.value = addrDetail;		
			document.partnerjoin.zipNo.value = zipNo;
			
			var geocoder = new daum.maps.services.Geocoder();
	        
	        geocoder.addressSearch(roadAddrPart1+" "+addrDetail, function(result, status) {
	           
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
			
	}
	
	

	$(function() {	
		
		 $('#hosaddr').keyup(function(){
				
	        var geocoder = new daum.maps.services.Geocoder();
	        var hosaddr = document.getElementById('hosaddr').value;
	        var addrDetail = document.getElementById('addrDetail').value;
	        var address = hosaddr+' '+addrDetail;
	        
	        console.log(address);
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
		 $('#addrDetail').keyup(function(){
				
	        var geocoder = new daum.maps.services.Geocoder();
	        var hosaddr = document.getElementById('hosaddr').value;
	        var addrDetail = document.getElementById('addrDetail').value;
	        var address = hosaddr+' '+addrDetail;
	        
	        console.log(address);
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
		
		
		 $( "#selectable" ).selectable();
		
		 var nujeok= "";
		
			
		 $('#selectable li').click(function(){
			 
			 var change = "";
	
			 
			console.log($(this).html()); //선택한 진료과목의 값을 가져옴
			
			nujeok += $(this).html()+",";
			
			change = nujeok.substring(0,nujeok.lastIndexOf(','));
	
			$(this).hide(1000);
			
				 
	
		 $('#subjectlist').attr('value',change);
		 
		 
		});
		 
	
	 
	
	 
		$('#partnerjoin').validate({
			
			rules:{
				pid : "required",
				
				hpwd : {required : true, minlength : 5 },
				
				hpwd2 : {required : true, minlength : 5, equalTo : '#hpwd'},
				
				hosname : {required : true},
				
				subjectlist : 'required',
				
				hosmanager : 'required',
				
				pphone : {required : true, maxlength : 11 },
				
				pemail : 'required',
				
				hosaddr : 'required',
				
				businessnum : {required : true, maxlength : 10 }
				
				
			},
			
			messages:{
				
				pid : {required : '* 아이디를 입력 해주세요'},
				
				hpwd : {required : '* 비밀번호를  입력 해주세요', minlength : '비밀번호는 최소 5자 이상 입력'},
				
				hpwd2 : {required : '* 비밀번호를  입력 해주세요', minlength : '비밀번호는 최소 5자 이상 입력', equalTo : '비밀번호는 일치해야 합니다'},
				
				hosname : {required : '* 병원 주소를 입력 해주세요'},
				
				subjectlist : {required : '* 진료과목 선택하기를 클릭 해주세요'},
				
				hosmanager : {required : '* 담당자 이름을 입력 해주세요'},
				
				pphone : {required : ' * - 를 빼고 입력해주세요', maxlength : "핸드폰 번혼느 최대 11자 입니다"},
				
				pemail : {required : ' *이메일을 입력 해주세요'},
				
				hosaddr : {required : ' *주소를 입력 해주세요'},
				
				businessnum : {required : ' * 사업자번호를 입력해주세요', maxlength : "사업자번호는 10자리 입니다" }

				
			},
			
			
			
		});
	 
	
	
	 
	 
	 
});///최상위

</script>

<style>


	.testbtn{ margin-left: 15px; }
	
	#selectable li:hover{background: #74D36D;}

	#selectable .ui-selecting { background: #74D36D; }

    #selectable .ui-selected { background: #74D36D; color: white; }

    #selectable { list-style-type: none; margin: 0; padding: 0; width: 450px; }

    #selectable li { margin: 5px 5px 5px 5px; padding: 13px; float: left; width: 100px; height: 50px; 
    
    font-size: 1em; text-align: center; border: 1px solid black; border-radius: 10px; }
    
    .modal-footer{margin-top: 290px; }

    h1{
    margin: 5px 0px 45px 0px;
    }
 
</style>

  	
  </head>
  <body>
  	<div class="jumbotron jumbotron-billboard" style="height: 500px;">
	  <div class="img">
	  	<img style="opacity: 100" src="<c:url value='/Images/plasticheart.jpg'/>" />
	  </div>
	</div>
  	<div class="container" id="dv">
			<div class="row">
				<div class="col-md-12">
				 <h1>제휴 문의<small> 병원 제휴</small></h1>
					
					<form  id="partnerjoin" name="partnerjoin" class="form-horizontal" method="post" action="<c:url value='/partner/member/singup/joinrequest.do'/>" >
				
						  <div class="form-group">
						  
						   <label for="pid" class="col-sm-2  control-label">아이디</label>
						   	<div class="col-sm-3">
						      <input type="text" class="form-control" name="pid" id="pid" placeholder="아이디를 입력하세요" >
						    </div>
						  </div>
						 
						 
						  <div class="form-group">
						    <label for="hpwd" class="col-sm-2  control-label">비밀번호</label>
						    <div class="col-sm-3">
						    	<input type="password" placeholder="비밀번호를 입력하세요" class="form-control"  id="hpwd" name="hpwd">						    	
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="hpwd2" class="col-sm-2  control-label">비밀번호 확인</label>
						    <div class="col-sm-3">
						    	<input type="password" placeholder="비밀번호를 입력하세요" class="form-control"  id="hpwd2" name="hpwd2">						    	
						    </div>
						  </div>
						   
						  <hr/>	
						  
						  <div class="form-group">
						    <label for="hosname" class="col-sm-2  control-label">병원 명</label>
						   	<div class="col-sm-3">
						      <input type="text" class="form-control" name="hosname" id="hosname" placeholder="병원 명을 입력하세요">
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="pname" class="col-sm-2  control-label">진료 과목 </label>
						<div>
							<button type="button" class="btn btn-primary testbtn" data-toggle="modal" data-target="#basicModal" > 진료 과목 선택하기 </button>
							</div>
							
							<div class="col-sm-offset-2 col-sm-7">							
							<label for="subjectlist" class="control-label">선택한 진료 과목</label>																				 							 
							 <input style="margin-top: 1px;" type="text" class="form-control" name="subjectlist" id="subjectlist"  >							 
							</div>
							
							<!-- 모달 창 -->
							<div class="modal fade" id="basicModal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<!-- 모달닫기:data-dismiss="modal" -->
											<button class="close" data-dismiss="modal">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">진료하시는 과목을 선택해 주세요 </h4>
										</div>
										<div class="modal-body" style="padding-left: 77px;">
											
												
											<ul id="selectable">
											
												  <li class="ui-state-default" value="1" >가정의학과</li>												  
												
												  <li class="ui-state-default" value="2">결핵과</li>
												
												  <li class="ui-state-default" value="3">내과</li>
												
												  <li class="ui-state-default" value="4" >마취통증의학과</li> 
												
												  <li class="ui-state-default" value="5">비뇨의학과</li>
												
												  <li class="ui-state-default" value="6">산부인과</li>
												
												  <li class="ui-state-default" value="7">성형외과</li>
												
												  <li class="ui-state-default" value="8">소아청소년과</li>
												  
												  <li class="ui-state-default" value="9">신경외과</li>
												  
												  <li class="ui-state-default" value="10">안과</li>
												  
												  <li class="ui-state-default" value="11">영상의학과</li>
												
												  <li class="ui-state-default" value="12">외과</li>
												
												  <li class="ui-state-default" value="13">이비인후과</li>
												
												  <li class="ui-state-default" value="14">재활의학과</li>
												
												  <li class="ui-state-default" value="15">정신건강의학과</li>
												  
												  <li class="ui-state-default" value="16">정형외과</li>
												  
												  <li class="ui-state-default" value="17">치과</li>
												  
												  <li class="ui-state-default" value="18">피부과</li>
												  
												  <li class="ui-state-default" value="19">한방과</li>
												  
												  <li class="ui-state-default" value="20">흉부외과</li>																								
											</ul>
										</div>
										<div class="modal-footer">
											<button class="btn btn-primary modal_close" data-dismiss="modal">닫기</button>
										</div>
									</div>
								</div>
							</div>

						</div> <!-- 진료과목 그릅 끝  -->
							
						  	<hr/>			  
						  <div class="form-group">
						    <label for="hosmanager" class="col-sm-2  control-label">담당자 이름</label>
						   	<div class="col-sm-2">
						      <input type="text" class="form-control " name="hosmanager" id="hosmanager" placeholder="이름을 입력하세요">
						    </div>
						    
						    <label for="hosphone" class="col-sm-pull-1 col-sm-2  control-label">연락처</label>
							<div class="col-sm-2 col-sm-pull-1">
								<input type="text" class=" form-control" name="pphone" id="pphone" placeholder="연락처를 입력하세요">
								<input type="hidden" class=" form-control" name="hosphone" id="hosphone" value="02-123-4567">
							</div>
						  </div>
						  
						  
						<div class="form-group">
							<label for="pemail" class="col-sm-2  control-label">담당자 이메일 </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="pemail" id="pemail" placeholder="이메일을 입력해주세요">
							</div>
						</div>

					
						
						 
						<div class="form-group">
							<label for="zipNo" class="col-sm-2  control-label">우편 번호</label>
							<div class="col-sm-1">
								<input type="text" class="form-control" name="zipNo" id="zipNo" disabled>
							</div>
						</div>

						<div class="form-group">
							<label for="hosaddr" class="col-sm-2 control-label">주 소</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="hosaddr" id="hosaddr" placeholder="주소를 검색해주세요" >
								<input type="hidden" name="lat" id="lat"/>
            					<input type="hidden" name="lng" id="lng"/>
							</div>
							<button class="btn btn-outline-info float-right btn btn-primary" type="button"	onclick="goPopup()">주소 검색</button>
							<div class="col-sm-offset-2 col-sm-6">
							<label for="addrDetail" class="control-label">상세 주소</label>
							 <input style="margin-top: 3px;" type="text" class="form-control" name="addrDetail"	id="addrDetail" placeholder="상세주소를 입력해주세요" >
							 <span id="message"></span>
							</div>
						</div>
						
						<div class="form-group">
							<label for="businessnum" class="col-sm-2  control-label">사업자 번호 </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name= "businessnum" id="businessnum" placeholder="사업자 번호를 입력해주세요">
							</div>
						</div>

						<div class="form-group">
							<label for="request" class="col-sm-2  control-label">요 청 사 항</label>
							<div class="col-sm-5">
								<textarea rows="5" class="form-control" id="request" name="request"></textarea>
							</div>
						</div>


						<div class="form-group">
						    <div class="col-sm-offset-5 col-sm-7">
						      <button type="submit" class="btn btn-danger">제휴 신청</button>
						    </div>
						  </div>
						</form>  
				</div>			
			</div>
	    </div>
    	 <!-- 내용 끝 -->

  </body>
</html>