<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsGenMember.jsp" %>
<title>내 건강정보</title>
<style>
form {
	margin-left: 15%;
}

.panel {
	margin-top: 50px;
	margin-left: 8%;
	padding-top: 20px;
	padding-bottom: 20px
}
#hr {
	margin-left: 40%
}

#height {
	margin-right: 20px
}

#weight {
	margin-right: 20px
}
</style>

<!-- body 시작 -->

<div class="container" id="dv">
	<div style="text-align: center">
		<br />
		<h2>건강정보 등록</h2>
		<br />
		<p class="secondary-heading">접수를 더욱 편리하게 하기 위하여 회원님의 건강관련 정보를
			등록하세요</p>
		<br />
		<hr align="center" style="border: 1px solid lightgray" width="20%"
			id="hr">
		<br />
		<br />
	</div>
	<form class="form-horizontal" method="post" action="<c:url value='/general/mypage/healthinfoWrite.do?fno=${fno}'/>">
		<div class="form-group ">
				<label for="id" class=" col-sm-3 control-label">혈액형</label>
				<div class="col-sm-5">
					<select class=" form-control" name="bloodtype">
						<option>혈액형을 입력하세요</option>
						<option>A</option>
						<option>B</option>
						<option>O</option>
						<option>AB</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="pwd" class="col-sm-3 control-label">키</label>
				<div class="input-group col-sm-4" style="padding-left:15px">
					<input type="text" class="form-control" name="height" placeholder="156">
					<div class="input-group-addon">cm</div>
				</div>
			</div>

			<div class="form-group">
				<label for="name" class="col-sm-3 control-label" >몸무게</label> 
				<div class="input-group col-sm-4" style="padding-left:15px">
					<input type="text" class="form-control" name="weight" placeholder="60">
					<div class="input-group-addon">kg</div>
				</div>
			</div>
			<div class="form-group">
				<label for="use" class="col-sm-3 control-label">임신 여부 및 가능성</label> &nbsp;&nbsp;&nbsp; 
				<label class="radio-inline"> 
					<input type="radio" name="pregnant" value="Y">있다
				</label> 
				<label class="radio-inline"> 
					<input type="radio" name="pregnant" value="N" checked="checked">없다
				</label>
			</div>
			<div class="form-group">
				<label for="birthdate" class="col-sm-3 control-label">현재 복용중인 약</label>
				<div class="col-sm-5">
					<textarea class="form-control" rows="3" name="medicine"placeholder="현재 복용중인 약을 작성하세요"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="birthdate" class="col-sm-3 control-label">기타</label>
				<div class="col-sm-5">
					<textarea class="form-control" rows="3" name="etc" placeholder="기타 사항을 입력해주세요"></textarea>
				</div>
			</div>
		<div class="form-group">
			<div style="padding-left:35%">
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
		</div>
		<br />
	</form>

</div>
<!-- container -->
