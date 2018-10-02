<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        
<link type="text/css" rel="stylesheet" href="https://secure.surveymonkey.com/assets/responseweb/smlib.surveytemplates-survey_page-bundle-min.bb748735.css" />
        
<link id="themeCssLink" rel="stylesheet" href="https://secure.surveymonkey.com/r/themes/4.1.87_887422_591090d6-ebb4-47ec-ac02-83086833b187.css"/>        
  
<link rel="shortcut icon" href="/favicon1.ico" />

<script src="https://secure.surveymonkey.com/assets/responseweb/responseweb-response-bundle-min.4ab44a75.js"></script>


<script>

$(function() {
	
	
	$('#btn_back').click(function() {
		
		history.back();
		
	});
	
})//최상위

</script>    

<style>


      *, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}



.form-box {
	background: #F6F6F6; 
	padding: 40px;
	height: 960px;
	max-width: 1000px;
	margin: 68px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);
	
	
}

 
small {	
	color: black;
	font-weight: 150;
	margin-bottom: 40px;
}



#h2id{

text-align: center;
font-size: 2.5em;

}
#h4id{

text-align: center;
margin-top: 10px;
}

.title_result{

margin-top: 25px;
border: 1px dashed;
text-align: center;
 
} 

#btn_main{

text-align: center;
margin-top: 15px;

}

</style>

<body>

<c:if test="${empty selfresult}" var="selfresult">

	<article data-page-id="84588067" class="survey-page survey-page-white">
		<header class="survey-page-header"> </header>
		<section class="survey-page-body">

			<form name="surveyForm" action="<c:url value='/general/diagnosis/self_diagnosis_brain.do' />" method="post">

				<div class="questions clearfix">

					<div class="question-row clearfix">
						<div data-question-type="matrix_rating"
							class="question-container">

							<div id="question-field-301686191" data-qnumber="1"
								data-question-id="301686191"
								class=" question-matrix qn question rating question-required"
								style="width: 100%;">


								<fieldset class=" question-fieldset">
									<legend class="screenreader-only">
										아래의 문항을 읽고 자신이 느끼는 정도를 번호에 체크하여 주십시오.<br>
									</legend>



									<h3 class="screenreader-only">Question Title</h3>
									<h4 id="question-title-301686191"
										class="question-title-container">
										<span class="required-asterisk notranslate"> * </span> 
									<span class="user-generated notranslate">아래의 문항을 읽고 자신이 느끼는 정도를 번호에 체크하여 주십시오.<br>
										</span>

									</h4>
									<div class="question-body clearfix notranslate ">






										<table class="question-matrix-table table-reset reflow"	cellspacing="0">
											<thead>
												<tr>

													<td style="width: 30%;">&nbsp;</td>


													<td style="width: 14%;"
														class="matrix-col-label question-body-font-theme user-generated">
														전혀 그렇지 않다</td>

													<td style="width: 14%;"
														class="matrix-col-label question-body-font-theme user-generated">
														잘 모르겠다</td>

													<td style="width: 14%;"
														class="matrix-col-label question-body-font-theme user-generated">
														그렇다</td>

													<td style="width: 14%;"
														class="matrix-col-label question-body-font-theme user-generated">
														항상 그렇다</td>


												</tr>
											</thead>

											<tbody>







												<tr data-radio-button-group class="question-matrix-row-even question-matrix-row-last">


													<td class="matrix-row-label-cell">
													<span> 머리가 어지럽고 열이 나는거 같다. </span></td>


													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539148_3844539144" name="301686191_3844539148" type="radio"
																class="radio-button-input " value="" />
																 <label data-sm-radio-button-label class="answer-label radio-button-label no-touch touch-sensitive clearfix"
																  for="301686191_3844539148_3844539144">
																<span data-position="0" class="radio-button-display "></span> 
																
																	
															</label>
														</div>
													</td>
													
												

													<td class="touch-sensitive">


														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539148_3844539145"
																name="301686191_3844539148" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539148_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539148_3844539146"
																name="301686191_3844539148" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539148_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>
													

													<td class="touch-sensitive">
													<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539148_3844539147"
																name="301686191_3844539148" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539148_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span> 
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
													기절을 한적이 있다.</span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539149_3844539143"
																name="301686191_3844539149" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539149_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>


													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539149_3844539145"
																name="301686191_3844539149" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539149_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539149_3844539146"
																name="301686191_3844539149" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539149_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539149_3844539147"
																name="301686191_3844539149" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539149_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>

												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															머리가 가렵고  머리카락이 자주 빠진다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539150_3844539143"
																name="301686191_3844539150" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539150_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

	

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539150_3844539145"
																name="301686191_3844539150" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539150_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539150_3844539146"
																name="301686191_3844539150" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539150_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539150_3844539147"
																name="301686191_3844539150" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539150_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
														누군가 머리를 조이는것 처럼 아프다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539151_3844539143"
																name="301686191_3844539151" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539151_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span> <span
																class="radio-button-label-text question-body-font-theme user-generated ">
																	

															</span>


															</label>
														</div>


													</td>



													<td class="touch-sensitive">
												<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539151_3844539145"
																name="301686191_3844539151" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539151_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
											<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539151_3844539146"
																name="301686191_3844539151" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539151_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539151_3844539147"
																name="301686191_3844539151" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539151_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															관자놀이 부근에 박동성이 심하게 느껴지는거 같다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539152_3844539143"
																name="301686191_3844539152" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539152_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539152_3844539145"
																name="301686191_3844539152" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539152_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539152_3844539146"
																name="301686191_3844539152" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539152_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539152_3844539147"
																name="301686191_3844539152" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539152_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															순간 머리가 찌릿찌릿 하고 쪼개질 것 처럼 아프다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539153_3844539143"
																name="301686191_3844539153" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539153_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>


													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539153_3844539145"
																name="301686191_3844539153" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539153_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539153_3844539146"
																name="301686191_3844539153" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539153_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539153_3844539147"
																name="301686191_3844539153" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539153_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															뒷통수 부분이 아프다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539154_3844539143"
																name="301686191_3844539154" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539154_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

	
													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539154_3844539145"
																name="301686191_3844539154" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539154_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539154_3844539146"
																name="301686191_3844539154" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539154_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539154_3844539147"
																name="301686191_3844539154" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539154_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															진통제를 먹어도 통증이 가시지 않는다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539155_3844539143"
																name="301686191_3844539155" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539155_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

	
													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539155_3844539145"
																name="301686191_3844539155" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539155_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span> 
															</label>
														</div>


													</td>

													<td class="touch-sensitive">


														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539155_3844539146"
																name="301686191_3844539155" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539155_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539155_3844539147"
																name="301686191_3844539155" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539155_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															토를 하거나 숨을 깊게 몰아쉬면 덜 아파진다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539156_3844539143"
																name="301686191_3844539156" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539156_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

	
													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539156_3844539145"
																name="301686191_3844539156" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539156_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539156_3844539146"
																name="301686191_3844539156" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539156_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539156_3844539147"
																name="301686191_3844539156" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539156_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															잠을 자가다 혹은 새벽에 두통으로 인하여 잠에서 깬적이 있다. </span></td>



													<td class="touch-sensitive">

														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539157_3844539143"
																name="301686191_3844539157" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539157_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

	
													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539157_3844539145"
																name="301686191_3844539157" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539157_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539157_3844539146"
																name="301686191_3844539157" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539157_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539157_3844539147"
																name="301686191_3844539157" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539157_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>



												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															기억상실이 있었거나 혹은 자꾸 잠에 들려고만 하려는 증상이 있다. </span></td>



													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539158_3844539143"
																name="301686191_3844539158" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539158_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539158_3844539145"
																name="301686191_3844539158" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539158_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539158_3844539146"
																name="301686191_3844539158" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539158_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539158_3844539147"
																name="301686191_3844539158" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539158_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span>
															</label>
														</div>
													</td>
												</tr>


												<tr data-radio-button-group
													class="question-matrix-row-odd question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															갑자기 발음이 어눌해지고 말을 못하거나 <br/>상대방의 말을 잘 알아듣기 힘든적이 있다. </span></td>



													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539159_3844539143"
																name="301686191_3844539159" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539159_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

		

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539159_3844539145"
																name="301686191_3844539159" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539159_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539159_3844539146"
																name="301686191_3844539159" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539159_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span>
															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539159_3844539147"
																name="301686191_3844539159" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539159_3844539147"> <span
																data-position="4" class="radio-button-display ">
															</span> 
														</label>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</fieldset>

							</div>
						</div>
					</div>
				</div>


				<div class="survey-submit-actions center-text clearfix">

					<button id="btn_back" type="button" 
						class="btn small prev-button survey-page-button user-generated notranslate">

						이전</button>


					<button type="submit"
						class="btn small next-button survey-page-button user-generated notranslate">

						다음</button>
				</div>
			</form>
		</section>
	</article>   
	
	</c:if>    
	
	<c:if test="${!selfresult}">
	
	<div class="form-box">
	
	<h2 id="h2id">자가진단 <small>결과</small></h2>
	
	<hr style="border: 1px solid;"/>
	 
	<h4 id="h4id">※ 현재 결과는 100% 정확한 결과가 아닙니다!! 무엇보다 전문의료진의 상담과 진료를 통하여 치료받으시길 권장드립니다.※</h4>
	
		<div class="title_result"> 
	
	<h3>감기</h3> 
	
	코,목과 같은 상부 호흡기계가 바이러스에 의해 감연된 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
		<div class="title_result"> 
	 
	<h3>부비동염(축농증)</h3> 
	
	눈썹 위, 뺨, 코 뒤 등 공기로 차있는 빈공간에 염증이 생긴 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	 
	
	</div>
	
	<div class="title_result"> 
	
	<h3>냉방병</h3> 
	
	냉방된 실내와 냉방되지 않은 실외의 온도차로 인해 인체가 적응하지 못하는 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
	
		<div class="title_result">
	
	<h3>복막염</h3>
	
	복막(장기를 덮고 있는 얇은 막)에 염증이 생긴 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>세균성 이질</h3>
	
	시겔라 균에 의한 소화기계의 전염성질환으로 제1종 법정 전염병
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>충수염</h3>
	
	충수돌기(맹장 끝에 위치)에 염증이 생긴 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div> 
	
	<div id="btn_main"> 
	<a href="<c:url value='/home/index.do'/>"><input style="margin-bottom: 10px;" type="button" class="btn btn-primary" value="메인으로 이동"></a> 
	</div>
	</div>
	
	
	
	
	</c:if>
	
	
	
  </body>
</html>