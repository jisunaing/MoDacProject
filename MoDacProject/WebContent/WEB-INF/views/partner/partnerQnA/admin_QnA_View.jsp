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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


<style>

.form-box {
	background-color:white;
	padding: 20px;
	width: 1000px;
	height: auto;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}


tr th{
	text-align: center
}
#hr1{
	
	border: solid 1px black; 
	width: 45%;
	margin-top: -4px;
	text-align: center;

}
#hr2{
	margin-left: 10%;
	border: dashed 1px black; 
	width: 80%;
	margin-top: 30px;
	margin-bottom:30px
}
#contain{
	margin-top:50px
}
#frm{
	margin-left: 25%
}
</style>
</head>
<script>
	var datalenths;
	//해당 글번호에 대한 코멘트 목록을 가져오는 함수 
	var showComments = function(key){		
		$.ajax({
			url:"<c:url value='/partner/partnerQnA/CommentList.do'/>",
			data:{no:key},
			dataType:'json',
			type:'post',
			success:displayComments			
		});
	};
	//해당 글번호에 대한 코멘트 목록을 뿌려주는 함수 
	//data는 아래 형태로 
	//[{"NO":2,"ONELINECOMMENT":"댓글2","CPOSTDATE":"2018-09-12","CNO":3,"ID":"LEE","NAME":"이길동"},{"NO":2,"ONELINECOMMENT":"댓글1","CPOSTDATE":"2018-09-12","CNO":2,"ID":"PARK","NAME":"박길동"}]
	var displayComments	 = function(data){
		datalenths = data.length;
		console.log(JSON.stringify(data));
		var commentString='<h2 style="text-align: center;">댓글 목록</h2>';
		commentString+='<table class="table table-bordered" style="text-align: center;">';
		commentString+='<tr><th width="15%">작성자</th><th width="50%">댓글 내용</th><th width="20%">등록일</th><th>삭제 여부</th></tr>';
		if(data.length==0){
			commentString+="<tr><td colspan='4'>등록된 댓글이 없어요</td></tr>";
		}
		$.each(data,function(index,comment){			
			commentString+='<tr><td>'+comment['PID']+'</td>';
			if('${sessionScope.pid}' != comment["PID"])
				commentString+='<td align="left">'+comment['RCONTENTS']+'</td>'; 
			else
				commentString+='<td align="center;"><span style="cursor:pointer" class="commentEdit" title="'+comment["RNO"]+'">'+comment['RCONTENTS']+'</span></td>'; 		
			commentString+='<td>'+comment['REPLYDATE']+'</td>';
			commentString+='<td>';
			if('${sessionScope.pid}' == comment["PID"])
				commentString+='<span  class="commentDelete" title="'+comment["RNO"]+'" style="cursor: pointer; color: green; font-size: 1.4em; font-weight: bold">삭제</span>';
			else
				commentString+='<span style="color: gray; font-size: 0.7em; font-weight: bold">삭제불가</span>';
			commentString+='</td></tr>';
		});		
		commentString+='</table>';
		
		$('#comments').html(commentString);
		
		
		
		//코멘트 수정/삭제 처리
		$('.commentEdit').click(function(){
			//cno값 출력
			console.log($(this).attr("title"));
			
			$('#title').val($(this).html());
			$('#submit').val('수정');
			
			//form의 hidden속성중 name="cno"값 설정
			$('input[name=rno]').val($(this).attr("title"));
			
		});
		
		$('.commentDelete').click(function(){			
			var rno_value = $(this).attr("title");
			
			$.ajax({
				url:"<c:url value='/partner/partnerQnA/CommentDelete.do'/>",
				data:{rno:rno_value,no:${record.no}},
				dataType:'text',
				type:'post',
				success:function(key){					
					showComments(key);					
				}		
			});		
			
			
		});

	};
	
	
	

	$(function(){
		//페이지 로드시 코멘트 목록 뿌려주기
		showComments(${record.no});
	
		var incre = 930;
		
		//코멘트 입력처리]
		$('#submit').click(function(){	
			
			if($(this).val()=='등록'){
				
				if(datalenths > 2){
					
					$(".form-box").css("height",incre);
					
					var action="<c:url value='/partner/partnerQnA/CommentWrite.do?no=${record.no}'/>";	
					
				}
				
				
				var action="<c:url value='/partner/partnerQnA/CommentWrite.do?no=${record.no}'/>";								
			}						
			else{
				var action="<c:url value='/partner/partnerQnA/CommentEdit.do'/>";	
			}
			$.ajax({
				url:action,
				data:$('#frm').serialize(),
				dataType:'text',
				type:'post',
				success:function(key){					
					showComments(key);
					if($('#submit').val()=='수정'){						
						$('#submit').val('등록');
						$('#title').val('');						
					}
					else{
						$('#title').val('');
						
						
					}
					
				}		
			});		
			incre+=32;
		});
		
		//메모글 삭제처리]
		$('#delbtn').on('click',function(){
			if(confirm('정말로 삭제할래?')){
				location.replace("<c:url value='/partner/partnerQnA/admin_QnA_Delete.do?no=${record.no}'/>");				
			}
		});
		
		
});
</script>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- 여기까지가 탑이랑 카테고리 부분으로 추정 됨 -->

		<!-- 탑 -->
		<jsp:include page="/WEB-INF/template/hospital/Top.jsp"/>
		<!-- 탑-->
		<!-- 카테고리 -->
		<jsp:include page="/WEB-INF/template/hospital/Left.jsp"/>
		<!-- 카테고리 -->
		<div class="content-wrapper">
	
		

		<!-- body 시작 -->
		<div id="contain"class="container" >
		<div class="row">
					<div class="form-box">
			<h2 style="text-align: center">관리자에게 한 문의 확인 하기</h2>
			<br />
			<p style="text-align: center;">
				제휴회원님과 관리자만 이용 가능한 페이지 입니다.<br /> 
				
			</p>
			<hr id="hr1" ><br/><br/>
			<div class="row">
				<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
				<div>
					<table class="table table-striped table-bordered">
						<tr style="background-color: #79ABFF;">
							<th class="col-md-2 text-center">번호</th>
							<td>${record.no}</td>
						</tr>
						<tr>
							<th class="col-md-2 text-center">제목</th>
							<td>${record.title}</td>
						</tr>
						<tr style="background-color: #79ABFF;">
							<th class="col-md-2 text-center">작성자</th> 
							<td>${record.pid}</td>
						</tr>
		
						<tr>
							<th class="col-md-2 text-center">등록일</th>
							<td>${record.postadate}</td>
						</tr>
						<tr style="background-color: #79ABFF;">
							<th colspan="2" class="text-center">내용</th>
						</tr>
						<tr>
							<td colspan="2">${record.content}</td>
						</tr>
		
					</table>
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="text-center">
					<a  href="<c:url value='/partner/partnerQnA/admin_QnA_Edit.do?no=${record.no}'/>" class="btn btn-success">수정</a>
					<a id="delbtn" href="#" class="btn btn-success">삭제</a>			
					<a href="<c:url value='/partner/partnerQnA/admin_QnA.do'/>" class="btn btn-success">목록</a>
		
				</div>
			</div>
			<br/>
			<hr id="hr2">
			<div class="row">
				<h3 class="text-center">관리자와 소통하세요!</h3>
				<br/>
				<form class="form-inline" id="frm" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" name="no" value="${record.no}" />
				
					<!-- 수정 및 삭제용 파라미터 -->
					<input type="hidden" name="rno" />
					<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="rcontents" />
					<input class="btn btn-success" 	id="submit" type="button" value="등록" />
		
				</form>
		
			</div><br><br>
			<div class="row" id="comments">
				
			</div>
			
			<br/><br/><br/><br/>
	
			</div>
		</div>
	</div>
	
	
	<!-- container -->
			
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
