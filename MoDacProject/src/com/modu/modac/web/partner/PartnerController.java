package com.modu.modac.web.partner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartnerController {
	//병원 메인 페이지로 이동
	@RequestMapping("/partner/hospital/MainMove.do")
	public String hospitalMainPage() throws Exception {
		return "/partner/HospitalSystem";
	}
	//병원 예약 관리 페이지
	@RequestMapping("/partner/hospital/ReservationMove.do")
	public String hospitalReservationPage() throws Exception {
		return "/partner/reservation/HospitalReservation";
	}
	
	//병원 예약 지낸 내역 페이지
	@RequestMapping("/partner/hospital/ReservationListMove.do")
	public String hospitalReservationHistoryPage() throws Exception {
		return "/partner/reservation/HospitalReservationHistory";
	}

	//병원 접수 관리 페이지
	@RequestMapping("/partner/hospital/ReceiptMove.do")
	public String hospitalReceiptPage() throws Exception {
		return "/partner/reservation/HospitalReceipt";
	}
	//병원 접수 지난내역 페이지
	@RequestMapping("/partner/hospital/ReceiptListMove.do")
	public String hospitalReceiptHistoryPage() throws Exception {
		return "/partner/reservation/HospitalReceiptHistory";
	}
	
	//제휴 가입 페이지
	
	
	//병원 정보 페이지
	@RequestMapping("/partner/mypage/partnerInfo.do")
	public String partnerInfo() throws Exception {
		return "/partner/mypage/partnerInfo";
	}
	
	//병원 정보 수정페이지
	@RequestMapping("/partner/mypage/partnerInfoEdit.do")
	public String partnerInfoEdit() throws Exception {
		
		return "/partner/mypage/partnerInfoEdit";
	}
	//병원 문의 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA.do")
	public String partner_QnA() throws Exception {
		
		return "/partner/partnerQnA/partner_QnA";
	}
	
	//병원 문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA_View.do")
	public String admin_QnA_View() throws Exception {
		
		return "/partner/partnerQnA/partner_QnA_View";
	}
	
	//관리자 문의 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA.do")
	public String admin_QnA_List() throws Exception {
		
		return "/partner/partnerQnA/admin_QnA_List";
	}
	
	//관리자  문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA_View.do")
	public String partner_QnA_View() throws Exception {
		
		return "/partner/partnerQnA/admin_QnA_View";
	}
	
	//관리자에게 문의작성 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA_Write.do")
	public String partner_QnA_Write() throws Exception {
		
		return "/partner/partnerQnA/admin_QnA_Write";
	}
	

	//병원 회원탈퇴 신청 페이지
	@RequestMapping("/partner/withdrawal/partner_withdrawal.do")
	public String withdrawal() throws Exception {
		
		return "/partner/withdrawal/partner_withdrawal";
	}
	
	
	//병원 회원탈퇴 버튼 눌렀을때 오는 맵핑
	@RequestMapping("/partner/withdrawal/partner_withdrawalREQ.do")
	public String withdrawalREQ() throws Exception {
		
		//현재 메인페이지로 보내야 하는 부분이 임시적이기 때문에 여기 또한 임시로 메인으로 보냄
		return "/index";
	}
	
	
	
	
	
	
	
	
	
	
}