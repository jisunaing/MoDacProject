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
	
	@RequestMapping("/partner/partnerQnA/partner_QnA.do")
	public String partner_QnA() throws Exception {
		
		return "/partner/partnerQnA/partner_QnA";
	}
	
	
	


	
}