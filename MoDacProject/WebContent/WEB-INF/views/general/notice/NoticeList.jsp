<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
<style>
tr th{
	text-align: center
}

</style>

	<!-- body 시작 -->
	<div class="container" style="text-align: center;margin-top:50px" id="dv">
		<h2>공지사항</h2>
		<br><br>
		<div class="table-responsive">
		  <table class="table table-hover">
		    <tr>
		    	<th class="col-sm-1">번호</th>
		    	<th>제목</th>
		    	<th class="col-sm-2">등록일</th>
		    </tr>
		    <c:if test="${empty list}" var="isEmpty">
		    	<tr>
					<td colspan="3">등록된 공지사항이 없어요</td>
				</tr>
		    </c:if>
		    <c:if test="${not isEmpty}">
		    	<c:forEach items="${list}" var="record" varStatus="loop">
			    	<tr>
				    	<td>${record.no}</td>
				    	<td><a href="<c:url value='/general/notice/noticeView.do?no=${record.no}'/>">${record.title}</a></td>
				    	<td>${record.postdate}</td>
				    </tr>
		    	</c:forEach>
		    	
		    </c:if>
		  </table>
		</div>
	</div><!-- container -->