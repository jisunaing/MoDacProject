<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.table{
		color:black;
	}
</style>
<!-- body 시작 -->
<div class="container">
	<br/>
	<h2>소아시력 카테고리 관련 글</h2>
	<br/>
	<table class="table table-hover">
		<thead>
		  <tr>
		    <th>#</th>
		    <th>제 목</th>
		    <th>등록일</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>3</td>
		    <td><a style="color:black;" href="<c:url value='/general/HealthInfoView.do'/>"> 어린이 시력, 왜 약해 지나 </a></td>
		    <td>2018-09-18</td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>글 제목이 들어갑니다</td>
		    <td>2018-07-15</td>
		  </tr>
		  <tr>
		    <td>1</td>
		    <td>글 제목이 들어갑니다</td>
		    <td>2018-06-18</td>
		  </tr>
		 </tbody>
	</table>
</div><!-- container -->
