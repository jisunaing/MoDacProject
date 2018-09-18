<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>건강문의</title>

<!-- body 시작 -->
<div class="container">
	<h2 style="text-align: center">건강문의하기</h2><br/>
	<p style="text-align: center;">
	회원님과 제휴병원측만 확인 가능한 페이지 입니다.<br/> 
	해당 병원에서 이런 저런 검사는 하는지 특정 병원에게 문의하거나
	의사선생님께 질문을 남기는 곳입니다. 
	<br/> 언제든지 궁금한걸 물어보세요~
	</p>
	<hr style="border: solid 1px black;width: 20%;align-content: center "><br/><br/>
	<div class="row">
		<form class="form-horizontal" method="post" action="#">

			<div class="form-group">
				<label for="title" class="col-sm-2  control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력하세요">
				</div>
			</div>

			<div class="form-group">
				<label for="content" class="col-sm-2  control-label">내용</label>
				<div class="col-sm-5">
					<textarea rows="10" class="form-control" id="summernote" name="content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
			</div>
		</form>

	</div>
	
	
</div><!-- container -->
