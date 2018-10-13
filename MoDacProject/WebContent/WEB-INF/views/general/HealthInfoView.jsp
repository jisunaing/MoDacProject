<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- topMennu -->
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">
	
	<style>
	.jumbotron {
		text-align:center;
	}
	.panel-body {
		line-height: 30px;
		font-family: 'Noto Serif KR', sans-serif;
		overflow: auto;
	}
	</style>
	
	<!-- body 시작 -->
	<div class="container">
		<div class="jumbotron">
		  <h1> ${requestScope.title}</h1>
		</div>
		<div class="panel panel-default">
		  <div class="panel-body">
		  	${requestScope.image}
		    ${requestScope.content}		
		  </div>
		</div>	
	</div>
