﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
			url:"<c:url value='/partner/partnerQnA/pNgCommentList.do'/>",
			data:{qno:key},
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
			commentString+='<tr><td style="font-size: 1.2em; font-weight: bold">'+comment['HOSNAME']+'</td>';
			if('${sessionScope.pid}' != comment["PID"])
				commentString+='<td align="center;">'+comment['ATITLE']+'</td>'; 
			else
				commentString+='<td align="center;"><span style="cursor:pointer" class="commentEdit" title="'+comment["ANO"]+'">'+comment['ATITLE']+'</span></td>'; 		
			commentString+='<td>'+comment['APOSTDSATE']+'</td>';
			commentString+='<td>';
			if('${sessionScope.pid}' == comment["PID"])
				commentString+='<span  class="commentDelete" title="'+comment["ANO"]+'" style="cursor: pointer; color: red; font-size: 1.4em; font-weight: bold">삭제</span>';
			else
				commentString+='<span style="color: gray; font-size: 0.9em; font-weight: bold">삭제불가</span>';
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
			
		
			$('input[name=ano]').val($(this).attr("title"));
			
		});
		
		$('.commentDelete').click(function(){			
			var ano_value = $(this).attr("title");
			
			$.ajax({
				url:"<c:url value='/partner/partnerQnA/pNgCommentDelete.do'/>",
				data:{ano:ano_value,qno:${record.qno}},
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
		showComments(${record.qno});
	
		var incre = 930;
		
		//코멘트 입력처리]
		$('#submit').click(function(){	
			
			if($(this).val()=='등록'){
				
				if(datalenths > 2){
					
					$(".form-box").css("height",incre);
					
					var action="<c:url value='/partner/partnerQnA/pNgCommentWrite.do?qno=${record.qno}'/>";	
					
				}
				
				
				var action="<c:url value='/partner/partnerQnA/pNgCommentWrite.do?no=${record.qno}'/>";								
			}						
			else{
				var action="<c:url value='/partner/partnerQnA/pNgCommentEdit.do'/>";	
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
			<h2 style="text-align: center">일반회원님들의 문의 확인하기 </h2>
			<br />
			<p style="text-align: center;">
				일반회원님과 병원관리자분들만의 문의 서비스입니다.<br /> 
				
			</p>
			<hr id="hr1" ><br/><br/>
			<div class="row">
				<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
				<div>
					<table class="table table-striped table-bordered">
						<tr style="background-color: #79ABFF;">
							<th class="col-md-2 text-center">번호</th>
							<td>${record.qno}</td>
						</tr>
						<tr>
							<th class="col-md-2 text-center">제목</th>
							<td>${record.title}</td>
						</tr>
						<tr style="background-color: #79ABFF;">
							<th class="col-md-2 text-center">작성자</th> 
							<td>${record.genid}</td>
						</tr>
		
						<tr>
							<th class="col-md-2 text-center">등록일</th>
							<td>${record.postdate}</td>
						</tr>
						<tr style="background-color: #79ABFF;">
							<th colspan="2" class="text-center">내용</th>
						</tr>
						<tr>
							<td colspan="2">${record.qcontent}</td>
						</tr>
		
					</table>
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="text-center">	
					<a href="<c:url value='/partner/partnerQnA/partner_QnAList.do'/>" class="btn btn-success">목록</a>		
				</div>
			</div>
			<br/>
			<hr id="hr2">
			<div class="row">
				<h3 class="text-center">회원분들에게 답변 해주세요!</h3>
				<br/>
				<form class="form-inline" id="frm" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" name="qno" value="${record.qno}" />
				
					<!-- 수정 및 삭제용 파라미터 -->
					<input type="hidden" name="ano" />
					<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="acontents" />
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
