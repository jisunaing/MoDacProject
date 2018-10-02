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
	height: 840px;
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





			<form name="surveyForm" action="" method="post">

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
													<span> 나도 모르게 침을 흘린다. </span></td>


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
													치아나 잇몸이 간지럽거나 아프지 않는데<br/>입냄새가 심하게 난다.</span></td>



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
															입술에 물집이 잡혀있다. </span></td>



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
														입안이나 혀가 헐어있다. </span></td>



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
															입을 벌리기가 힘들다. </span></td>



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
															목이 아파서 음식물을 삼키기 불편하다. </span></td>



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
															평소와 다르게 땀이 많이 나고 어지럽다. </span></td>



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
															식욕이 떨어졌다. </span></td>



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
															속이 미식거리거나 구토를 했다. </span></td>



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
															물같은 설사를 하고 배에 가스가 많이 찬 느낌이다. </span></td>



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
															소화가 안되고 더부룩하며 변색이 검다. </span></td>



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
															목이 불편해서 음식이나 침을 삼키기 힘들다. </span></td>



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









												<tr data-radio-button-group
													class="question-matrix-row-even question-matrix-row-last">

													<td class="matrix-row-label-cell"><span
														class="matrix-row-label question-body-font-theme user-generated">
															목 안에 뭐가 있는거 같고 혹 같은 것이 만져진다. </span></td>



													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539160_3844539143"
																name="301686191_3844539160" type="radio"
																class="radio-button-input " value="3844539143" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539160_3844539143"> <span
																data-position="0" class="radio-button-display ">
															</span> 

															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539160_3844539145"
																name="301686191_3844539160" type="radio"
																class="radio-button-input " value="3844539145" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539160_3844539145"> <span
																data-position="2" class="radio-button-display ">
															</span> 
																


															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539160_3844539146"
																name="301686191_3844539160" type="radio"
																class="radio-button-input " value="3844539146" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539160_3844539146"> <span
																data-position="3" class="radio-button-display ">
															</span> 
																


															</label>
														</div>


													</td>

													<td class="touch-sensitive">
														<div data-sm-radio-button class="radio-button-container ">
															<input id="301686191_3844539160_3844539147"
																name="301686191_3844539160" type="radio"
																class="radio-button-input " value="3844539147" /> <label
																data-sm-radio-button-label
																class="answer-label radio-button-label no-touch touch-sensitive clearfix 
                                                                                        "
																for="301686191_3844539160_3844539147"> <span
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
	
	<h3>편도 결석</h3> 
	
	입안 편도 주위 조직에 음식찌꺼기가 뭉쳐쌀알 모양의 알갱이가 생긴 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
		<div class="title_result"> 
	 
	<h3>역류성 식도염</h3> 
	
	하부식도괄약근이 잘 조여지지 않아 위액이나 음식물이 식도로 엮류하여 식도에 염증이 발생한 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	 
	
	</div>
	
	<div class="title_result"> 
	
	<h3>타석증</h3> 
	
	침샘(침을 생성)및 침샘관(침이 이동하는 통로)에 돌이 생겨 막힌 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
	
		<div class="title_result">
	
	<h3>편도 염</h3>
	
	세균이나 바이러스 감염에 의한 입안 편도조직에 염증이 생긴 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>갑상선암</h3>
	
	갑상선호르몬(신진대사 및 심박수 등에 영향을 끼침)을 생산 및 저장했다가 필요한 기관에 보내는 기능을 하는 갑성선에 발생한 암
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
	
	
	<div id="btn_main"> 
	<a href="<c:url value='/home/index.do'/>"><input style="margin-bottom: 10px;" type="button" class="btn btn-primary" value="메인으로 이동"></a> 
	</div>
	</div>
	
	
	
	
	</c:if>
	
	    
  </body>
</html>