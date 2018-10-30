<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>사이트 문의하기</title>
<style>

tr th{
	text-align: center;
}
#hr1{
	margin-left: 40%;
	border: solid 1px black; 
	width: 20%
}
#hr2{
	margin-left: 10%;
	border: solid 1px black; 
	width: 80%;
	margin-top: 30px;
	margin-bottom:30px
}
#contain{
	margin-top:50px
}
#frm{
	margin-left: 18%
}
</style>

<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<script>

//해당 글번호에 대한 코멘트 목록을 가져오는 함수 
var showComments = function(key){		
	$.ajax({
		url:"<c:url value='/general/qna/qnareplyList.do'/>",
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
	console.log(JSON.stringify(data));
	var commentString="<h2 style=\"width:80%; margin-left:200px\">답변 목록</h2>";
	commentString+='<table class="table table-bordered" style="width:80%; margin-left:200px">';
	commentString+='<tr><th width="50%">코멘트</th><th width="20%">작성일</th><th>삭제</th></tr>';
	if(data.length==0){
		commentString+="<tr><td colspan='4'>등록된 댓글이 없어요</td></tr>";
	}
	$.each(data,function(index,comment){			
		commentString+='<tr>';
		/* if('${sessionScope.genid}' != comment["GENID"])
			commentString+='<td align="left">'+comment['RCONTENTS']+'</td>'; 
		else
			 */commentString+='<td align="left"><span style="cursor:pointer" class="commentEdit" title="'+comment["RNO"]+'">'+comment['RCONTENTS']+'</span></td>'; 		
		commentString+='<td>'+comment['REPLYDATE']+'</td>';
		commentString+='<td>';
		/* if('${sessionScope.genid}' == comment["GENID"]) */
			commentString+='<span  class="commentDelete" title="'+comment["RNO"]+'" style="cursor: pointer; color: green; font-size: 1.4em; font-weight: bold">삭제</span>';
		/* else
			commentString+='<span style="color: gray; font-size: 0.7em; font-weight: bold">삭제불가</span>';*/
		commentString+='</td></tr>'; 
	});		
	commentString+='</table>';
	
	$('#comments').html(commentString);
	
	//코멘트 수정/삭제 처리
	$('.commentEdit').click(function(){
		//rno값 출력
		console.log($(this).attr("title"));
		
		$('#title').val($(this).html());
		$('#submit').val('수정');
		
		//form의 hidden속성중 name="rno"값 설정
		$('input[name=rno]').val($(this).attr("title"));
		
	});
	
	$('.commentDelete').click(function(){			
		var rno_value = $(this).attr("title");
		
		$.ajax({
			url:"<c:url value='/general/qna/qnareplyDelete.do'/>",
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
	
	//코멘트 입력처리]
	$('#submit').click(function(){	
		
		if($(this).val()=='등록')
			var action="<c:url value='/general/qna/qnareplyWrite.do?no=${record.no}'/>";
		else
			var action="<c:url value='/general/qna/qnareplyEdit.do'/>";	
		
		$.ajax({
			url:action,
			data:$('#frm').serialize(),
			dataType:'text',
			type:'post',
			success:function(key){					
				showComments(key);
				if($('#submit').val()=='수정'){						
					$('#submit').val('등록');
					$('title').val('');
				}
				
			}		
		});		
		
	});
	
	//메모글 삭제처리]
	$('#del_memo').on('click',function(){
		if(confirm('정말로 삭제할래?')){
			location.replace("<c:url value='/BBS/Delete.bbs?no=${record.no}'/>");				
		}
	});
	
	
});


</script>
<!-- body 시작 -->
<div id="contain"class="container">
	<h2 style="text-align: center">사이트 문의</h2>
	<br />
	<p style="text-align: center;">
		회원님의 의견을 적극 수렴하겠습니다!<br /> 
		
	</p><br/>
	<hr id="hr1"><br/><br/>
	<div class="row">
		
		<div>
			<table class="table table-striped table-bordered" style="width: 80%; margin-left:10%">
				<tr>
					<th class="col-md-2 text-center">번호</th>
					<td>${record.no}</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">제목</th>
					<td>${record.title}</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">작성자</th>
					<td>${record.genid}</td>
				</tr>

				<tr>
					<th class="col-md-2 text-center">등록일</th>
					<td>${record.postadate}</td>
				</tr>
				<tr>
					<th colspan="2" class="text-center">내용</th>
				</tr>
				<tr>
					<td colspan="2"  class="text-center">${record.content}</td>
				</tr>

			</table>
		</div>
	</div>
	<!-- row -->
	<div class="row">
		<div class="text-center">
			<a href="<c:url value='/general/qna/qnaEdit.do?no=${record.no}'/>" class="btn btn-success">수정</a>
			<a href="<c:url value='/general/qna/qnaDelete.do?no=${record.no}'/>" class="btn btn-success">삭제</a>
			<a href="<c:url value='/general/qna/qnaList.do'/>" class="btn btn-success">목록</a>

		</div>
	</div>
	<br/>
	<hr id="hr2">
	<div class="row">
		<h3 class="text-center">관리자와 소통하세요!</h3>
		<br/>
		<form class="form-inline" id="frm" method="post">
			<input type="hidden" name="no" value="${record.no}" />
			<!-- 수정 및 삭제용 파라미터 -->
			<input type="hidden" name="rno" />
			<input placeholder="댓글을 입력하세요" class="form-control" type="text" size="50" name="rcontents" /> 
			<input class="btn btn-success" 	id="submit" type="button" value="등록" />

		</form>
	<br/><br>
	<div class="row" id="comments">
			<!-- ajax로 목록 -->
	</div>
	</div>
	<br/><br/><br/><br/>
	
	</div>
	<!-- container -->
