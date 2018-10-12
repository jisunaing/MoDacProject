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

import com.modu.modac.service.PartnerDto;
import com.modu.modac.service.PartnerNAdminQnADto;
import com.modu.modac.service.PartnerNGeneralQNADto;
import com.modu.modac.service.PartnerNGeneralQNAService;
import com.modu.modac.service.PartnerService;
import com.modu.modac.service.impl.PagingUtil;


@SessionAttributes("pid")
@Controller
public class PartnerNGeneralQnAController {
		
	@Resource(name="partnerNGeneralQNAService")
	private PartnerNGeneralQNAService pNgService;
	
	@Resource(name="partnerService")
	private PartnerService partnerService;

	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;
	
	
	//일반회원과 공유하는 문의 리스트
	@RequestMapping("/partner/partnerQnA/partner_QnAList.do")
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
		
		//특정 병원에 대한 정보를 가져온다		
		PartnerDto dto =partnerService.selectOne(map);
		//나의 병원이 진료하는 진료목록을 다 가져온다		
		map.put("hosno", dto.getHosno());

		
		List<Map> subjectlist = partnerService.subjectListAll(map); // subjectListAll에는 hosno가 필요하다
		map.put("subjectcode",subjectlist);
		
		System.out.println("넘어온 코드 : "+subjectlist);
		
		int totalRecordCount= pNgService.getTotalRecord(map);
		
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
			
		//페이징을 위한 로직 끝]	
		List<PartnerNGeneralQNADto> list  = pNgService.selectList(map);
		
		System.out.println("반환 성공");
		
		//페이징 문자열을 위한 로직 호출]
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/partner/partnerQnA/partner_QnAList.do?");
		//데이타 저장]
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
			
		
		return "/partner/partnerQnA/partner_QnA";
	}///partnerNGeneralQnA
	
	
	
	//일반회원과 문의하는 글 상세
	@RequestMapping("/partner/partnerQnA/partner_QnA_View.do")
	public String partnerNGeneralQnAView(@RequestParam Map map,Model model) throws Exception {
		
		map.put("qno",map.get("qno"));
		
		PartnerNGeneralQNADto record = pNgService.selectOne(map);
		
		record.setQcontent(record.getQcontent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);		
		
		
		
		return "/partner/partnerQnA/partner_QnA_View";
	}//partnerNGeneralQnAView
	
	
	
	
	
	
}///PartnerQnAController