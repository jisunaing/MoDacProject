<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모닥 채팅</title>
<!-- 부트스트랩 -->
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 소켓 -->
<script type="text/javascript" src="<c:url value='/js/sockjs.js'/>"></script>


<link href="https://code.jquery.com/jquery-3.1.1.min.js"> 
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 --><script type="text/css" src="<c:url value='/css/bootstrap-grid.css'/>"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap-reboot.css">
<style>
*{
margin:0
}
.noresize {
  resize: none; /* 사용자 임의 변경 불가 */
 
}
</style>
</head>
<body style="padding:0">

<!-- 뭐하는 코드인지 아직 모름 - 아마도 회원 정보?! -->
<%-- <c:set var="profile" value='<%=session.getAttribute("login")%>' /> --%>


	<div style="background-color: #2b68a7; height:70px">
		<div class="col-2" style="float: left;padding-top:35px; padding-left:15px" >
			<span style="color:white;font-size:12px"> 문의 종료 </span>
		</div>
		<img src="<c:url value='/Images/stet.png'/>" alt="Logo" width="100px" class="img-fluid" style="padding-top: 10px;padding-left:65px" />
	</div>
	<!-- 채팅 내용 -->
	<div class="col-12">
		<div style="border: 2px solid  #2b68a7; height: 450px; border-radius: 10px; overflow:scroll;padding-top:22px" id = "chatArea">

			<div id="chatMessageArea" style = "margin-top : 10px; margin-left:10px;"></div>

		</div>
	</div>

	<!-- 채팅 입력창 -->
	<div class="col-12" style="margin-top: 10px;padding-right:0px">
		<div class="col-12" style="float: left;">
			<textarea class="form-control noresize" style="border: 2px solid #2b68a7; height:40px; float: left; width: 318px"
				id = "message">
			</textarea>
			<div style="text-align: center; line-height: 44px; height:44px; float:right;">
				<span
					style="float: right; width: 60px; height: 44px; text-align: center;background-color: #2b68a7;border-radius: 5px; ">
					<a style="text-align: center; color: white; font-weight: bold; " id = "sendBtn" >전송</a>
				</span>
			</div>
		</div>

	</div>


<img id="profileImg" class="img-fluid" src="<c:url value='/Images/logo.png'/>" style = "display:none">
<input type="text" id="nickname" value = "${genname }" style = "display:none">

 <script>
 
 connect();
 

 function connect() {
	
	    sock = new SockJS("/chat"); 
	    sock.onopen = function() {
	        console.log('open');
	    };
	   sock.onmessage = function(evt) {
    	 var data = evt.data;
    	   console.log(data)
  		   var obj = JSON.parse(data)  	   
    	   console.log(obj)
    	   appendMessage(obj.message_content);
	    };
	    sock.onclose = function() {
	    	 appendMessage("연결을 끊었습니다.");
	    	 console.log(sock);
	        console.log('close');
	    }; 
	}




 function send() {
  var msg = $("#message").val();
  if(msg != ""){
	  message = {};
	  message.message_content = $("#message").val()
  	  message.pid = '${pid}'
  	  message.genid = '${session.genid}'
  	  message.CLASS_class_id = '${class_id}'
  	  message.message_sender = '${session.genid}'
  }




  sock.send(JSON.stringify(message));
  $("#message").val("");
 }




 function getTimeStamp() {
   var d = new Date();
   var s =
     leadingZeros(d.getFullYear(), 4) + '-' +
     leadingZeros(d.getMonth() + 1, 2) + '-' +
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







 function appendMessage(msg) {

	 if(msg == ''){
		 return false;
	 }else{


	 var t = getTimeStamp();
	 $("#chatMessageArea").append("<div class='col-12 row' style = 'height : auto; margin-top : 5px;'><div class='col-2' style = 'float:left; padding-right:0px; padding-left : 0px;'><img id='profileImg' class='img-fluid' src='<c:url value='/Images/logo.png'/>' style = 'width:50px; height:50px; '><div style='font-size:9px; clear:both;'>${genname}</div></div><div class = 'col-10' style = 'overflow : y ; margin-top : 7px; float:right;'><div class = 'col-12' style = ' background-color:#ACF3FF; padding : 10px 5px; float:left; border-radius:10px;'><span style = 'font-size : 12px;'>"+msg+"</span></div><div col-12 style = 'font-size:9px; text-align:right; float:right;'><span style ='float:right; font-size:9px; text-align:right;' >"+t+"</span></div></div></div>")		 

	  var chatAreaHeight = $("#chatArea").height();
	  var maxScroll = $("#chatMessageArea").height() - chatAreaHeight;
	  $("#chatArea").scrollTop(maxScroll);

	 }
 }
 
 $(function() {
  $('#message').keypress(function(event){
   var keycode = (event.keyCode ? event.keyCode : event.which);
   if(keycode == '13'){
    send();
   }
   event.stopPropagation();
  });



  $('#sendBtn').click(function() { send(); });/* $('#enterBtn').click(function() { connect(); }); $('#exitBtn').click(function() { disconnect(); }); */
 });
</script>
</body>
</html>