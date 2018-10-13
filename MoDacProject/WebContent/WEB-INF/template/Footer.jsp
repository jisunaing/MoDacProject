<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.footer-list{
		padding:30px;
	}
	#footera{
		color:white;
	}
	footer{
	background-color: #2b68a7;
	min-height:10%;
	} /////////////////////
</style>

<script>
	$(function(){
		$('footer').addClass('text-center py-1').css('color', 'white');
		$('.footer-list a').css('padding', '10px').css('text-decoration', 'none');
		$('.footer-list').css('padding', '30px');
	});
</script>

<footer class="page-footer" style="margin-top: 50px;">
	<div class="footer-list text-center py-1" >
		<a id="footera" href="<c:url value='/general/qna/qna_write.do'/>">사이트문의</a>
		<a id="footera" href="<c:url value='/general/notice/notice_list.do'/>">공지사항</a>
		<a id="footera" href="http://localhost:8080/modacadmin/AdminLogin.do">admin접속</a>
	</div>
	<div class="m-0 footer-copyright text-center py-1" >
		&copy; MoDacProject
	</div>
</footer>