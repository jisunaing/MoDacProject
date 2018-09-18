<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<title>내 건강정보</title>
<style>
	form{
		margin-left:21%;
	}
</style>

	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container" >
		<div class="panel panel-default">
		<div style="text-align: center">
		<br/>
			<h2>내 건강정보</h2>
			<br/>
				<p class="secondary-heading">접수를 더욱 편리하게 하기 위하여 회원님의 건강관련 정보를 등록하세요</p>
			<br/>
			<hr style="border: solid 1px black;width: 30%;align-content: center "><br/><br/>
		</div>
		<form class="form-horizontal">
			<label for="id" class="col-sm-2 control-label">혈액형</label>
			<div class="col-sm-4">
				<select class=" form-control">
					<option>혈액형을 입력하세요</option>
				  	<option>A</option>
				  	<option>B</option>
				  	<option>O</option>
				  	<option>AB</option>
				</select>
			</div><br/><br/>
			
			<div class="form-group">
				<label for="pwd" class="col-sm-2 control-label">키</label>
				<div class="input-group col-sm-2">
			      <input type="text" class="form-control" id="exampleInputAmount" placeholder="키 입력">
			      <div class="input-group-addon">cm</div>
			    </div>
			</div>
			
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">몸무게</label>
				<div class="input-group col-sm-2">
					<input type="text" class="form-control" id="exampleInputAmount" placeholder="몸무게 입력">
			      <div class="input-group-addon">kg</div>
				</div>
			</div>
			<div class="form-group">
				<label for="birthdate" class="col-sm-2 control-label">현재 복용중인 약</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="3" placeholder="현재 복용중인 약을 작성하세요"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="use" class="col-sm-2 control-label">임신 여부 및 가능성</label>
				&nbsp;&nbsp;&nbsp;
				<label class="radio-inline"> 
					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">있다
				</label> 
				<label class="radio-inline"> 
					<input type="radio"	name="inlineRadioOptions" id="inlineRadio2" value="option2">없다
				</label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">수정하기</button>
				</div>
			</div>
		</form>
		
		</div>
	</div>
	<!-- container -->
