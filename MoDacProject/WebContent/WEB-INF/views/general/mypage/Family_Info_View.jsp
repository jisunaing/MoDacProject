<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.coolfieldset.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/jquery.coolfieldset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>" />


<style>
h3 {
	text-align: center
}

.panel {
	margin-top: 50px;
	margin-left: 8%;
	padding-top: 20px;
	padding-bottom: 20px
}

tr th {
	text-align: center
}

#hr {
	margin-left: 35%
}

h2 {
	padding-top: 50px
}

fieldset {
	margin-top: 50px
}

form {
	margin-left: 15%
}
</style>

<!-- body 시작 -->
<div class="container">
	<div class="main_column">
		<div class="text_light">
			<div class="panel panel-default" style="width: 70%">
				<h2 style="text-align: center">가족 정보</h2>
				<br />
				<p class="secondary-heading" style="text-align: center">
					가족정보를 등록할 시 대리 예약/접수가 편리해집니다!<br /> 매번 정보를 입력할 필요없이 간편하게 관리하세요.
				</p>
				<br />
				<hr style="border: solid 1px black; width: 30%;" id="hr">
				<br /> <br />

				<fieldset id="fieldset1" class="coolfieldset expanded">
					<legend> 홍길동 </legend>
					<div>
						<h3>홍길동님의 정보</h3>
						<br />
						<div class="table-responsive  col-sm-8 col-sm-offset-2">
							<table class="table table-bordered ">

								<tr>
									<th>생년월일</th>
									<td>1998-08-19</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>여자</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>010-5555-7777</td>
								</tr>

								<tr>
									<th class="col-sm-2" style="text-align: center">혈액형</th>
									<td class="col-sm-5">O</td>
								</tr>
								<tr>
									<th>키</th>
									<td>180cm</td>
								</tr>
								<tr>
									<th>몸무게</th>
									<td>70kg</td>
								</tr>
								<tr>
									<th>현재 복용중인 약</th>
									<td>없음</td>
								</tr>
								<tr>
									<th>임신여부 및 가능성</th>
									<td>없음</td>
								</tr>

							</table>
							<br /> <br />
							<div class="row col-sm-offset-5">
								<a class="btn btn-warning"
									href="<c:url value='/general/mypage/familyinfo_edit.do'/>">수정</a>
								<a class="btn btn-warning">삭제</a>
							</div>
							<br /> <br /> <br />
						</div>

					</div>


				</fieldset>
				<fieldset id="fieldset2" class="coolfieldset expanded">
					<legend>홍홍홍</legend>
					<div>
						<h3>홍홍홍님의 정보</h3>
						<br />
						<div class="table-responsive  col-sm-8 col-sm-offset-2">
							<table class="table table-bordered ">

								<tr>
									<th>생년월일</th>
									<td>1998-08-19</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>여자</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>010-5555-7777</td>
								</tr>

								<tr>
									<th class="col-sm-2" style="text-align: center">혈액형</th>
									<td class="col-sm-5">O</td>
								</tr>
								<tr>
									<th>키</th>
									<td>180cm</td>
								</tr>
								<tr>
									<th>몸무게</th>
									<td>70kg</td>
								</tr>
								<tr>
									<th>현재 복용중인 약</th>
									<td>없음</td>
								</tr>
								<tr>
									<th>임신여부 및 가능성</th>
									<td>없음</td>
								</tr>

							</table>
							<br /> <br />
							<div class="row col-sm-offset-5">
								<a class="btn btn-warning"
									href="<c:url value='/general/mypage/familyinfo_edit.do'/>">수정</a>
								<a class="btn btn-warning">삭제</a>
							</div>
							<br /> <br /> <br />
						</div>

					</div>

				</fieldset>

				<fieldset id="fieldset4" class="coolfieldset expanded">
					<legend style="color: #2b68a7">가족 추가하기</legend>
					<form class="form-horizontal">

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">이름</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="name"
									placeholder="이름을 입력하세요">
							</div>
						</div>
						<div class="form-group">
							<label for="use" class="col-sm-2 control-label">성별</label>
							&nbsp;&nbsp;&nbsp; <label class="radio-inline"> <input
								type="radio" name="inlineRadioOptions" id="inlineRadio1"
								value="option1">여자
							</label> <label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">남자
							</label>
						</div>
						<div class="form-group">
							<label for="birthdate" class="col-sm-2 control-label">생년월일</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="birthdate">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">연락처</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="email"
									placeholder="abcd@***.com">
							</div>
						</div>
						<br />
						<div class=" col-sm-offset-2 col-sm-8"
							style="font-weight: lighter;">아래는 필수 입력 사항이 아니지만 등록시 접수가
							편리합니다.</div>
						<br /> <br />

						<div class="form-group ">
							<label for="id" class=" col-sm-2 control-label">혈액형</label>
							<div class="col-sm-4">
								<select class=" form-control" id="select">
									<option>혈액형을 입력하세요</option>
									<option>A</option>
									<option>B</option>
									<option>O</option>
									<option>AB</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="pwd" class="col-sm-2 control-label">키</label>
							<div class="input-group col-sm-3">
								<input type="text" class="form-control" id="weightinput"
									placeholder="몸무게 입력">
								<div class="input-group-addon">kg</div>
							</div>
						</div>

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">몸무게</label>
							<div class="input-group col-sm-3">
								<input type="text" class="form-control" id="weightinput"
									placeholder="몸무게 입력">
								<div class="input-group-addon">kg</div>
							</div>
						</div>
						<div class="form-group">
							<label for="birthdate" class="col-sm-2 control-label">현재
								복용중인 약</label>
							<div class="col-sm-4">
								<textarea class="form-control" rows="3"
									placeholder="현재 복용중인 약을 작성하세요"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="use" class="col-sm-2 control-label">임신 여부 및
								가능성</label> &nbsp;&nbsp;&nbsp; <label class="radio-inline"> <input
								type="radio" name="inlineRadioOptions" id="inlineRadio1"
								value="option1">있다
							</label> <label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">없다
							</label>
						</div>
						<div class="form-group">
							<label for="use" class="col-sm-2 control-label">이용약관</label>
							<div class=" col-sm-8">※ 대리접수 유의사항 가족(부모/자녀) 등록 시 등록하는 가족의
								위임을 받았음을 확인합니다. 무단으로 대리접수 시 개인정보처리에 관한 법률에 위배될 수 있습니다. (등록 할 대상에
								한하여 1회 동의 진행)</div>

							<label class="radio-inline col-sm-offset-2">
								&nbsp;&nbsp;&nbsp; <input type="radio" name="inlineRadioOptions"
								id="inlineRadio1" value="option1">동의
							</label>

						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">추가하기</button>
							</div>
						</div>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
	<!-- 사이드 바 -->
	<div style="padding-top: 15%">
		<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp"%>
	</div>
	<!-- 사이드바 끝 -->
</div>
<!-- container -->

<script>
	$('#fieldset1').coolfieldset({
		collapsed : true
	});
	$('#fieldset2').coolfieldset({
		collapsed : true
	});
	$('#fieldset3').coolfieldset({
		collapsed : true
	});
	$('#fieldset4').coolfieldset({
		collapsed : true
	});
</script>
