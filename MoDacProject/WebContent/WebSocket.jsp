<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- 부트스트랩 -->
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js' />"></script>
<title>WebSocket.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	//웹소켓 객체 저장용
	var wsocket;
	//닉네임 저장용
	var nickname;
	
	var socketClose = function(){
		appendMessage('연결을 끊었어요');
	}///////////////////////socketClose
	var socketOpen  = function(){
		/* var Url = require('url');
		var params = Url.parse(wsocket.upgradeReq.url,true).query; */
		//서버로 연결한 사람의 정보 전송
		wsocket.send("msg:"+nickname+"가(이) 입장했어요");
		appendMessage("연결 되었습니다");
	}///////////////////
	var socketMessage = function(e){
		//서버로부터 받은 데이타 저장
		var data= e.data;//서버로 부터 받은 데이터가 들어가 있다
		if(data.substring(0, 4)=='msg:'){
			appendMessage(data.substr(4));
		}
		
	}
	
	//서버에서 받은 메시지 출력용 메소드.혹은 이벤트 확인을 출력용 메소드
	var appendMessage= function(msg){
		$('#chatMessage').append(msg+"<br/>");
		$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;
		
	}
	//서버로 메시지 전송하는 메소드
	var sendMessage = function(){
		wsocket.send("msg:"+nickname+":"+$('#message').val());
		$('#message').val('');
	}/////////////////////////
	
	$(function(){
		//입장버튼 클릭시]
		$('#enterBtn').on('click',function(){
			// 웹 소켓 객체로 서버에 연결하기
			wsocket = new WebSocket("ws://localhost:8080${pageContext.request.contextPath}/chat-ws.do"); 
			wsocket.onclose=socketClose;
			wsocket.onopen =socketOpen;
			wsocket.addEventListener("message",socketMessage);
			//사용자가 입력한 닉네임 저장
			nickname = $('#nickname').val();
		});///////////////////////
		//퇴장버튼 클릭시]
		$('#exitBtn').click(function(){
			wsocket.send('msg:'+nickname+'퇴장했어요');
			wsocket.close();			
		});
		//전송버튼 클릭시]
		$('#sendBtn').click(function(){
			sendMessage();
		});
		
		//메시지 입력창에 메시지 입력시 ]
		$('#message').on('keypress',function(e){
			var keyCode = e.keyCode ? e.keyCode : e.which;
			if(keyCode=='13'){
				//메시지를 서버로 전송하는 메소드
				sendMessage();
			}
			e.stopPropagation();
		});
		
		
	});
</script>

</head>
<body>
	<div class="container">
		<fieldset>
	        <legend>웹소켓 클라이언트</legend>
	        <h2>닉네임</h2>
	        <input class="form-control" type="text" id="nickname" >
	        <input class="btn btn-success" type="button" id="enterBtn" value="입장" >
	        <input class="btn btn-danger" type="button" id="exitBtn" value="퇴장">
	
	        <h2>대화 영역</h2>
	        <div id="chatArea" class="row" style="border:2px dotted orange;overflow:auto">
	            <div id="chatMessage"  class="col-md-8" style="height:300px"></div>
	        </div>
	        <h2>메시지 입력</h2>
	        <input class="form-control" type="text" id="message">
	        <input class="btn btn-warning" type="button" id="sendBtn" value="전송">
	
	    </fieldset>
	</div>
</body>
</html>