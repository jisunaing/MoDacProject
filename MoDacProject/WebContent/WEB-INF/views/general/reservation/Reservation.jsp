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
</style>
<!-- 달력 라이브러리 시작-->
	<script type="text/javascript">
    $(document).ready( function () {
        $('#picker').dateTimePicker();
        $('#picker-no-time').dateTimePicker({ showTime: false, dateFormat: 'DD/MM/YYYY'});
    })
    </script>
	<!-- 달력 라이브러리 끝-->
	<!-- body 시작 -->
	<script>
	$(function(){
		$( "#tabletoggles" ).hide();
		
		$('#toggles').click(function(){		
			$('#tabletoggles').toggle(500);
			console.log($(this).val());
			
			if($(this).val()=='가족 정보보기'){
				$('input:eq(0)').attr("value","가족정보 숨기기");
			}
			else{
				$('input:eq(0)').attr("value","가족정보 보기");
			}
		});
	
		$('label').css('minWidth', '90px');
		
	});
	</script>
<div class="container">
	<div class="row">
		<div class="page-header">
		  <h1>병원 이름 <small>성형외과</small></h1>
		</div>
	</div>
	<div class="row">
		<div class="in">
		<!-- 가운데 정렬 시작 -->
		<div style="float: right;">
			<input id="toggles" type="button" class="btn btn-default"
				value="가족 정보보기">
			<div id="tabletoggles" class="table-responsive">
				<table class="table" style="width: 600px">
					<tr>
						<th>이름</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>생년월일</th>
					</tr>
					<tr>
						<td><a href="#" style="color: blue; width: 100%">홍길동</a></td>
						<td>010-7777-7777</td>
						<td>abcd1234@naver.com</td>
						<td>1967-08-30</td>
					</tr>
					<tr>
						<td><a href="#" style="color: blue; width: 100%">나길동</a></td>
						<td>010-7777-7777</td>
						<td>grdawf777@naver.com</td>
						<td>1989-01-21</td>
					</tr>
				</table>
			</div>
		</div>
		<br /> <br />
		<form class="form-horizontal" style="clear: right;">
			<!-- 예약자 성함 -->
			<div class="form-group">
				<label class="col-sm-2 control-label">성함</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="예약자 성함 입력" style="min-width: 200px;width: 200px">
				</div>
			</div>
			<!-- 예약자 성함 -->
			<!-- 예약자 연락처 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">연락처</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" placeholder="연락처 입력" style="min-width: 200px;width: 200px">
				</div>
			</div>
			<!-- 예약자 연락처 -->
			<!-- 달력 테스트 부분 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">예약시간</label>
				<div class="col-sm-10">
					<div style="width: 200px;">
						<div id="picker">
							<input type="hidden" id="result" value="" />
						</div>
					</div>
				</div>
			</div>
			<!-- 달력 테스트 부분 -->
			<!-- 예약자 이메일 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" placeholder="이메일 입력" style="min-width: 200px;width: 300px">
				</div>
			</div>
			<!-- 예약자 이메일 -->
			<!-- 달력 테스트 부분 -->
			<!-- 달력 테스트 부분 -->

			<!-- 예약자 상담내용 -->
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">상담내용</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="10" name="content" style="min-width: 200px"></textarea>
				</div>
			</div>
			<!-- 예약자 상담내용 -->

		</form>

		<input type="checkbox" name="PersonalData" />
		<span>개인정보 수집 및 사용에 동의합니다</span><br /> <br />
		<button type="button" class="btn btn-default">접수</button>
		<!-- 가운데 정렬 끝 -->
		</div>
	</div>
</div>
<!-- body 끝 -->
