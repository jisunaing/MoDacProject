<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>개인 건강정보</title>
<style>
tr th {
	text-align: center;
}
.panel {
	margin-top: 50px;
	margin-left: 15%;
	padding-top: 20px;
}
</style>
<div class="container">
	
	<div class="panel panel-default" style="width: 70%">
		<div class="panel-body">
			<div class="page-header text-center">
				<h2>${genid}님의 건강정보</h2>
				<br />
			</div>
			<br />
			<br />
			<div class="table-responsive  col-sm-8 col-sm-offset-2">
				<table class="table table-bordered ">
					<tr>
						<th class="col-sm-2" style="text-align: center">혈액형</th>
						<td class="col-sm-3">${healthstate.bloodtype}</td>
					</tr>
					<tr>
						<th>키</th>
						<td>${healthstate.height}</td>
					</tr>
					<tr>
						<th>몸무게</th>
						<td>${healthstate.weight}</td>
					</tr>
					<tr>
						<th>임신여부</th>
						<td>${healthstate.pregnant}</td>
					</tr>
					<tr>
						<th>복용중인 약</th>
						<td>${healthstate.medicine}</td>
					</tr>
					<tr>
						<th>기타</th>
						<td>${healthstate.etc}</td>
					</tr>

				</table>
				<br />
				<br />
				<div class="row">
					<%-- <a class=" col-sm-offset-5 btn btn-warning" href="<c:url value='/general/mypage/healthinfo_edit.do'/>">수정하기</a> --%>
					<a class=" col-sm-offset-5 btn btn-warning" href="<c:url value='/general/mypage/healthstateEdit.do?hsid=${genid}'/>">수정하기</a>
				</div>
				<br />
				<br />
				<br />
			</div>
		</div>
	</div>		
</div>
<!-- container -->
