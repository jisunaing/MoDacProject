<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsGenMember.jsp" %>
<style>
#hr{
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}
form{
	padding-left : 5%
}
.panel{
	margin-top:50px;
	margin-left: 10%;
	padding-top:20px;
	padding-bottom:20px
}
</style>
<script>

 	$(document).ready(function() {
		  $('#summernote').summernote({
			  placeholder: '내용을 입력하세요',
		        height: 300
		  });
		  
		}); 
</script>
<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<!-- body 시작 -->
<div id="contain"class="container">

<div class="panel panel-default" style="width: 80%;">
	<br/><br/>
	<h2 style="text-align: center">사이트 문의</h2><br/>
	<p style="text-align: center;">
	회원님의 의견을 적극 수렴하겠습니다!
	</p><br/>
	<hr id="hr"><br/><br/>
	
	
	<div class="row">
		<form class="form-horizontal" method="post" action="<c:url value='/general/qna/qnaWrite.do'/>">

			<div class="form-group">
				<div  style="padding-left:10%; width:70%">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력하세요">
				</div>
			</div>
			<div class="form-group col-sm-11">
				<div >
					<textarea class="form-control" id="summernote" name="content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-5 col-sm-10">
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
			</div>
		</form>

	</div>
</div>	

</div>
	<!-- container -->

