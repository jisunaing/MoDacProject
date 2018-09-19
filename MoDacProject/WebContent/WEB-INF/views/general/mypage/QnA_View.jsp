<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>사이트 문의하기</title>
<style>

tr th{
	text-align: center;
}
</style>
<script>
	$(document).ready(function() {
		  $('#summernote').summernote();
		});
</script>
<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>


<!-- body 시작 -->
<div class="container">
	<div class="panel panel-default">
		<div class="row">
			<div class="heading-content">
				<h2 class="primary-heading">사이트 문의</h2>
			</div><br/>
			<p class="secondary-heading">회원님의 의견을 적극 수렴하겠습니다!</p>
		</div>
		<hr style="border: solid 1px black;width: 10%;align-content: center "><br/><br/>
		
		<div class="row">
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
			  <table class="table table-bordered" >
			    <tr>
			    	 <th>
			   		 제목
			    	</th>
			    	
			    </tr>
			   
			    <tr>
			    	<td>
			    		내용
			    		내용
			    		내용내용
			    		내용
			    	
			    	
			    	</td>
			    </tr>
			  </table>
			</div>
	
				
			
		</div><br/>
		<div class="row">
			<a type="submit" class="btn btn-danger" href="<c:url value='/general/qna/qna_edit.do'/>">수정하기</a>
			<a type="submit" class="btn btn-danger">취소</a>
		</div>
		<br/>
		<hr style="border: dotted 1px black;width: 50%;align-content: center "><br/><br/>
		<div class="row">
		<!-- 한줄 코멘트 입력 폼-->
		<h2>관리자와 소통하세요!</h2><br/>
		<form class="form-inline" id="frm">
			<input type="hidden" name="no" value="${record.no}" />
			<!-- 수정 및 삭제용 파라미터 -->
			<input type="hidden" name="cno" /> <input placeholder="댓글을 입력하세요"
				id="title" class="form-control" type="text" size="100"
				name="onelinecomment" /> <input class="btn btn-success"
				id="submit" type="button" value="등록" />

		</form>
	<br/><br/>
	</div>
	<div class="row" id="comments"></div>
	</div>
	
