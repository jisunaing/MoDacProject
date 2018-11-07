<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value='/css/jumbo.css'/>" rel="stylesheet">

<style>
#hr {
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}

#dv {
	padding-top: 50px
}

#qna {
	margin-bottom: 20px
}
</style>
<title>건강문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- body 시작 -->

<div class="jumbotron jumbotron-billboard" style="height: 500px">
  <div class="img">
	<img src="<c:url value='/Images/healthquestion.jpg'/>" id="toppic" />
  </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
				<h2 style="text-align: center">증상문의하기</h2>
   	          <br/>
				<p style="text-align:center">
					회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br /> 회원님의 증상에 대해 의사선생님께 직접 질문을 남기는 곳입니다.
					<br /> 언제든지 궁금한걸 물어보세요~				
				</p>
				<hr id="hr">
            </div>
        </div>
    </div>
</div>
	
<div class="container" id="dv">
	<br /> <br />
	<!-- row -->
	<div class="row">
		<div class="text-center">
			<div class="container">
				<div style="padding-bottom:50px">
					<button type="button" class=" btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="width:150px">문의하기</button>					
				</div>

				<!-- 모달창 시작 -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="exampleModalLabel">문의하기</h4>
							</div>
							<form
								action="<c:url value='/general/qna/qnahealth/healthQnaWrite.do'/>"
								method="post">
								<div class="modal-body">

									<div class="form-group"
										style="padding-left: 17px; text-align: left">
										<label class="control-label">제목:</label> <input type="text"
											class="form-control" id="title" name="title"
											style="width: 500px;"> <input type="hidden"
											name="qcontent" value="chat">
									</div>
									<div class="form-group"
										style="text-align: left; padding-left: 17px;">
										<label for="message-text" class="control-label">관련
											진료과목:</label>
										<div style="width: 500px;">
											<select class="form-control" name="subjectcode">
												<option>증상과 관련된 진료과목을 선택하세요</option>
												<c:forEach items="${sublist}" var="subject" varStatus="loop">
													<option value="${subject['SUBJECTCODE']}">${subject['SUBNAME']}</option>
												</c:forEach>
											</select>
										</div>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">문의하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 모달창 끝-->
			</div>



			<table class="table">
				<thead>
					<tr>
						<th class="col-md-2" style="text-align: center">번호</th>
						<th style="text-align: center">제목</th>
						<th class="col-md-2" style="text-align: center">작성일</th>
						<th class="col-md-2" style="text-align: center">답변여부</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty requestScope.list }" var="isEmpty">
						<tr>
							<td colspan="4">등록된 게시물이 없어요</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty }">
						<c:forEach var="record" items="${list}" varStatus="loop">
							<tr class="success">
								<td>${record.qno}</td>
								<td>
									<a href="<c:url value='/general/qna/qnahealth/healthQnaChat.do?qno=${record.qno}&sender=${genid}'/>"
									id="opener${loop.index}" class="opener" data-target="#dialog" title="${loop.index }" onclick="return false">${record.title}</a>
								</td>
								<td>${record.postdate}</td>
								<c:if test="${record.qcontent eq ('chat' or 'null')}" var="isreplied">
									<td>답변 대기중</td>
								</c:if>
								<c:if test="${!isreplied}">
									<td>답변 완료</td>
								</c:if>
							</tr>
						</c:forEach>
					</c:if>

				</tbody>
			</table>
			<!-- 모달 시작 -->
			<div id="dialog" title="Basic dialog">
				<div style="background-color: rgba(43,104,167,0.85); height: 90px; margin-left: -15px; margin-top:-5px; width: 400px" id="topbackground">
					<div style="padding-top: 20px; padding-left: 20px; float: left;">
						<img src="<c:url value='/Images/logoonly.png'/>" alt="Logo"
							width="50px" class="img-fluid" />
					</div>
					<div id="chattop" style="float:left; margin-top: 15px; padding-left: 20px;">
					<!-- ajax로 들어감 -->
					</div>
				</div>

				<div id="chatArea" class="row"
					style="border: 2px solid rgba(43,104,167,0.85); overflow: auto; resize: none; width: 400px; height: 470px">
					<div id="chatMessage" class="col-md-8" style="width: 379px; height: 450px"></div>
				</div>
				<div class="row" style="margin-top:8px;padding-left:5px">

				<form class="form-inline" onsubmit="return false">
					<input class="form-control" type="text" id="message" style="height: 40px; width: 320px;"> 
					<input class="btn btn-primary" type="button" id="sendBtn" value="전송" style="height: 40px; width:65px">
				</form>

				</div>
			</div>
			<!-- 모달 끝 -->
		</div>
	</div>
</div>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>

var hosname;
var qno;
//웹소켓 객체 저장용
var wsocket;
//닉네임 저장용
var nickname;
//보내는 사람 구분용
var me;
//프로파일 이미지 저장용 
var imgself;
var imgnotself;
var doctor="<c:url value='/Images/chatdoctor.png'/>";
var patient="<c:url value='/Images/chatbubble.png'/>";

var socketClose = function(){
	appendMessage('연결을 끊었어요');
}///////////////////////socketClose
var socketOpen  = function(data){
	

	$( "#dialog" ).dialog( "open");
	 $('#dialog').css('overflow', 'hidden');
	displayChattop(data);
	
	//pastChat();
	//console.log(data['sender']);
	//서버로 연결한 사람의 정보 전송
	//wsocket.send("msg:"+data['sender']+"가(이) 입장했어요");
	me=data['sender'];
	qno=data['qno'];
	hosname=data['hosname'];
	console.log("me:"+me);
	
	appendMessage("연결되었습니다");
	console.log(data['qcontent']);
	if(data['qcontent'] !="chat"){
		pastChat();
		console.log('pastchat다음호출');
	}
	//저장된 데이터가 있을시 
	
}///////////////////
var socketMessage = function(e){
	//서버로부터 받은 데이타 저장
	console.log(e.data);
	var rawdata= e.data;//서버로 부터 받은 데이터가 들어가 있다
	if(rawdata.includes("&split^*=")){
		var data=rawdata.split("&split^*=");
		from =data[2];
		console.log('from:'+from+'me: '+me);
		console.log("qno:"+qno);
		
		if(qno==data[1]){
			if(me!=from){
				if(hosname==me){//병원사용자
					imgself=doctor;
					imgnotself=patient;
				}
				else{//일반사용
					imgself=patient;
					imgnotself=doctor;
				}
				hosname=from;
				//병원명 설정
				$('#hosname').html('병원명: '+hosname);
				console.log("hosname:"+hosname);
				
				if(data[0].substring(0, 4)=='msg:'){
					appendMessageNotSelf(data[0].substr(4));
				}
			}
			else if (me==from){
				//이미지 설정
				if(hosname==me){
					imgself=doctor;
					imgnotself=patient;
				}
				else{
					imgself=patient;
					imgnotself=doctor;
				}
				
				
				if(data[0].substring(0, 4)=='msg:'){
					appendMessageSelf(data[0].substr(4));
				}
			}
		}
	}////////////if includes
	else{
		console.log("appendSavedMessage");
		console.log(rawdata);
		if(rawdata!="null"){
			if(rawdata.includes("연결되었습니다")){
				appendSavedMessage(rawdata.replace(rawdata.substr(0,304),""));
			}
			if(rawdata.includes("연결을 끊었습니다")){
				appendSavedMessage(rawdata.replace(rawdata.substr(rawdata.lastIndesOf("<div class='row' style = 'height : 75x; margin-top : 5px;padding-left:100px;'>"),rawdata.length()),""));
			}
			
		}
		
	}
	
}

//서버에서 받은 메시지 출력용 메소드.혹은 이벤트 확인을 출력용 메소드
var appendMessageNotSelf= function(msg){
	var t = getTimeStamp();
		$('#chatMessage').append("<div class='row' style = 'height : 75x; margin-top : 5px;'><div class='col-2' style = 'float:left;'>"
				+"<img id='profileImg' class='img-fluid' src='"+imgnotself+"' style = 'width:60px; height:60px;padding-right:5px'>"
				+"</div>"
				+"<div style = ' margin-top : 20px;'>"
				+"<div style = ' background-color:#ACF3FF; padding : 5px; float:left; border-radius:10px'>"
				+"<span style = 'font-size : 12px;'>"+msg+"</span> </div>"
				+"<div style = 'font-size:9px; text-align:right; float:left;padding-top:20px;padding-left:5px;color:lightgray'> <span>"+t+"</span>"
				+"</div></div></div>");
	
	
	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

	//실시간 저장
	chatSave();
}
var appendMessageSelf= function(msg){
	var t = getTimeStamp();
	
	$('#chatMessage').append("<div class='row' style = 'height : 75x; margin-top : 5px;'><div class='col-2' style = 'float:right;'>"
			+"<img id='profileImg' class='img-fluid' src='"+imgself+"' style = 'width:60px; height:60px;padding-right:5px'>"
			+"</div>"
			+"<div style = ' margin-top : 20px;'>"
			+"<div style = ' background-color:#FFFC80; padding : 5px; float:right; border-radius:10px'>"
			+"<span style = 'font-size : 12px;'>"+msg+"</span> </div>"
			+"<div style = 'font-size:9px; text-align:right; float:right;padding-top:20px;padding-right:5px;color:lightgray'> <span>"+t+"</span>"
			+"</div></div></div>");


	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;
	
	//실시간 저장
	chatSave();
}
var appendMessage= function(msg){
	var t = getTimeStamp();
	
	$('#chatMessage').append("<div class='row' style = 'height : 75x; margin-top : 5px;padding-left:100px;'>"
			+"<div style = ' background-color:#D5D5D5; padding : 3px; width:200px; float:left; border-radius:10px;text-align:center'>"
			+"<span style = 'font-size : 12px;'>"+msg+"</span><br><span style = 'font-size : 8px;'>"+t+"</span> </div>"
			+"</div>");


	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

	
}

var appendSavedMessage= function(msg){
	
	$('#chatMessage').append(msg);


	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

	//실시간 저장
	chatSave();
	
}
//서버로 메시지 전송하는 메소드
var sendMessage = function(data){
	var message ="msg:"+$('#message').val()+"&split^*="+data['qno']+"&split^*="+data['sender'];
	console.log(message);
	wsocket.send(message);
	$('#message').val('');
}/////////////////////////

//채팅 탑 정보 뿌려주는 메소드
var displayChattop = function(data){
	var chattopString='<span style=\"color: white; font-size: 15px;\">'+data['title']+'</span><br />';
		chattopString+='<span style="color: white; font-size: 10px;" id="patient">질문자: '+data['genid']+'</span> <br />'; 
		chattopString+='<span style="color: white; font-size: 10px;" id="hosname">병원: '+data['hosname']+'</span>'; 
		chattopString+='<span style="color: white; font-size: 10px; padding-left: 120px" id="exitBtn">문의 종료 </span>';
	$('#chattop').html(chattopString);
}

//채팅내용 실시간 저장 
var chatSave = function(){
	var saveurl = url.replace("Chat", "Save");
	 //console.log($('#chatMessage').html());
	//console.log(saveurl.replace("&", '&qcontent='+$('#chatMessage').html()+'&'));
	$.ajax({
		url:saveurl,
		data:{qcontent:$('#chatMessage').html()},
		type:'post'	
	});	
}
//이전 채팅내용 불러오기
 var pastChat = function(){
	console.log("pastchat");
	var saveurl = url.replace("Chat", "PastChat");
	$.ajax({
		url:saveurl,
		dataType:'json',
		type:'post',
		success:displayPastChat
	});	
} 
//채팅창에 채팅내용 보이기
 var displayPastChat = function(data){
	console.log("displaypastchat");
	console.log(data['qcontent']);
	console.log("전전전전전: "+$('#chatMessage').html());
	wsocket.send(data['qcontent']);
	console.log("후후후후후: "+$('#chatMessage').html());
} 
 
 ///기본-->
 $( function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      width:407,
      height:660,
      resizable:false,
      title:"모닥 증상문의",
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      },
      beforeClose: function( event, ui ) {
    	  if (confirm('대화 내용을 저장하시겠습니까?')) {
   				//대화 저장되어있는 상태로 놔두기
    		  location.replace(url.replace("Chat", "List"));

    		} else {
    		    // Do nothing!
    		    $('#chatMessage').replaceWith("");
    		    if (confirm('해당 채팅방을 삭제하시겠습니까?')) {
        		    //삭제
        		    console.log(url.replace("Chat", "Delete"));
    				location.replace(url.replace("Chat", "Delete"));				
        		} else {
        		    //다른 의사선생님한테 문의하려고 내용 지우고 채팅방만 놔두기 
        			location.replace(url.replace("Chat", "DeleteSave"));
        		}
    		}
      }
    });
    $(".ui-dialog").find(".ui-widget-header").css("background", "#2b68a7").css("color","white");
 
  } ); 
 
 
 for(var i =0; i<${list.size()};i++){
	 $("#opener"+i).on( "click", function() {
		 url=$(this).attr('href');
		 
		 $.ajax({
			url:url,
			dataType:'json',
			type:'post',
			success: function(data){
				
				console.log(JSON.stringify(data));
				// 웹 소켓 객체로 서버에 연결하기
				wsocket = new WebSocket("ws://192.168.0.163:8080${pageContext.request.contextPath}/chat-ws.do"); 
				wsocket.onclose=socketClose;
				wsocket.onopen =socketOpen(data);
				wsocket.addEventListener("message",socketMessage);
				
				//퇴장버튼 클릭시]
				$('#exitBtn').click(function(){
					wsocket.send('msg:'+nickname+'퇴장했어요');
					wsocket.close();			
				});
				//전송버튼 클릭시]
				$('#sendBtn').click(function(){
					sendMessage(data);
					
				});
				
				//메시지 입력창에 메시지 입력시 ]
				$('#message').on('keypress',function(e){
					var keyCode = e.keyCode ? e.keyCode : e.which;
					if(keyCode=='13'){
						//메시지를 서버로 전송하는 메소드
						sendMessage(data);
					}
					e.stopPropagation();
				});
			}///success
				
		});///ajax
		
	  });
 }///////////////for 

	

	 

<!-- ajax -->

<!-- 채팅  -->





//시간 표시]
function getTimeStamp() {
   var d = new Date();
   var s =
     leadingZeros(d.getFullYear(), 4) + '/' +
     leadingZeros(d.getMonth() + 1, 2) + '/' +
     leadingZeros(d.getDate(), 2) + ' ' +

     leadingZeros(d.getHours(), 2) + ':' +
     leadingZeros(d.getMinutes(), 2);

   return s;
 }

 function leadingZeros(n, digits) {
   var zero = '';
   n = n.toString();

   if (n.length < digits) {
     for (i = 0; i < digits - n.length; i++)
       zero += '0';
   }
   return zero + n;
 }
</script>
<!-- container -->