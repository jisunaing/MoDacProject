<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

#hr{
	margin-left: 40%;
	border: solid 1px black;
	width: 20%
}
form{
	padding-left : 12%
}
.panel{
	margin-top:50px;
	margin-left: 15%;
	padding-top:20px;
	padding-bottom:20px
}
</style>
<title>건강문의</title>

<!-- body 시작 -->
<div id="contain"class="container">
<div class="panel panel-default" style="width: 70%;">
	<br/><br/>
	<h2 style="text-align: center">건강문의하기</h2><br/>
	<p style="text-align: center;">
	회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br/> 
	회원님의 증상에 대해 의사선생님께 언제든지 궁금한걸 물어보세요~
	</p><br/>
	<hr id="hr"><br/><br/>
	<div class="row">
		<form class="form-horizontal" method="post" action="#">

			<div class="form-group">
				<label for="title" class="col-sm-2  control-label">제목</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력하세요">
				</div>
			</div>

			<div class="form-group">
				<label for="content" class="col-sm-2  control-label">내용</label>
				<div class="col-sm-7">
					<textarea rows="10" class="form-control" id="summernote" name="content"></textarea>
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
	
</div><!-- container -->
