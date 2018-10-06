package com.modu.modac.web.partner;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.PartnerDto;
import com.modu.modac.service.PartnerService;

@SessionAttributes("pid")
@Controller
public class PartnerController {
	
	@Resource(name="partnerService")
	private PartnerService service;
	
	
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
	//병원 접수 상세보기 페이지
	@RequestMapping("/partner/hospital/ReceiptViewMove.do")
	public String hospitalViewPage() throws Exception {
		return "/partner/reservation/HospitalListView";
	}	
	//병원 접수 지낸내역 상세보기 페이지
	@RequestMapping("/partner/hospital/ReceiptHistoryViewMove.do")
	public String hospitalHistoryViewPage() throws Exception {
		return "/partner/reservation/HospitalView";
	}	
	
	
	
	
	//병원 정보 페이지
	@RequestMapping("/partner/mypage/partnerInfo.do")
	public String partnerInfo(@ModelAttribute("pid")String pid,Map map) throws Exception {
		
		PartnerDto dto;
		
		map.put("pid",pid);
	
		dto = service.selectOne(map);
		
		map.put("partner", dto);
				
		
		return "/partner/mypage/partnerInfo";
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