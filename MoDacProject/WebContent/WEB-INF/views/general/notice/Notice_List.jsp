<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
<style>
tr th{
	text-align: center
}

#contain{
	margin-top:50px
}
</style>

	<!-- body 시작 -->
	<div class="container" style="text-align: center" id="contain">
		<h2>공지사항</h2>
		<br><br>
		<div class="table-responsive">
		  <table class="table table-hover">
		    <tr>
		    	<th>번호</th>
		    	<th>등록일</th>
		    	<th>제목</th>
		    	<th>작성자</th>
		    </tr>
			    <tr>
			    	<td>1</td>
			    	<td>2018-08-08</td>
			    	<td><a href="<c:url value='/general/notice/notice_view.do'/>">알립니다!</a></td>
			    	<td>관리자1</td>
			    </tr>
		    <tr>
		    	<td>2</td>
		    	<td>2018-08-08</td>
		    	<td>사이트 재정비 예정일</td>
		    	<td>관리자2</td>
		    </tr>
		  </table>
		</div>
	</div><!-- container -->
