package com.modu.modac.web.general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenenralController {

	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList() throws Exception {
		return "general/reservation/Reservation_List.tiles";
	}
	
	
	
	//지훈-자가진단 
	@RequestMapping("/general/reservation/selfdiagnosis.do")
	public String selfdiagnosis()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Main.tiles";
	}///메인
	
	@RequestMapping("/general/reservation/selfdiagnosis_eye.do")
	public String selfdiagnosis_eye()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Eyes.tiles";
	}//눈
	
	@RequestMapping("/general/reservation/selfdiagnosis_mouth.do")
	public String selfdiagnosis_mouth()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Mouth.tiles";
	}//입
	
	@RequestMapping("/general/reservation/selfdiagnosis_neck.do")
	public String selfdiagnosis_neck()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Neck.tiles";
	}//목
	
	@RequestMapping("/general/reservation/selfdiagnosis_nose.do")
	public String selfdiagnosis_nose()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Nose.tiles";
	}//코
	
	@RequestMapping("/general/reservation/selfdiagnosis_brain.do")
	public String selfdiagnosis_brain()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Brain.tiles";
	}//머리
	
	@RequestMapping("/general/reservation/selfdiagnosis_ear.do")
	public String selfdiagnosis_ear()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Ear.tiles";
	}//귀

	
	//마이페이지로 이동
	@RequestMapping("/general/mypage/mypage.do")
	public String mypage() throws Exception {
		return "general/mypage/MyPage.tiles";
	}
	//개인 정보
	@RequestMapping("/general/mypage/personalinfo.do")
	public String personalInfo() throws Exception {
		return "general/mypage/Personal_Info_View.tiles";
	}
	//개인 정보 수정
	@RequestMapping("/general/mypage/personalinfo_edit.do")
	public String personalInfo_Edit() throws Exception {
		return "general/mypage/Personal_Info_Edit.tiles";
	}
	//개인 건강 정보
	@RequestMapping("/general/mypage/healthinfo.do")
	public String personalHealthInfo() throws Exception {
		return "general/mypage/Personal_Health_Info_View.tiles";
	}
	//개인 건강 정보 수정
	@RequestMapping("/general/mypage/healthinfo_edit.do")
	public String personalHealthInfo_Edit() throws Exception {
		return "general/mypage/Personal_Health_Info_Edit.tiles";
	}
	//가족정보
	@RequestMapping("/general/mypage/familyinfo.do")
	public String familyInfo() throws Exception {
		return "general/mypage/Family_Info_View.tiles";
	}
	//가족정보 수정
	@RequestMapping("/general/mypage/familyinfo_edit.do")
	public String familyInfo_Edit() throws Exception {
		return "general/mypage/Family_Info_Edit.tiles";
	}
	//건강문의목록
	@RequestMapping("/general/qna/qnahealth/health_qna_list.do")
	public String health_QnA_List() throws Exception {
		return "general/mypage/Health_QnA_List.tiles";
	}
	//건강문의 폼
	@RequestMapping("/general/qna/qnahealth/health_qna_write.do")
	public String health_QnA_Write() throws Exception {
		return "general/mypage/Health_QnA_Write.tiles";
	}
	//건강문의 상세보기
	@RequestMapping("/general/qna/qnahealth/health_qna_view.do")
	public String health_QnA_View() throws Exception {
		return "general/mypage/Health_QnA_View.tiles";
	}
	//사이트문의목록
	@RequestMapping("/general/qna/qna_list.do")
	public String QnA_List() throws Exception {
		return "general/mypage/QnA_List.tiles";
	}
	//사이트문의 폼(글쓰기)
	@RequestMapping("/general/qna/qna_write.do")
	public String QnA_Write() throws Exception {
		return "general/mypage/QnA_Write.tiles";
	}
	//사이트문의 상세보기
	@RequestMapping("/general/qna/qna_view.do")
	public String QnA_View() throws Exception {
		return "general/mypage/QnA_View.tiles";
	}
	//사이트문의 상세보기 수정
	@RequestMapping("/general/qna/qna_edit.do")
	public String QnA_Edit() throws Exception {
		return "general/mypage/QnA_Edit.tiles";
	}
}