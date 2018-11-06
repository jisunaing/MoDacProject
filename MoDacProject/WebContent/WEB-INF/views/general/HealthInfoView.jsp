<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <link href="<c:url value='/css/jumbo.css'/>" rel="stylesheet"> --%>
<style>
.jumbotron-billboard .img {
    margin-bottom: 0px;
    opacity: 0.2;
    color: #fff;
    background: #000 url("https://bootstrapcreative.com/wp-bc/wp-content/uploads/2017/03/learning-story.png") top center no-repeat;
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
    position:absolute;
    top:0;
    left:0;
    z-index:1;
}
.jumbotron h2 {margin-top:0;}
.jumbotron {
  position:relative;
  padding-top:100px;
  padding-bottom:50px;
}

.jumbotron .container {
  position:relative;
  z-index:2;
}

@media screen and (max-width: 768px) {
  .jumbotron {
    padding-top:20px;
    padding-bottom:20px;
  }
}
#img_resize{
	height: auto;
	width: 100%;
}
</style>

<script>
	$(function(){
		var imgHeight = $("#contentimg").height();
		$('#contentdiv').css('margin-bottom', imgHeight);
	});
</script>
<!-- body 시작 -->
<div class="container">
	<!-- 카테고리상세 -->
	<div class="jumbotron jumbotron-billboard" style="height: 300px;">
	  <div class="img" >
  	  		${record.image }
	  </div>
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-12">
	              <h2 style="padding-left:20%">${record.title}</h2>
    	          <br/>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- ~카테고리상세 -->
	<div class="panel panel-default">
	  <div class="panel-body">
	  	<div id="contentdiv" style="padding-left:20%;" >
	    	${record.content}		
	    	<!-- contentimg_id -->
	    </div>
	  </div>
	</div>	
</div>