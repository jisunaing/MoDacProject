<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/css/jumbo.css'/>" rel="stylesheet">

<style>
	.table{
		color:black;
	}
	.title {
		color:black;
	}
	#img_resize{
		height: auto;
		width: 100%;
		margin-top: -250px;
	}
</style>
<!-- 카테고리상세 -->
<div class="jumbotron jumbotron-billboard" style="height: 600px;">
  <div class="img">
  	${record.categimage }
  </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
              <h2 style="margin-top:150px;text-align: left; padding-left:20%">${record.categname}</h2>
   	          <br/>
				<h4 style="padding-left:20%">
					${record.explanation }	                
				</h4>
            </div>
        </div>
    </div>
</div>
<!-- ~카테고리상세 -->
<!-- body 시작 -->
<div class="container" style="margin-top: -40px;">
	<br/>
	<br/>
	
	<!-- 카테고리 하위 리스트 -->
	<div class="row">
		<div class="col-md-12">
			<div class="table-responsive">
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
							<td colspan="3">등록된 게시물이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:forEach var="records" items="${requestScope.records}">
						  <tr>
						    <td>${records.healthinfono}</td>
						    <td><a class="title" href="<c:url value='/general/HealthInfoView.do?categno=${record.categno }&healthinfono=${records.healthinfono}'/>">${records.title}</a></td>
						    <td>${records.postdate}</td>
						  </tr>
					  </c:forEach>
					</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div><!-- container -->

<!-- 페이징 -->
<div class="row">
	<div>${pagingString}</div>
</div>
