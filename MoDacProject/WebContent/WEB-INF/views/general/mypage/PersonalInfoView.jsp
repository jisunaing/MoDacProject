<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>개인정보 보기</title>
<style>

tr th{
	text-align: center;
}
.panel{
	margin-top:50px;
	margin-left: 8%;
	padding-top:20px;
}

#edit{
	align-self: center
}
</style>


<!-- body 시작 -->
<div class="container">
	<div class="main_column">
        
<div class="text_light">
	<div class="panel panel-default" style="width: 70%">
	  <div class="panel-body">
	  	<div class="page-header text-center">
			<h2>
				${personalinfo.genname}님의 회원정보 <small> 개인정보</small>
			</h2>
			<br/>
		</div>
		<br/><br/>
		<div class="table-responsive  col-sm-8 col-sm-offset-2">
		  <table class="table table-bordered ">
		  	<tr >
		  		<th class="col-sm-2" style="text-align: center">
		  			아이디
		  		</th>
		  		<td class="col-sm-5">
		  			${personalinfo.genid}
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			비밀번호
		  		</th>
		  		<td>
		  			${personalinfo.pwd}   
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			생년월일
		  		</th>
		  		<td>
		  			${personalinfo.birthdate}
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			성별
		  		</th>
		  		<td>
		  			${personalinfo.gender}
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			이메일
		  		</th>
		  		<td>
		  			${personalinfo.email}
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			주소
		  		</th>
		  		<td>
		  			${personalinfo.addr}
		  		</td>
		  	</tr>
		  </table>
		  <br/><br/>
		  <div class="row">
		  	<a class="btn btn-warning col-sm-offset-4" href="<c:url value='/general/mypage/personalinfoEdit.do'/>" >수정하기</a>
		  	<a class="btn btn-warning" href="<c:url value='/general/mypage/personalinfoWithdraw.do'/>" >탈퇴하기</a>
		  </div>
		  <br/><br/><br/>
		</div>
	   	</div>	
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

<!-- body 끝 -->