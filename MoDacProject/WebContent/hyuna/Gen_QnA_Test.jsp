<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>사이트 문의하기</title>
<!-- 필요!!!!!!!!!!!!!!!!!!!!! -->
<!-- 제일 중요 -->

 <script src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" src="https://kodorra.com/wp-content/cache/minify/7095e.js"></script>

<style>
.container {
	min-height: 100%;
}

.footer {
	background-color: #32323C;
	min-height: 10%;
}

.row {
	margin: 0 auto;
	text-align: center;
}

.row .col-md-4 {
	margin-top: 10px;
	outline: 1px pink solid;
	height: 200px;
}

input.wpcf7-form-control.wpcf7-submit {
	background-color: #1ea69a; <!-- 코발트블루 #2b68a7-->
	color: #ffffff;
	width: 300px;
}
.wpcf7-form-control-wrap {
	position: relative
}.wpcf7-form input, .wpcf7-form
textarea {
	background: #FFF;
	width: 100%;
	float: left;
	height: 45px;
	color: #999;
	-moz-transition: all .5s;
	-o-transition: all .5s;
	border: 1px solid #CCC;
	font-size: 14px;
	-khtml-transition: all .5s
}.wpcf7-form .wpcf7-form-control-wrap {
	margin-bottom: 30px;
	display: inline-block;
	width: 100%;
	float: left
}

.wpcf7-form
input {
	padding: 0 20px;
	-webkit-transition: all .5s;
	-ms-transition: all .5s;
	transition: all .5s
}

.wpcf7-form
textarea {
	padding: 20px;
	min-height: 186px;
	-webkit-transition: all .5s;
	-ms-transition: all .5s;
	transition: all .5s
}

.wpcf7-form .contact-button {
	text-align: center
}

.wpcf7-form .contact-button .wpcf7-submit {
	width: auto;
	padding: 0 45px;
	border: 1px solid #CCC;
	background: #fff;
	color: #424242;
	font-size: 14px;
	display: inline-block;
	float: none;
	-webkit-transition: all .5s;
	-khtml-transition: all .5s;
	-moz-transition: all .5s;
	-ms-transition: all .5s;
	-o-transition: all .5s;
	transition: all .5s
}

.wpcf7-form input[type=text].wpcf7-not-valid, .wpcf7-form input[type=email].wpcf7-not-valid,
	.wpcf7-form input[type=tel].wpcf7-not-valid, .wpcf7-form input[type=number].wpcf7-not-valid,
	.wpcf7-form input[type=date].wpcf7-not-valid, .wpcf7-form select.wpcf7-not-valid,
	.wpcf7-form textarea.wpcf7-not-valid {
	border-color: red
}

.wpcf7-form div.wpcf7-validation-errors {
	border: none
}
form.wpcf7-form .ajax-loader {
	width: 100%;
	margin-left: 0;
	background-image:
		url(/wp-content/themes/course-builder/assets/images/preloading/three-bounce.gif);
	background-position: center center;
	background-repeat: no-repeat
}
div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap input,
	div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap
textarea {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	font-style: italic;
	font-size: 16px;
	font-weight: 300;
	line-height: 1.63;
	letter-spacing: .3px
}

div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap
input {
	height: 49px
}

div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap
textarea {
	height: 231px;
	background: #fdffff
}

div.wpb_content_element .wpcf7-form .heading-button {
	margin: 28px auto 0
}

div.wpb_content_element .wpcf7-form .heading-button
input {
	height: 55px;
	color: #fff;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	font-weight: 400;
	display: inline-block;
	width: auto;
	padding: 0 67px;
	font-size: 16px;
	letter-spacing: .3px;
	line-height: 1.5
}

div.wpb_content_element .wpcf7-form .wpcf7-response-output {
	text-align: center
}

div.wpcf7 {
	max-width: 1120px;
	margin: 0 auto
}

.lp-form-field .thim-home6-form .wpcf7-form p input[type=submit],
	.thim-home6-form .wpcf7-form p .lp-form-field input[type=submit],
	.thim-home6-form .wpcf7-form p input[type=submit] {
	margin-top: 10px;
	height: 50px;
	color: #fff;
	text-transform: uppercase;
	font-size: 16px;
	margin-bottom: 5px;
	font-weight: 400;
	letter-spacing: .3px
}
.wpcf7-form input:focus, .wpcf7-form textarea:focus, .wpcf7-form input:hover,
	.wpcf7-form textarea:hover {
	border-color: #333
}

.wpcf7-form .contact-button .wpcf7-submit {
	font-family: Roboto
}

.wpcf7-form .contact-button .wpcf7-submit:focus, .wpcf7-form .contact-button .wpcf7-submit:hover
	{
	border-color: #333;
	color: #333
}

.thim-form-contactpage input[type="text"], .thim-form-contactpage textarea,
	.thim-form-contactpage input[type="submit"] {
	font-family: Roboto
}.vc_wp_text .wpcf7-form div.heading-button input[type="submit"] {
	border: 1px solid #333
}div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap input,
	div.wpb_content_element .wpcf7-form .row .wpcf7-form-control-wrap
textarea {
	color: #888
}
</style>
<script>
	jQuery.noConflict();
	$(function(){
		$('body').css('height', '100%').css('margin', '0');
		$('html').css('height', '100%');
	});
</script>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu" style="height:90px">
		<jsp:include page="/WEB-INF/template/Top.jsp" />
	</div>
	<!-- topMennu -->

	<!-- body 시작 -->
	<div class="container">
	

		<div class="row">
			<main id="main" class="site-main col-sm-12 full-width">
			<div class="panel panel-default">
		<!-- 	<link rel="stylesheet" type="text/css" href="https://kodorra.com/wp-content/cache/minify/21c39.css"> -->
			<div class="vc_row wpb_row vc_row-fluid">
				<div class="wpb_column vc_column_container vc_col-sm-12">
					<div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div class="thim-sc-heading text-center layout-2 ">
								<div class="heading-content">
									<h2 class="primary-heading">사이트 문의하기</h2>
								</div>
								<p class="secondary-heading">회원님의 소중한 의견을 남겨주세요!</p>
								<span class="underline"></span>
								<br/><br/>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-vc-full-width="true" data-vc-full-width-init="true"
				class="vc_row wpb_row vc_row-fluid"
				style="position: relative; left: 0px; box-sizing: border-box; width: 134px; padding-left: 0px; padding-right: 0px;">
				<div class="wpb_column vc_column_container vc_col-sm-12">
					<div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div class="vc_wp_text wpb_content_element">
								<div class="widget widget_text">
									<div class="textwidget">
										<div role="form" class="wpcf7" id="wpcf7-f56-p34-o1"
											lang="en-US" dir="ltr">
											<div class="screen-reader-response"></div>
											<form action="/contact/#wpcf7-f56-p34-o1" method="post"
												class="wpcf7-form" novalidate="novalidate">
												
												<div class="row">
													<div class="col-xs-12 col-sm-4">
														<span class="wpcf7-form-control-wrap your-name"><input
															type="text" name="your-name" value="" size="40"
															class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
															aria-required="true" aria-invalid="false"
															placeholder="Name"></span>
													</div>
													<div class="col-xs-12 col-sm-4">
														<span class="wpcf7-form-control-wrap your-email"><input
															type="email" name="your-email" value="" size="40"
															class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
															aria-required="true" aria-invalid="false"
															placeholder="Email"></span>
													</div>
													<div class="col-xs-12 col-sm-4">
														<span class="wpcf7-form-control-wrap your-subject"><input
															type="text" name="your-subject" value="" size="40"
															class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
															aria-required="true" aria-invalid="false"
															placeholder="Subject"></span>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<span class="wpcf7-form-control-wrap your-message"><textarea
																name="your-message" cols="20" rows="10"
																class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required"
																aria-required="true" aria-invalid="false"
																placeholder="Message"></textarea></span>
													</div>
												</div>
												<div class="heading-button">
													<input type="submit" value="send your message"
														class="wpcf7-form-control wpcf7-submit"><span
														class="ajax-loader"></span>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="vc_row-full-width vc_clearfix"></div>
			</div>
			</main>
		</div>
		<!-- 긁어온것 중 필요한 스크립트태그!! -->
		<script type="text/javascript"
			src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
		<script type="text/javascript">
			WebFont.load({google:{families:['Roboto:300,300i,400,400i,500,500i,700,700i']}});
		</script>
		<script type="text/javascript" src="https://kodorra.com/wp-content/cache/minify/4b6b3.js"></script>
		<script type="text/javascript">
			/* <![CDATA[ */
			var lpGlobalSettings = {"url":"https:\/\/kodorra.com\/contact\/","siteurl":"https:\/\/kodorra.com","ajax":"https:\/\/kodorra.com\/wp-admin\/admin-ajax.php","theme":"course-builder","localize":{"button_ok":"OK","button_cancel":"Cancel","button_yes":"Yes","button_no":"No"}};
			/* ]]> */
		</script>
	</div>
	<!-- container -->

	<!--footer를 감싸는 div 시작-->
	<div class="footer">
		<jsp:include page="/WEB-INF/template/Footer.jsp" />
	</div>
	<!--footer를 감싸는 div 끝-->

	<!-- Bootstrap core JavaScript -->
	<!-- <script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 -->


</body>
</html>
<!-- body 끝 -->