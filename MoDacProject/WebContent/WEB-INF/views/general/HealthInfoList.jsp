<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.table{
		color:black;
	}
	.title {
		color:black;
	}
</style>
<!-- body 시작 -->
<div class="container">
	<br/>
	<h2>${requestScope.categname}</h2>
	<br/>
	<table class="table table-hover">
		<thead>
		  <tr>
		    <th>번 호</th>
		    <th>제 목</th>
		    <th>등록일</th>
		  </tr>
		</thead>
		<tbody>
		<c:if test="${empty requestScope.records}" var="isEmpty">
			<tr>
				<td>등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${not isEmpty}">
			<c:forEach var="records" items="${requestScope.records}">
			  <tr>
			    <td>${records.healthinfono}</td>
			    <td><a class="title" href="<c:url value='/general/HealthInfoView.do?healthinfono=${records.healthinfono}'/>">${records.title}</a></td>
			    <td>${records.postdate}</td>
			  </tr>
		  </c:forEach>
		</c:if>
		</tbody>
	</table>
</div><!-- container -->

<!-- 페이징 -->
<div class="row">
	<div>${pagingString}</div>
</div>
