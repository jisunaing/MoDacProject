<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 접수하는 페이지입니다.-->
<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->

<link href="<c:url value="/css/datetimepicker.css"/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
	crossorigin="anonymous"></script>
<script
	type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.0/moment-with-locales.min.js"></script>
	
<script type="text/javascript" src="<c:url value="/js/datetimepicker.js"/>"></script>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<style>
.row {
 margin: 0 auto;
 text-align: center;
}
/*가운데 배치를 위해[더 이쁘게 만들기 위해 넣은 것]*/
.in{
 display: inline-block;
 width: 50%;
 height: 100px
 }
/*가운데 배치를 위해[더 이쁘게 만들기 위해 넣은 것]*/
table{
	width: 600px;
}
.form-horizontal{
	clear: right;
}
.size1{
	min-width: 200px;width: 200px;
}
.size2{
	min-width: 200px;width: 200px;
}
.size3{
	width: 200px;
}
.size4{
	min-width: 200px;width: 300px;
}
.size5{
	min-width: 200px;
}
#float-right{
	float: right;
}
#nameUrl{
	width: 100%;
}
</style>
<!-- 달력 라이브러리 시작-->
	<script type="text/javascript">
    $(document).ready( function () {
        $('#picker').dateTimePicker({dateFormat: "YYYY-MM-DD HH:mm", locale: 'ko'});
    })
    </script>
	<!-- 달력 라이브러리 끝-->
	<!-- body 시작 -->
	<script>
	$(function(){
		$('.move').css('position','absolute').css('z-index','2').css('display', 'none');
		$('.container').css('position','relative').css('z-index','1');	
		
		$( "#tabletoggles" ).hide();
		$('#toggles').click(function(){		
			$('#tabletoggles').toggle(500,function(){
				var text = $('input:eq(0)').val();
				console.log(text);
				$('input:eq(0)').val(text=='가족 정보보기'?'가족 정보숨기기':'가족 정보보기');
			});
		});
		$('label').css('minWidth', '90px');
		/*
		$('#nameUrl').click(function(){//가족정보를 클릭하였을때
			$('#resname').val($('#names').html());
			$('#phone').val($('#phones').html());
			$('#fno').val($('#fnos').html());
		});
		*/
		$('#receipt').click(function(){
			$('.move').css('display','inline');
		});	

		
		/*
  display: none;
  z-index: 1000;
  position: fixed;
  width: 100%; height: 100%;
  left: 0; top: 0;
  background-color: rgba(0,0,0, 0.4);
  overflow-x: hidden;
		*/
		
	      $('#nameUrl1').click(function(){
	          $('#recname').val($('#names1').html());
	          $('#phone').val($('#phones1').html());
	       });
	       $('#nameUrl2').click(function(){
	          $('#recname').val($('#names2').html());
	          $('#phone').val($('#phones2').html());
	       });      
	       $('#nameUrl3').click(function(){
	          $('#recname').val($('#names3').html());
	          $('#phone').val($('#phones3').html());
	       });      
	       $('#nameUrl4').click(function(){
	          $('#recname').val($('#names4').html());
	          $('#phone').val($('#phones4').html());
	       });      
	       $('#nameUrl5').click(function(){
	          $('#recname').val($('#names5').html());
	          $('#phone').val($('#phones5').html());
	       });            
	       $('#nameUrl6').click(function(){
	          $('#recname').val($('#names6').html());
	          $('#phone').val($('#phones6').html());
	       });      
	       $('#nameUrl7').click(function(){
	          $('#recname').val($('#names7').html());
	          $('#phone').val($('#phones7').html());
	       });            
	       $('#nameUrl8').click(function(){
	          $('#recname').val($('#names8').html());
	          $('#phone').val($('#phones8').html());
	       });            
	       $('#nameUrl9').click(function(){
	          $('#recname').val($('#names9').html());
	          $('#phone').val($('#phones9').html());
	       });            
	       $('#nameUrl10').click(function(){
	          $('#recname').val($('#names10').html());
	          $('#phone').val($('#phones10').html());
	       });            
	       $('#nameUrl11').click(function(){
	          $('#recname').val($('#names11').html());
	          $('#phone').val($('#phones11').html());
	       });         
		
	});
	</script>
<div class="container">
	<div class="row">
		<div class="page-header">
		  <h1>${record.hosname} <small>${record.subname}</small></h1>
		</div>
	</div>
	<div class="row">
	<div class="move">
		<img src="<c:url value='/Images/move.gif'/>"/>
	</div>
		<div class="in">
		<!-- 가운데 정렬 시작 -->
		<div id="float-right">
			<input id="toggles" type="button" class="btn btn-default" value="가족 정보보기"/>
			<div id="tabletoggles" class="table-responsive">
				<table class="table">
					<tr>
						<th>이름</th>
						<th>전화번호</th>
						<th>생년월일</th>
					</tr>
					<c:if test="${empty record.familyList}" var="isMember">
					<tr id="nameUrl">
						<td></td>
						<td>등록된 가족 정보가 없습니다</td>
						<td></td>
					</tr>
					</c:if>
					<c:if test="${not isMember}">
					<c:forEach items="${record.familyList}" var="list" varStatus="loop">
					<tr id="nameUrl${loop.index+1}">
						<td id="names${loop.index+1}">${list.fname}</td>
						<td id="phones${loop.index+1}">${list.fphone}</td>
						<td id="birthdays${loop.index+1}">${list.fbirthdate}</td>
					</tr>
					</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
		<br /> <br />
		<form class="form-horizontal" action="<c:url value='/general/receipt/ReservationListResult.do?subname=${record.subname}&date=${date}'/>">
		<input type="hidden" id="genid" name="genid" value="${genid}">
		<input type="hidden" id="pid" name="pid"  value="${record.pid}">
		<input type="hidden" id="addr" name="addr"  value="${record.addr}">
			<!-- 예약자 성함 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">성함</label>
				<div class="col-sm-10">
					<input type="text" class="form-control size1" placeholder="예약자 성함 입력"id="resname" name="resname"value="${record.genname}">
				</div>
			</div>
			<!-- 예약자 성함 -->
			<!-- 예약자 연락처 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control size1" placeholder="연락처 입력" id="phone" name="phone" value="${record.phone}">
				</div>
			</div>
			<!-- 예약자 연락처 -->
			<!-- 달력 테스트 부분 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">예약시간</label>
				<div class="col-sm-10">
					<div class="size3">
						<div id="picker"></div>
						<input type="hidden"  id="result" name="resdate"/>
					</div>
				</div>
			</div>
			<!-- 달력 테스트 부분 -->
			<!-- 예약자 이메일 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input type="email" class="form-control size4" placeholder="이메일 입력"id="email" name="email" value="${record.email}">
				</div>
			</div>
			<!-- 예약자 이메일 -->
			<!-- 예약자 상담내용 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">상담내용</label>
				<div class="col-sm-10">
					<textarea class="form-control size5" rows="10" id="rescontents" name="rescontents"></textarea>
				</div>
			</div>
			<!-- 예약자 상담내용 -->
			<input type="checkbox" name="checkbox_name" />
			<span>개인정보 수집 및 사용에 동의합니다</span><br /><br />
			<button type="submit" class="btn btn-default" id="receipt">예약</button>
		</form>
		<!-- 가운데 정렬 끝 -->
		</div>
	</div>
</div>
<!-- body 끝 -->
