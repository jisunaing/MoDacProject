package com.modu.modac.web.partner;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.modu.modac.service.PartnerNAdminQnACommentService;
import com.modu.modac.service.PartnerNAdminQnAService;


@SessionAttributes("pid")
@Controller
public class PartnerNGeneralQnAController {
	
	@Resource(name="partnerNAdminQnAService")
	private PartnerNAdminQnAService service;
	@Resource(name="partnerNAdminQnACommentService")
	private PartnerNAdminQnACommentService comentServiece;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;
	
	
	//병원 문의 페이지 리스트
	@RequestMapping("/partner/partnerQnA/partner_QnA.do")
	public String partnerNGeneralQnA() throws Exception {
		
		
		
		
		
		return "/partner/partnerQnA/partner_QnA";
	}///partnerNGeneralQnA
	
	
	
	//병원 문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA_View.do")
	public String partnerNGeneralQnAView() throws Exception {
		
		
		return "/partner/partnerQnA/partner_QnA_View";
	}//partnerNGeneralQnAView
	
	
	
	
	
	
}///PartnerQnAController