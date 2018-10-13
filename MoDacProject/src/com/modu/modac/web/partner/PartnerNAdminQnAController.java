package com.modu.modac.web.partner;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.modu.modac.service.impl.PagingUtil;
import com.modu.modac.service.PartnerNAdminQnACommentService;
import com.modu.modac.service.PartnerNAdminQnADto;
import com.modu.modac.service.PartnerNAdminQnAService;


@SessionAttributes("pid")
@Controller
public class PartnerNAdminQnAController {
	
	@Resource(name="partnerNAdminQnAService")
	private PartnerNAdminQnAService service;
	@Resource(name="partnerNAdminQnACommentService")
	private PartnerNAdminQnACommentService comentServiece;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;
	
	// 관리자 문의 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA.do")
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

		return "/partner/partnerQnA/admin_QnA_List";
		
		
		
	}///adminQnAList

	// 관리자 문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA_View.do")
	public String partnerNadminQnAView(@RequestParam Map map,Model model) throws Exception {
		
		PartnerNAdminQnADto record = service.selectOne(map);
		
		record.setContent(record.getContent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);	

		return "/partner/partnerQnA/admin_QnA_View";
	}//////partnerNadminQnAView

	// 관리자에게 문의작성 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA_Write.do")
	public String partnerNadminWrite() throws Exception {

		return "/partner/partnerQnA/admin_QnA_Write";
	}
	
	// 관리자에게 문의작성 INSERT 부분
	@RequestMapping("/partner/partnerQnA/admin_QnA_WriteOK.do")
	public String partnerNadminWriteOK(@RequestParam Map map,@ModelAttribute("pid")String pid) throws Exception {
		
		System.out.println("OK에서 들어온 PID = "+pid);
		map.put("pid",pid);
		service.insert(map);
		
	
		return "forward:/partner/partnerQnA/admin_QnA.do";
	}
	
	
	// 수정 페이지 AND 수정완료 페이지
	@RequestMapping("/partner/partnerQnA/admin_QnA_Edit")
	public String edit(Model model,@RequestParam Map map, HttpServletRequest req) throws Exception{
		
		if(req.getMethod().equals("GET")) {
			//서비스 호출]
			PartnerNAdminQnADto record= service.selectOne(map);
			//데이타 저장]
			model.addAttribute("record",record);
			//수정 폼으로 이동]			
			return "/partner/partnerQnA/admin_QnA_Edit";		
			
		}

		service.update(map);

		return "forward:/partner/partnerQnA/admin_QnA_View.do";
	}//////////////////
	
	///글 삭제
	@RequestMapping("/partner/partnerQnA/admin_QnA_Delete.do")
	public String delete(@RequestParam Map map,Model model) throws Exception{
		
		service.delete(map);
		
		return "forward:/partner/partnerQnA/admin_QnA.do";
	}////////////////////////////////////////////////
	
	////////////////////////////////////////////////////////////////////////////아래부터 코멘트 컨트롤러 부분
	
	
	//코멘트 입력처리]
		@ResponseBody
		@RequestMapping(value="/partner/partnerQnA/CommentWrite.do",produces="text/html; charset=UTF-8")
		public String write(@RequestParam Map map,@ModelAttribute("pid")String pid,Model model) throws Exception{
			//서비스 호출]		
			//한줄 댓글 작성자 아이디 설정
			//map.put("id",session.getAttribute("id"));
			//스프링 씨큐러티 적용
			System.out.println("코멘트 입력1");
			
			map.put("pid",pid);
			comentServiece.insert(map);
			
			System.out.println("코멘트 입력2:"+map.get("no").toString());
			return map.get("no").toString();
		}///////////////////
		
		
	//특정 글번호에 대한 코멘트 전체 목록 가져오기
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/CommentList.do",produces="text/html; charset=UTF-8")
	public String list(@RequestParam Map map,@ModelAttribute("pid")String pid) throws Exception{
		
		map.put("pid",pid);
		
		//서비스 호출]
		List<Map> comments=comentServiece.selectList(map);
		//JSONArray.toJSONString(comments) 시
		//[{"NO":2,"ONELINECOMMENT":"댓글2","CPOSTDATE":2018-09-12 10:15:38.0,"CNO":3,"ID":"LEE","NAME":"이길동"},{"NO":2,"ONELINECOMMENT":"댓글1","CPOSTDATE":2018-09-12 10:14:44.0,"CNO":2,"ID":"PARK","NAME":"박길동"}]
		//날짜를 2018-09-12 10:15:38.0에서 " 2018-09-12"형태로 변경		
		for(Map comment:comments) {
			comment.put("REPLYDATE",comment.get("REPLYDATE").toString().substring(0,10));
		}
		System.out.println(JSONArray.toJSONString(comments));
		return JSONArray.toJSONString(comments);
	}/////////////////////
	
	
		
	//코멘트 수정 처리
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/CommentEdit.do",produces="text/html; charset=UTF-8")
	public String update(@RequestParam Map map) throws Exception{
		
		System.out.println("no : "+map.get("no"));
		System.out.println("rno : "+map.get("rno"));
		System.out.println("크기 : "+map.size());
		
		
		//서비스 호출]
		comentServiece.update(map);
		return map.get("no").toString();
	}/////////////////////////
	
	//코멘트 삭제처리]
	@ResponseBody
	@RequestMapping(value="/partner/partnerQnA/CommentDelete.do",produces="text/html; charset=UTF-8")
	public String delete(@RequestParam Map map) throws Exception{
		//서비스 호출]
		comentServiece.delete(map);
		return map.get("no").toString();
	}/////////////////////////
	
	
	
	
	
	
	
	
	
	
}///PartnerQnAController