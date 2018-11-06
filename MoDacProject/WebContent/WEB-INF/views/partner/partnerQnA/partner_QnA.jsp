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
<!-- 부트스트랩으로 삭제 x-->
<link rel="stylesheet"	href="<c:url value="/Bootstrap/css/bootstrap.css"/>">
<!-- 아래꺼 삭제하면 틀 자체가 깨짐 -->
<link rel="stylesheet"	href="<c:url value="/css/ionicons.css"/>">
<link rel="stylesheet" href="<c:url value="/css/AdminLTE.css"/>">
<!-- 아래꺼 삭제하면 디자인이 흰색으로 변경됨 -->
<link rel="stylesheet" href="<c:url value="/css/_all-skins.css"/>">
<!-- 채팅위해 필요 -->
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
#hr{
	margin-left: 37%;
	border: solid 1px black; 
	width: 25%;
	margin-top: -6px;
	
}
#dv{
	padding-top: 50px
}
#qna{
	margin-bottom: 20px
}
.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 1300px;
	height: 1030px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini" >
	<div class="wrapper">

		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->

		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		<div class="content-wrapper" style="background-color: white;">
		
		
		
<!-- body 시작 -->
<div class="container" id="dv" >
<div class="row">
<div>

	<h2 style="text-align: center">증상문의 관리</h2>
	<br />
	<p style="text-align: center;">
		일반회원님들의 증상문의를 답변해주세요~!
	</p><br>
	<hr id="hr">
	<br />
	<br />
	<!-- row -->
	<div class="row" >
		<div class="text-center">
			<div class="container" >										
				<table class="table table-hover table-bordered text-center">
						<tr style="background-color: #79ABFF;">
							<th style="text-align: center" class="col-md-1" >글번호</th>
							<th style="text-align: center" >제목</th>
							<th style="text-align: center"  class="col-md-2">관련 진료 과목</th>
							<th style="text-align: center" class="col-md-2">회원 아이디</th>
							<th style="text-align: center" class="col-md-2">작성일</th>
							<th style="text-align: center" class="col-md-1">답변 여부</th>						
						</tr>
						
				<c:if test="${empty list}" var="isEmpty">
					<tr>
						<td colspan="6">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="record" items="${list}" varStatus="loop">
					
					
						<tr>
							<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
							<td class="text-left">
								<a href="<c:url value='/general/qna/qnahealth/healthQnaChat.do?qno=${record.qno}&sender=${pid}'/>"
									id="opener${loop.index}" class="opener${loop.index}" data-target="#dialog" onclick="return false">${record.title}
								</a>
								 <span class="badge">${record.commentCount}</span>
							</td>				
							<td>${record.subname}</td>			
							<td>${record.genid}</td>
							<td>${record.postdate}</td>
							<c:if test="${record.commentCount != 0}" var="commentCounts">
							<td>답변 완료</td> <!--  답변여부 쪽 -->
							</c:if>
							<c:if test="${!commentCounts}">
							<td>답변 대기중</td> <!--  답변여부 쪽 -->
							</c:if> 
						</tr>
					</c:forEach>
				</c:if>
			</table>
			
			</div>
			
		</div>
		<!-- 모달 시작 -->
			<div id="dialog" title="Basic dialog">
				<div style="background-color: rgba(43,104,167,0.85); height: 90px; margin-left: -15px; margin-top:-5px;  width: 400px" id="topbackground">
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
		
			


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 채팅  -->
<script>
var clients;
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
	console.log("2222");
	console.log(data);
	console.log("33333333");
	$( "#dialog" ).dialog( "open");
	$('#dialog').css('overflow', 'hidden');
	displayChattop(data);
	console.log(data['sender']);
	//서버로 연결한 사람의 정보 전송
	//wsocket.send("msg:"+data['sender']+"가(이) 입장했어요");
	
	
	me=data['sender'];
	qno=data['qno'];
	hosname=data['hosname'];
	console.log("me:"+me);
	appendMessage("연결 되었습니다");
	if(data['qcontent'] !="chat"){
		pastChat();
		console.log('pastchat다음호출');
	}
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
				if(hosname==me){
					imgself=doctor;
					imgnotself=patient;
				}
				else{
					imgself=patient;
					imgnotself=doctor;
				}
					
					
				if(data[0].substring(0, 4)=='msg:'){
					appendMessageNotSelf(data[0].substr(4));
				}
			}
			else if (me==from){
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
			var rp1 = rawdata.replace("float:right","temp");			
			var rp2 = rp1.replace("float:left","float:right");
			var rp3 = rp2.replace("temp","float:left");
			var replaced = rp3.replace("#FFFC80","#ACF3FF");
			if(replaced.includes("연결되었습니다")){
				appendSavedMessage(replaced.replace(replaced.substr(0,305),""));
			}
			if(replaced.includes("연결을 끊었습니다")){
				appendSavedMessage(replaced.replace(replaced.substr(replaced.lastIndesOf("<div class='row' style = 'height : 75x; margin-top : 5px;padding-left:100px;'>"),replaced.length()),""));
			}
			
		}
		
	}
}
var url;
//서버에서 받은 메시지 출력용 메소드.혹은 이벤트 확인을 출력용 메소드
var appendMessageNotSelf= function(msg){
	var t = getTimeStamp();
		$('#chatMessage').append("<div class='row' style = 'height : 75x; margin-top : 5px;'><div class='col-2' style = 'float:left;'>"
				+"<img id='profileImg' class='img-fluid' src='"+imgnotself+"' style = 'width:60px; height:60px;padding-right:5px'>"
				+"</div>"
				+"<div class = '' style = ' margin-top : 20px;'>"
				+"<div class = '' style = ' background-color:#ACF3FF; padding : 5px; float:left; border-radius:10px'>"
				+"<span style = 'font-size : 12px;'>"+msg+"</span> </div>"
				+"<div style = 'font-size:9px; text-align:right; float:left;padding-top:20px;padding-left:5px;color:lightgray'> <span>"+t+"</span>"
				+"</div></div></div>");
	
	
	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

	
}
var appendMessageSelf= function(msg){
	var t = getTimeStamp();
	
	$('#chatMessage').append("<div class='row' style = 'height : 75x; margin-top : 5px'><div class='col-2' style = 'float:right;'>"
			+"<img id='profileImg' class='img-fluid' src='"+imgself+"' style = 'width:60px; height:60px;padding-right:5px'>"
			+"</div>"
			+"<div style = ' margin-top : 20px;'>"
			+"<div style = ' background-color:#FFFC80; padding : 5px; float:right; border-radius:10px'>"
			+"<span style = 'font-size : 12px;'>"+msg+"</span> </div>"
			+"<div style = 'font-size:9px; text-align:right; float:right;padding-top:20px;padding-right:5px;color:lightgray'> <span>"+t+"</span>"
			+"</div></div></div>");


	$('#chatArea').get(0).scrollTop=$('#chatArea').get(0).scrollHeight;

	
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

  <!--기본-->
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
   			//대화 저장되어있는 상태로 놔두기
      		location.replace(url.replace("Chat", "List"));

      }
    });
    $(".ui-dialog").find(".ui-widget-header").css("background", "#2b68a7").css("color","white");

  } ); 
 for(var i=0; i<10;i++){
 $( "#opener"+i).on( "click", function() {
	 url=$(this).attr('href');
	 console.log(url);
	 console.log('clicked');
	 $.ajax({
			url:url,
			dataType:'json',
			type:'post',
			success: function(data){
				console.log(JSON.stringify(data));
				// 웹 소켓 객체로 서버에 연결하기
				wsocket = new WebSocket("ws://localhost:8080${pageContext.request.contextPath}/chat-ws.do?qno=${data.qno}&sender=${data.sender}"); 
				wsocket.onclose=socketClose;
				wsocket.onopen =socketOpen(data);
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
			}
		});
	 console.log('11111');
   });
 }/////////for
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
	<!-- 아래는 페이징 -->
<div class="row">
	<div>${pagingString}</div>
</div>
<!-- 검색용 UI -->
<div class="row">
	<div class="text-center">

		<form class="form-inline" method="post"	action="<c:url value='/partner/partnerQnA/partner_QnAList.do'/>">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="genid">아이디</option>
					<option value="qcontent">내용</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" name="searchWord" class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">검색</button>

		</form>
	</div>
</div>
	
	
	
	
	
</div>
<!-- container -->
		
</div>
</div>		
		</div>
		<!-- 여기까지가 바디로 추정됨 -->
		<!-- 여기부터 퓨터로 추정됨 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.4.0
			</div>
			<strong>Copyright &copy; 2014-2016 <a
				href="https://adminlte.io">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 여기까지가 퓨터로 추정됨 -->
	</div>
	<!-- ./wrapper -->
	<!--아래부분 삭제하면 안됨 -->
	<script src="<c:url value="/Jquery/jquery.js"/>"></script>
	<script src="<c:url value="/Jquery/jquery-ui.js"/>"></script>
	<script src="<c:url value="/Bootstrap/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/Jquery/adminlte.js"/>"></script>
</body>
</html>
