package com.modu.modac.web.general;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.ReservationService;

@Controller
public class GenenralController {
	
	//진성 영역 시작
	@Resource(name="reservationService")
	private ReservationService reservationService;
	//리스트로 이동하는 것
	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList() throws Exception {
		return "general/reservation/Reservation_List.tiles";
	}

	//접수 버튼을 누르면 실행되는 것
	@RequestMapping("/general/receipt/ReceiptListResult.do")
	public String ReceiptListResult(@RequestParam Map map)throws Exception{
		System.out.println(map);
		
		reservationService.receiptInsert(map);
		
		return "general/reservation/Reservation_List.tiles";
	}
	
	//예약 버튼을 부르면 실행되는 것
	@RequestMapping("/general/receipt/ReservationListResult.do")
	public String ReservationListResult(@RequestParam Map map)throws Exception{
		System.out.println(map);
		
		return "general/reservation/Reservation_List.tiles";
	}	
	
	//진성 영역 끝
	
	// 지훈-자가진단
	@RequestMapping("/general/diagnosis/self_diagnosis_Main.do")
	public String selfdiagnosis()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Main.tiles";
	}///메인
	
	@RequestMapping("/general/diagnosis/self_diagnosis_eye.do")
	public String selfdiagnosis_eye()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Eyes.tiles";
	}//눈
	
	@RequestMapping("/general/diagnosis/self_diagnosis_mouth.do")
	public String selfdiagnosis_mouth()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Mouth.tiles";
	}//입
	
	@RequestMapping("/general/diagnosis/self_diagnosis_neck.do")
	public String selfdiagnosis_neck()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Neck.tiles";
	}//목
	
	@RequestMapping("/general/diagnosis/self_diagnosis_nose.do")
	public String selfdiagnosis_nose()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Nose.tiles";
	}//코
	
	@RequestMapping("/general/diagnosis/self_diagnosis_brain.do")
	public String selfdiagnosis_brain()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Brain.tiles";
	}//머리
	
	@RequestMapping("/general/diagnosis/self_diagnosis_ear.do")
	public String selfdiagnosis_ear()throws Exception{
		
		return "general/diagnosis/Self_diagnosis_Ear.tiles";
	}//귀

	
	//마이페이지로 이동
	@RequestMapping("/general/mypage/mypage.do")
	public String mypage() throws Exception {
		return "general/mypage/MyPage.tiles";
	}

	// 개인 정보
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
	public String qna_List() throws Exception {
		return "general/mypage/QnA_List.tiles";
	}
	//사이트문의 폼(글쓰기)
	@RequestMapping("/general/qna/qna_write.do")
	public String qna_Write() throws Exception {
		return "general/mypage/QnA_Write.tiles";
	}
	//사이트문의 상세보기
	@RequestMapping("/general/qna/qna_view.do")
	public String qna_View() throws Exception {
		return "general/mypage/QnA_View.tiles";
	}
	//사이트문의 상세보기 수정
	@RequestMapping("/general/qna/qna_edit.do")
	public String qna_Edit() throws Exception {
		return "general/mypage/QnA_Edit.tiles";
	}
	//공지사항 리스트 - footer에 위치
	@RequestMapping("/general/notice/notice_list.do")
	public String notice_list() throws Exception {
		return "general/notice/Notice_List.tiles";
	}
	//공지사항 상세보기
	@RequestMapping("/general/notice/notice_view.do")
	public String notice_view() throws Exception {
		return "general/notice/Notice_View.tiles";
	}
}