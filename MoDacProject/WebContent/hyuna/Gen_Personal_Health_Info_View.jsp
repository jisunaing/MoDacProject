<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
<style>

tr th{
	text-align: center;
}
 
</style>

<!-- body 시작 -->
<div class="container">
	
	<div class="panel panel-default" style="width: 70%">
	  <div class="panel-body">
	  	<div class="page-header text-center">
			<h2>
				${USER_ID}님의 건강정보 
			</h2>
		</div>
		<br/><br/>
		<div class="table-responsive  col-sm-8 col-sm-offset-2">
		  <table class="table table-bordered ">
		  	<tr >
		  		<th class="col-sm-2" style="text-align: center">
		  			혈액형
		  		</th>
		  		<td class="col-sm-5">
		  			O
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			키
		  		</th>
		  		<td>
		  			180cm   
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			몸무게
		  		</th>
		  		<td>
		  			70kg
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			현재 복용중인 약
		  		</th>
		  		<td>
		  			없음
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			임신여부 및 가능성
		  		</th>
		  		<td>
		  			없음
		  		</td>
		  	</tr>
		  
		  </table>
		  <br/><br/>
		  <div class="row">
		  	<a class="btn btn-warning">수정하기</a>
		  </div>
		  <br/><br/><br/>
		</div>
	   	</div>	
	</div>

</div>
<!-- container -->

