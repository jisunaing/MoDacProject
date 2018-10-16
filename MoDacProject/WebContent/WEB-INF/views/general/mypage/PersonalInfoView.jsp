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
	margin-left: 15%; 
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
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
   
  </div><!-- /.container-fluid -->
</nav>
 <div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
  <button class="dropdown-btn">Dropdown 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
  <a href="#contact">Search</a>
</div>
<div class="container">
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
<!-- 사이드 바 -->
<%-- <div style="padding-top:15%">

<%@ include file="/WEB-INF/views/general/mypage/Sidebar.jsp" %>
</div>
  --%>
<!-- 사이드바 끝 -->
</div>
<!-- container -->

<!-- body 끝 -->