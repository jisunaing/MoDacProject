<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <!-- Bootstrap core CSS --> 
<!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->

<!-- <!-- Custom styles for this template --> 
<!-- <link href="css/shop-homepage.css" rel="stylesheet"> -->

<style>
	.footer-list{
		padding:30px;
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

<!-- style="margin-top: 10px; min-width: 100%;position: absolute; -->
<!-- bottom: 0; -->
<!-- left: 0; -->
<!-- right: 0;"  -->
<!-- Footer -->
<footer class="page-footer" style="margin-top: 50px;">
	<div class="footer-list text-center py-1" >
		<a href="#">사이트문의</a>
		<a href="#">공지사항</a>
		<a href="#">admin접속</a>
	</div>
	<div class="m-0 footer-copyright text-center py-1" >
		&copy; MoDacProject
	</div>
</footer>
