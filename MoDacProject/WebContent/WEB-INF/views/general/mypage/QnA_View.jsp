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
	margin-left: 25%
}
</style>
<script>
	/* $(document).ready(function() {
		  $('#summernote').summernote();
		}); */
</script>
<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<!-- body 시작 -->
<div id="contain"class="container">
	<h2 style="text-align: center">사이트 문의</h2>
	<br />
	<p style="text-align: center;">
		회원님의 의견을 적극 수렴하겠습니다!<br /> 
		
	</p><br/>
	<hr id="hr1"><br/><br/>
	<div class="row">
		<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
		<div>
			<table class="table table-striped table-bordered">
				<tr>
					<th class="col-md-2 text-center">번호</th>
					<td>1</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">제목</th>
					<td>제목</td>
				</tr>
				<tr>
					<th class="col-md-2 text-center">작성자</th>
					<td>홍길동</td>
				</tr>

				<tr>
					<th class="col-md-2 text-center">등록일</th>
					<td>2018-08-08</td>
				</tr>
				<tr>
					<th colspan="2" class="text-center">내용</th>
				</tr>
				<tr>
					<td colspan="2"  class="text-center">내용입니다</td>
				</tr>

			</table>
		</div>
	</div>
	<!-- row -->
	<div class="row">
		<div class="text-center">
			<a href="#" class="btn btn-success">수정</a>
			<a href="#" class="btn btn-success">삭제</a>
			<a href="#" class="btn btn-success">목록</a>

		</div>
	</div>
	<br/>
	<hr id="hr2">
	<div class="row">
		<h3 class="text-center">관리자와 소통하세요!</h3>
		<br/>
		<form class="form-inline" id="frm">
			<!-- 수정 및 삭제용 파라미터 -->
			<input placeholder="댓글을 입력하세요" id="title" class="form-control" type="text" size="50" name="onelinecomment" /> 
			<input class="btn btn-success" 	id="submit" type="button" value="등록" />

		</form>

	</div><br/><br>
	<div class="row" id="comments">
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
			  <table class="table table-bordered" >
			    <tr>
			    	 <th>
			   		 답변
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
	</div>
	<br/><br/><br/><br/>
	
	</div>
	
	<!-- container -->
