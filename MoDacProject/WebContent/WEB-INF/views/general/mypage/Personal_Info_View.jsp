<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>개인정보 보기</title>
<style>

tr th{
	text-align: center;
}
 
</style>


<!-- body 시작 -->
<div class="container">
	
	<div class="panel panel-default">
	  <div class="panel-body">
	  	<div class="page-header text-center">
			<h2>
				OOO님의 회원정보 <small> 개인정보</small>
			</h2>
		</div>
		<br/><br/>
		<div class="table-responsive  col-sm-8 col-sm-offset-2">
		  <table class="table table-bordered ">
		  	<tr >
		  		<th class="col-sm-2" style="text-align: center">
		  			이름
		  		</th>
		  		<td class="col-sm-5">
		  			홍길동
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			비밀번호
		  		</th>
		  		<td>
		  			****   
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			생년월일
		  		</th>
		  		<td>
		  			1998-08-19
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			생별
		  		</th>
		  		<td>
		  			여자
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			이메일
		  		</th>
		  		<td>
		  			email@gmail.com
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>
		  			주소
		  		</th>
		  		<td>
		  			가산동
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

<!-- body 끝 -->