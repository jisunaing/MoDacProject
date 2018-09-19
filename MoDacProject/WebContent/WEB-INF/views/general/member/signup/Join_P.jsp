<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   	
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
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
		document.form.roadAddrPart1.value = roadAddrPart1;		
		document.form.addrDetail.value = addrDetail;		
		document.form.zipNo.value = zipNo;
		
		
}


	$(function() {	
	 $( "#selectable" ).selectable();
	
	
	 var nujeok= "";
	
		
	 $('#selectable li').click(function(){
		 
		 var change = "";

		 
		console.log($(this).html()); //선택한 진료과목의 값을 가져옴
		
		nujeok += $(this).html()+",";
		
		change = nujeok.substring(0,nujeok.lastIndexOf(','));
				
		
		
		
		$(this).hide(1000);
		
		$(this).show(1000);
		

		
	 
	 $('#jin').attr('value',change);
	 
	 
	 
	 
	 
	});	
	 
	
	
	 
	 
	 
});///최상위

</script>

<style>


	.testbtn{ margin-left: 15px; }
	
	#selectable li:hover{background: #74D36D;}

	#selectable .ui-selecting { background: #74D36D; }

    #selectable .ui-selected { background: #74D36D; color: white; }

    #selectable { list-style-type: none; margin: 0; padding: 0; width: 450px; }

    #selectable li { margin: 3px; padding: 13px; float: left; width: 100px; height: 50px; 
    
    font-size: 1em; text-align: center; border: 1px solid black; border-radius: 10px; }
    
    .modal-footer{margin-top: 290px; }
    
    h1{
    
    margin: 5px 0px 45px 0px;
    
    }
    
   
 
</style>

  	
  </head>
  <body>

  	<div class="container">
			<div class="row">
				<div class="col-md-12">
				
				 <h1>제휴 문의<small> 병원 제휴</small></h1>
					
					<form  id="form" name="form" class="form-horizontal" method="post" action="<c:url value='#'/>" >
					
					
						  <div class="form-group">
						  
						   <label for="id" class="col-sm-2  control-label">아이디</label>
						   	<div class="col-sm-3">
						      <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력하세요" >
						    </div>
						  </div>
						 
						 
						  <div class="form-group">
						    <label for="pwd" class="col-sm-2  control-label">비밀번호</label>
						    <div class="col-sm-3">
						    	<input type="password" placeholder="비밀번호를 입력하세요" class="form-control"  id="pwd" name="pwd">						    	
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="pwd" class="col-sm-2  control-label">비밀번호 확인</label>
						    <div class="col-sm-3">
						    	<input type="password" placeholder="비밀번호를 입력하세요" class="form-control"  id="pwd2" name="pwd2">						    	
						    </div>
						  </div>
						   
						  <hr/>	
						  
						  <div class="form-group">
						    <label for="pid" class="col-sm-2  control-label">병원 명</label>
						   	<div class="col-sm-3">
						      <input type="text" class="form-control" name="pid" id="pid" placeholder="병원 명을 입력하세요">
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="pname" class="col-sm-2  control-label">진료 과목 </label>
						<div>
							<button type="button" class="btn btn-primary testbtn" data-toggle="modal" data-target="#basicModal" > 진료 과목 선택하기 </button>
							</div>
							
							<div class="col-sm-offset-2 col-sm-7">							
							<label class="control-label">선택한 진료 과목</label>
								
												 							 
							 <input value="" style="margin-top: 1px;" type="text" class="form-control" name="jin" id="jin" disabled >
							 
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
										<div class="modal-body" >
											
												
											<ul id="selectable">
											
												  <li class="ui-state-default" value="1" >가정의학과</li>												  
												
												  <li class="ui-state-default" value="2">결핵과</li>
												
												  <li class="ui-state-default" value="3">내과</li>
												
												  <li class="ui-state-default" value="4" >마취통증과</li> 
												
												  <li class="ui-state-default" value="5">비뇨기과</li>
												
												  <li class="ui-state-default" value="6">산부인과</li>
												
												  <li class="ui-state-default" value="7">성형외과</li>
												
												  <li class="ui-state-default" value="8">소아과</li>
												  
												  <li class="ui-state-default" value="9">신경외과</li>
												  
												  <li class="ui-state-default" value="10">안과</li>
												  
												  <li class="ui-state-default" value="11">영상의학과</li>
												
												  <li class="ui-state-default" value="12">외과</li>
												
												  <li class="ui-state-default" value="13">이비인후과</li>
												
												  <li class="ui-state-default" value="14">재활의학과</li>
												
												  <li class="ui-state-default" value="15">정신건강과</li>
												  
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
						    <label for="pname" class="col-sm-2  control-label">담당자 이름</label>
						   	<div class="col-sm-2">
						      <input type="text" class="form-control " name="pname" id="pname" placeholder="이름을 입력하세요">
						    </div>
						    
						    <label for="ptel" class="col-sm-pull-1 col-sm-2  control-label">연락처</label>
							<div class="col-sm-2 col-sm-pull-1">
								<input type="text" class=" form-control" name="ptel" id="ptel" placeholder="연락처를 입력하세요">
							</div>
						  </div>

					
						
						 
						<div class="form-group">
							<label for="zipNo" class="col-sm-2  control-label">우편 번호</label>
							<div class="col-sm-1">
								<input type="text" class="form-control" name="zipNo" id="zipNo" disabled>
							</div>
						</div>

						<div class="form-group">
							<label for="roadFullAddr" class="col-sm-2 control-label">주 소</label>
							<div class="col-sm-6">
					
								<input type="text" class="form-control" name="roadAddrPart1" id="roadAddrPart1" placeholder="주소를 검색해주세요" disabled >
								
							</div>
							<button class="btn btn-outline-info float-right btn btn-primary" type="button"	onclick="goPopup()">주소 검색</button>
							<div class="col-sm-offset-2 col-sm-6">
							<label class="control-label">상세 주소</label>
							 <input style="margin-top: 3px;" type="text" class="form-control" name="addrDetail"	id="addrDetail" placeholder="상세주소를 입력해주세요" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="zipNo" class="col-sm-2  control-label">사업자 번호 </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name=businessNB id="businessNB" placeholder="사업자 번호를 입력해주세요">
							</div>
						</div>

						<div class="form-group">
							<label for="greeting" class="col-sm-2  control-label">요 청 사 항</label>
							<div class="col-sm-5">
								<textarea rows="5" class="form-control" id="greeting" name="greeting"></textarea>
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


