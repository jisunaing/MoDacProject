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
<title>모닥 증상문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
*{
margin:0;
padding:0
}
body{
overflow-y: hidden; 
overflow-x: hidden;

}
#topbackground{
margin:0;
padding:0
}
.arrow_box {
	position: relative;
	background: #88b7d5;
}
.arrow_box:after {
	right: 100%;
	top: 50%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: rgba(136, 183, 213, 0);
	border-right-color: #88b7d5;
	border-width: 30px;
	margin-top: -30px;
}
</style>
<script>
	//웹소켓 객체 저장용
	var wsocket;
	//닉네임 저장용
	var nickname;
	
	var socketClose = function(){
		appendMessage('연결을 끊었어요');
	}///////////////////////socketClose
	var socketOpen  = function(){
		//서버로 연결한 사람의 정보 전송
		wsocket.send("msg:"+nickname+"가(이) 입장했어요");
		appendMessage("연결 되었습니다");
	}///////////////////
	var socketMessage = function(e){
		//서버로부터 받은 데이타 저장
		var dataa= e.data;//서버로 부터 받은 데이터가 들어가 있다
		var data=dataa.split("&qno^*=");
		if(${param.qno}==data[1]){
			if(data[0].substring(0, 4)=='msg:'){
				appendMessage(data[0].substr(4));
			}
		}
		
	}
	
	//서버에서 받은 메시지 출력용 메소드.혹은 이벤트 확인을 출력용 메소드
	var appendMessage= function(msg){
		var t = getTimeStamp();
		/* $('#chatMessage').append(msg+"<br/>").css(name).addClass('arrow_box'); */
		$('#chatMessage').append("<div class='row' style = 'height : auto; margin-top : 5px;'><div class='col-2' style = 'float:left; padding-left : 20px;'>"
									+"<img id='profileImg' class='img-fluid' src='<c:url value='/Images/Modac.png'/>' style = 'width:50px; height:50px; '>"
									+"<div style='font-size:9px; clear:both;'>${genname}</div>"
									+"</div>"
									+"<div class = 'col-10' style = 'overflow : y ; margin-top : 7px; float:right;'>"
									+"<div class = 'col-12' style = ' background-color:#ACF3FF; padding : 10px 5px; float:left; border-radius:10px;'>"
									+"<span style = 'font-size : 12px;'>"+msg+"</span> </div>"
									+"<div style = 'font-size:9px; text-align:right; float:right;padding-top:45px;'> <span>"+t+"</span>"
									+"</div></div></div>");
		$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

		
	}
	
	//서버로 메시지 전송하는 메소드
	var sendMessage = function(){
		wsocket.send("msg:"+nickname+":"+$('#message').val()+"&qno^*="+${param.qno});
		$('#message').val('');
	}/////////////////////////
	
	$(function(){
		
		// 웹 소켓 객체로 서버에 연결하기
		wsocket = new WebSocket("ws://localhost:8080${pageContext.request.contextPath}/chat-ws.do?qno=\"${param.qno}\""); 
		wsocket.onclose=socketClose;
		wsocket.onopen =socketOpen;
		wsocket.addEventListener("message",socketMessage);
		//사용자가 입력한 닉네임 저장
		
		nickname = $('${sessionScope.genid}');
			
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

</head>
<body>
	<div class="container">
		<div style="background-color: #2b68a7; height:90px;margin-left:-15px;width:400px" id="topbackground">
			<div class="col-2" style="float: left;padding-top:50px; padding-left:15px" >
				<span style="color:white;font-size:12px" id="exitBtn">문의 종료 </span>
			</div>
			<div style="padding-top:20px;padding-left:140px">
				<img src="<c:url value='/Images/stet.png'/>" alt="Logo" width="100px" class="img-fluid" />
			</div>
			<div>
				<span style="color:white;font-size:15px" >${record.title}</span>
			</div>
		</div>
	
	
	        
        <div id="chatArea" class="row" style="border:2px solid #2b68a7;overflow-y:scroll;overflow-x:hidden">
            <div id="chatMessage"  class="col-md-8" style="height:460px"></div>
            <div class="arrow_box">내용입니다</div>
            <div></div>
        </div>
        <div class="row">
	        <input class="form-control" type="text" id="message" style="float:left;height: 40px;width: 329px;">
	        <input class="btn btn-primary" type="button" id="sendBtn" value="전송"  style="height: 40px;width:52px">
        </div>
	    
	    <!-- test용 -->
	    <img id="profileImg" class="img-fluid" src="<c:url value='/Images/logo.png'/>" style = "display:none">    
		
	   
	</div>
</body>
</html>