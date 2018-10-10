package com.modu.modac.web.partner;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.modu.modac.service.PartnerNAdminQnACommentService;
import com.modu.modac.service.PartnerNAdminQnADto;
import com.modu.modac.service.PartnerNAdminQnAService;
import com.modu.modac.service.impl.PagingUtil;


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
	public String partnerNadminQnAList(Model model,
			@ModelAttribute("pid")String pid,
			HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터 받기
			@RequestParam(required=false,defaultValue="1") int nowPage//페이징용 nowPage파라미터 받기용
			) throws Exception{
		//서비스 호출]
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		map.put("pid",pid);
		int totalRecordCount= service.getTotalRecord(map);
		
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]	
		List<PartnerNAdminQnADto> list = service.selectList(map);
		//페이징 문자열을 위한 로직 호출]
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/partner/partnerQnA/admin_QnA.do?");
		//데이타 저장]
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		
		
		
		
		return "/partner/partnerQnA/partner_QnA";
	}///partnerNGeneralQnA
	
	
	
	//병원 문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA_View.do")
	public String partnerNGeneralQnAView() throws Exception {
		
		
		return "/partner/partnerQnA/partner_QnA_View";
	}//partnerNGeneralQnAView
	
	
	
	
	
	
}///PartnerQnAController