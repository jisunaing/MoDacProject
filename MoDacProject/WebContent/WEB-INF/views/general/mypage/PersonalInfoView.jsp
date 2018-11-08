<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/IsGenMember.jsp" %>
<link href="<c:url value='/css/jumbo.css'/>" rel="stylesheet">

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
  margin-left: 200px; /* Same as the width of the sidenav  */
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
<div class="jumbotron jumbotron-billboard" style="height: 300px">
  <div class="img">
	  <img src="<c:url value='/Images/plasticheart.jpg'/>" style="min-height:700px; height: auto;width:100%;margin-top:-200px" id="toppic"/>
  </div>
</div>
<div class="container" id="dv">
		 
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
		  			<button class="btn btn-primary" type="submit">비밀번호 변경하기</button>
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
		  			<c:if test="${personalinfo.gender eq 'F'}" var="isFemale">
		  				여자
		  			</c:if>
		  			<c:if test="${!isFemale}">
		  				남자
		  			</c:if>
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
		  			${extrainfo.addr} ${extrainfo.addrDetail}
		  		</td>
		  	</tr>
		  </table>
		  <br/><br/>
		  <div class="row">
		  	<a class="btn btn-warning col-sm-offset-4" href="<c:url value='/general/mypage/personalinfoEdit.do'/>" >수정하기</a>
		  	<a class="btn btn-warning" data-toggle="modal" data-target="#basicModal" href="<c:url value='/general/mypage/personalinfoWithdraw.do'/>" >탈퇴하기</a>
		  </div>
		  
		  <!-- 모달 창 -->
          <div class="modal fade" id="basicModal">
             <div class="modal-dialog">
                <div class="modal-content">
                   <div class="modal-header">
                      <!-- 모달닫기:data-dismiss="modal" -->
                      <button class="close" data-dismiss="modal">
                         <span aria-hidden="true">&times;</span>
                      </button>
                   
                   </div>
                   <div class="modal-body" style="text-align: center;" >

			                      탈퇴하시면 그동안 작성하신 모든 내역들이 삭제됩니다.<br/>
			          	정말로 탈퇴하시겠습니까?

                   </div>
                   <div class="modal-footer">
                      <button type="button" id="okbutton" class="btn btn-primary" >확 인</button>
                      <button type="button" id="cancelbutton" class="btn btn-primary" data-dismiss="modal">취 소</button>
                   </div>
                </div>
             </div>
          </div>
          <!-- 모달 창 끝 -->
		  <br/><br/><br/>
		</div>
	   	</div>
	
<!-- container -->

<!-- body 끝 -->