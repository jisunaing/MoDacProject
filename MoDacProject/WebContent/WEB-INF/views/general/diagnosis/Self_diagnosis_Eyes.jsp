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
													<span> 눈이 침침하고 시력이 떨어진 것 같다. </span></td>


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
													아침에 일어나면 앞이 뿌옇게 보인다.</span></td>



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
															눈이 가렵다. </span></td>



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
														슬프거나 울 상황이 아닌데도 눈물이 흐른다. </span></td>



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
															눈에 눈곱이 낀 것처럼 이물감이 느껴진다. </span></td>



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
															눈이 빠질 것 같이 아프다. </span></td>



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
															눈을 움직이거나 깜빡이면 더 아파진다. </span></td>



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
															눈동자 흰부분이 빨갛게 충혈됬다. </span></td>



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
															눈이 항상 건조하다. </span></td>



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
															평소보다 눈물이 많이 난다. </span></td>



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
															사물을 바라볼때 둘로 나뉘어 보인다. </span></td>



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
	
	<h3>결막염</h3> 
	
	결막(눈 흰자위와 눈꺼풀 안쪽의 분홍 점막)에 생긴염증
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
		<div class="title_result"> 
	 
	<h3>각막염</h3> 
	
	각막(눈동자, 즉 검은자 위를 덮고 있는 투명한 막)에 생긴 염증
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	 
	
	</div>
	
	<div class="title_result"> 
	
	<h3>녹내장</h3> 
	
	안압이 상승하면서 시신경 기능에 이상이 생겨 시력 및 시야에 문제가 발생한 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	
	</div>
	
	
		<div class="title_result">
	
	<h3>안검염</h3>
	
	눈꺼풀의 피부와 속눈썹 부분에 염증이 만성적으로 생기는 질병
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>안구건조증</h3>
	
	분비되는 눈물의 양이 적거나 눈물이 빨리 말라 눈이 건조하게 되어 이물감이나 통증을 느끼는 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div>
	
		<div class="title_result">
	
	<h3>시신경염</h3>
	
	시각정보를 뇌로 전달해주는 시신경이 염증이나 상처로 인해 손상된 상태
	
	<input style="margin-bottom: 10px;" type="button" class="btn btn-danger" value="병원 찾기"> 
	
	</div> 
	
	<div id="btn_main"> 
	<a href="<c:url value='/home/index.do'/>"><input style="margin-bottom: 10px;" type="button" class="btn btn-primary" value="메인으로 이동"></a> 
	</div>
	</div>
	
	
	
	
	</c:if>
	
	
  </body>
</html>