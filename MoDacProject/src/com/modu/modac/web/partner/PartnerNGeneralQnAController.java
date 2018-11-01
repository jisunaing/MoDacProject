package com.modu.modac.web.partner;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.PartnerDto;
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
			HttpServletRequest req,
			@RequestParam Map map,
			@RequestParam(required=false,defaultValue="1") int nowPage
			) throws Exception{

		
	
		map.put("pid",pid);
		
		//특정 병원에 대한 정보를 가져온다		
		//PartnerDto dto =partnerService.selectOne(map);
		//나의 병원이 진료하는 진료목록을 다 가져온다		
		//map.put("hosno", dto.getHosno());
		
		//List<Map> subjectlist = partnerService.subjectListAll(map); // subjectListAll에는 hosno가 필요하다
		//map.put("subjectcode",subjectlist);
		
		/*
		int totalRecordCount= pNgService.getTotalRecord(map);
		
		
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		
		System.out.println("searchWord : "+map.get("searchWord"));
		System.out.println("searchColumn : "+map.get("searchColumn"));
		*/
		

		
			
		List<PartnerNGeneralQNADto> list  = pNgService.selectList(map);
		model.addAttribute("list", list);
		/*if(map.get("searchWord") !=null) {
			
			String searchWord = map.get("searchWord").toString();
			String searchColumn = map.get("searchColumn").toString();
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "/partner/partnerQnA/partner_QnAList.do?searchWord="+searchWord+"&searchColumn="+searchColumn+"&");
			
			
			model.addAttribute("pagingString", pagingString);
			
		}//if
		
		else {
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "/partner/partnerQnA/partner_QnAList.do?");
			
			
			model.addAttribute("pagingString", pagingString);
		}		
		model.addAttribute("list", list);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);*/
			
		
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
	
	/////////////////////////////////////////////////////// 아래 부터 코멘트 부분
	
	
	//특정 글번호에 대한 코멘트 전체 목록 가져오기
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/pNgCommentList.do",produces="text/html; charset=UTF-8")
	public String list(@RequestParam Map map,@ModelAttribute("pid")String pid) throws Exception{
				
		map.put("pid",pid);		

		
		List<Map> comments=pNgService.selectCommentList(map);
	
		for(Map comment:comments) {
			comment.put("APOSTDSATE",comment.get("APOSTDSATE").toString().substring(0,10));
		}

		
		return JSONArray.toJSONString(comments);
	}/////////////////////
	
	
	
	//코멘트 입력처리]
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/pNgCommentWrite.do",produces="text/html; charset=UTF-8")
	public String write(@RequestParam Map map,@ModelAttribute("pid")String pid,Model model) throws Exception{
	
		map.put("atitle",map.get("acontents"));	
		
		map.put("pid",pid);
		
		pNgService.commentInsert(map);
				
		return map.get("qno").toString();
	}///////////////////
	
	
	
	//코멘트 수정 처리
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/pNgCommentEdit.do",produces="text/html; charset=UTF-8")
	public String update(@RequestParam Map map) throws Exception{			
		map.put("atitle",map.get("acontents"));	
		pNgService.commentUpdate(map);
		return map.get("qno").toString();
	}/////////////////////////
		
	
	//코멘트 삭제처리]
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/pNgCommentDelete.do",produces="text/html; charset=UTF-8")
	public String delete(@RequestParam Map map) throws Exception{
		
		pNgService.commentDelete(map);
		return map.get("qno").toString();
	}/////////////////////////
	
	
	
	
	
}///PartnerQnAController