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
	margin-left: 5%; 
	padding-top:20px;
}
#edit{
	align-self: center
}




/* Fixed sidenav, full height */
.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width:100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: #f1f1f1;
}

/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color: green;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
  display: none;
  background-color: #262626;
  padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}
</style>
<!-- body 시작 -->
<img src="<c:url value='/Images/plasticheart.jpg'/>" id="toppic"/>
<div class="container" id="dv">
	 <div class="panel panel-default" style="width: 90%">
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
<!-- container -->

<!-- body 끝 -->