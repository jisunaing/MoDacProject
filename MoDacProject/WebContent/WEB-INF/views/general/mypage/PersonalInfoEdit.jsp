<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
<style>
form{
	padding-left : 13%
}
.text-center{
	padding-top:50px
}
.panel{
	margin-top:50px;
	margin-left: 8%;
	padding-top:20px;
	padding-bottom:20px
}
#hr{
	margin-left: 40%
}
</style>
<script>
//생일 가져와서 년,월,일로 select에 넣어주기 위한 제이쿼리
	$(function(){
		var month= $("#month").children();
		var day = $("#day").children();
		for(var i=0; i<day.length;i++){
			if($(month[i]).val()==${birthdate.month}){
				$(month[i]).attr("selected","selected");
			}
			if($(day[i]).val()==${birthdate.day}){
				$(day[i]).attr("selected","selected");
			}
		}
	});
	
	
	
</script>

<!-- body 시작 -->
<div class="container">
<div class="main_column">
        
<div class="text_light">
<div class="panel panel-default" style="width: 70%;">
	<div class="text-center">
		<h2>
			${personalinfo.genname}님의 정보수정
		</h2>
		<br/>
	</div><br/>
	<hr align="center" style="border: 1px solid lightgray" width="20%" id="hr">
	<div class="row text-center">
		회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <br/><a href="#" style="color: #337ab7">개인정보처리방침</a>
	</div><br/><br/>
	<form class="form-horizontal" action="<c:url value='/general/mypage/personalinfoEditProcess.do'/>" method="post">
		<div class="form-group">
			<label for="id" class="col-sm-3 control-label">아이디</label>
			<div class="col-sm-6">
				<input type="hidden" name="genid" value="${personalinfo.genid}"/>
				<input type="text" class="form-control" name="genid" id="genid" value="${personalinfo.genid}" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="pwd" class="col-sm-3 control-label">비밀번호</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" name="pwd" value="${personalinfo.pwd}" placeholder="비밀번호를 입력하세요">
			</div>
		</div>
		<div class="form-group">
			<label for="pwd2" class="col-sm-3 control-label">비밀번호 확인</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="pwd2" placeholder="비밀번호를 다시 입력하세요">
			</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label">이름</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="genname" value="${personalinfo.genname}" placeholder="이름을 입력하세요">
			</div>
		</div>
		
		<div class="form-group">
				<label for="birthdate" class="col-sm-3 control-label">생년월일</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="year" name="year" value="${birthdate.year}" placeholder="년(4자)">
				</div>
				<div class="col-sm-2">
				    <select class="form-control" id="month" name="month">
					  <option>월</option>
					  <option>01</option>
					  <option>02</option>
					  <option>03</option>
					  <option>04</option>
					  <option>05</option>
					  <option>06</option>
					  <option>07</option>
					  <option>08</option>
					  <option>09</option>
					  <option>10</option>
					  <option>11</option>
					  <option>12</option>
					</select>
				</div>
				<div class="col-sm-2">
				    <select class="form-control" id="day" name="day">
					  <option>일</option>
					  <option>01</option>
					  <option>02</option>
					  <option>03</option>
					  <option>04</option>
					  <option>05</option>
					  <option>06</option>
					  <option>07</option>
					  <option>08</option>
					  <option>09</option>
					  <c:forEach begin="10" end="31" var="item" >
					  	<option >${item}</option>
					  </c:forEach>
					</select>
				</div>
			</div>
		<div class="form-group">
			<label for="use" class="col-sm-3 control-label">성별</label>
			&nbsp;&nbsp;&nbsp;
			
			<label class="radio-inline">
				<input type="radio" name="gender"  value="F"  <c:if test="${personalinfo.gender eq 'F'}" var="isfemale">checked</c:if>>여자
			</label> 
			<label class="radio-inline"> 
				<input type="radio"	name="gender"  value="M" <c:if test="${not isfemale}"> checked</c:if>>남자
			</label>
		</div>
		<div class="form-group">
			<label for="email" class="col-sm-3 control-label">이메일</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="email"value="${personalinfo.email}" placeholder="abcd@***.com">
			</div>
		</div>
		<div class="form-group">
			<label for="tel" class="col-sm-3 control-label">전화번호</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="phone" value="${personalinfo.phone}" placeholder="01012345678">
			</div>
		</div>
		<div class="form-group">
			<label for="addr" class="col-sm-3 control-label">주소</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="addr" value="${personalinfo.addr}" placeholder="주소를 입력하세요">
			</div>
		</div>
		<br/>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-10">
				<button type="submit" class="btn btn-primary">수정하기</button>
			</div>
		</div>
	</form>

</div>
</div>
</div>
<!-- 사이드 바 -->
<div style="padding-top:15%">

<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
</div>

<!-- 사이드바 끝 -->

</div>
<!-- container -->
