package com.modu.modac.web.general;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenfamilyService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.HealthquestionDto;
import com.modu.modac.service.HealthquestionService;
import com.modu.modac.service.HealthstateDto;
import com.modu.modac.service.HealthstateService;
import com.modu.modac.service.ReservationService;

@Controller
public class HyunaController {	
	
	@Resource(name="generalService")
	private GeneralService generalService;
	
	@Resource(name="healthquestionService")
	private HealthquestionService healthquestionService;
	
	@Resource(name="genfamilyService")
	private GenfamilyService genfamilyService;
	
	@Resource(name="healthstateService")
	private HealthstateService healthstateService;
	
	//마이페이지로 이동
	@RequestMapping("/general/mypage/mypage.do")
	public String mypage() throws Exception {
		return "general/mypage/MyPage.tiles";
	}
	// 개인 정보
	@RequestMapping("/general/mypage/personalinfo.do")
	public String personalInfo(Model model,GenmemberDto dto,HttpSession session) throws Exception {
		dto.setGenid(session.getAttribute("genid").toString());
		dto = generalService.selectOne(dto);
		model.addAttribute("personalinfo", dto);
		return "general/mypage/PersonalInfoView.tiles";
	}
	//개인 정보 수정폼
	@RequestMapping("/general/mypage/personalinfoEdit.do")
	public String personalInfoEdit(Model model, GenmemberDto dto, HttpSession session, Map map) throws Exception {
		//뿌려줄 개인정보 가져오기 
		dto.setGenid(session.getAttribute("genid").toString());
		dto = generalService.selectOne(dto);
		//생일 나눠서 넣어주기 위함
		String[] birthdate = dto.getBirthdate().split("/");		
		map.put("year",birthdate[0]);
		map.put("month",birthdate[1]);
		map.put("day",birthdate[2]);
		model.addAttribute("personalinfo", dto);
		model.addAttribute("birthdate", map);		
		return "general/mypage/PersonalInfoEdit.tiles";
	}
	//개인정보 수정
	@RequestMapping("/general/mypage/personalinfoEditProcess.do")
	public String personalInfoEditProcess(@RequestParam Map editmap,Model model) {
		editmap.put("birthdate", editmap.get("year")+"/"+editmap.get("month")+"/"+editmap.get("day"));  
		if(generalService.update(editmap) == 1) {
			model.addAttribute("personalinfo",editmap);
		}
		return "forward:/general/mypage/personalinfo.do";
	}
	//탈퇴  
	@RequestMapping("/general/mypage/personalinfoWithdraw.do")
	public String personalInfoWithdraw(HttpSession session,Map map) {
		//정말로 탈퇴하시겠습니까?
		map.put("genid",session.getAttribute("genid"));
		generalService.delete(map);
		//정상적으로 탈퇴처리 되었습니다. 
		return "/index";
	}
	//개인 건강 정보/general/mypage/healthinfoWrite
	@RequestMapping("/general/mypage/healthinfo.do")
	public String personalHealthInfo() throws Exception {
		//if(service.selectOne()==null){return healthinfowrite.tiles}
			
		
		return "general/mypage/PersonalHealthInfoView.tiles";
	}
	//개인 건강 정보 수정
	@RequestMapping("/general/mypage/healthinfo_edit.do")
	public String personalHealthInfo_Edit() throws Exception {
		
		
		return "general/mypage/Personal_Health_Info_Edit.tiles";
	}
	@RequestMapping(value="/general/mypage/familyinfo.do", method=RequestMethod.GET)
	public String familyInfoG(@RequestParam Map map, Model model) throws Exception {
		
		List list = genfamilyService.selectList(map);
		List<HealthstateDto> statelist = healthstateService.selectList(map);
		model.addAttribute("list", list);
		model.addAttribute("statelist", statelist);
		return "general/mypage/FamilyInfoView.tiles";
	}
	@RequestMapping("/general/mypage/familyinfolist.do")
	public String familyInfoList(@RequestParam Map map, Model model,HttpSession session) throws Exception {
		map.put("genid", session.getAttribute("genid"));
		List list = genfamilyService.selectList(map);
		model.addAttribute("list", list);
		
		return "general/mypage/FamilyInfoView.tiles";
	}
	//가족정보
	@RequestMapping(value="/general/mypage/familyinfo.do", method=RequestMethod.POST)
	public String familyInfo(@RequestParam Map map,HttpSession session) throws Exception {
		
		map.put("genid", session.getAttribute("genid"));
		map.put("fbirthdate", map.get("year")+"/"+map.get("month")+"/"+map.get("day"));
		genfamilyService.insert(map);
		
		
		return "general/mypage/FamilyInfoView.tiles";
	}
	//건강 정보
	@RequestMapping(value="/general/mypage/healthinfoWrite.do",method=RequestMethod.GET)
	public String healthinfoWriteG(@RequestParam Map map,Model model) throws Exception {
		model.addAttribute("fno", map.get("fno"));	
		
		return "general/mypage/HealthInfoWrite.tiles";
	}
	//건강 정보
	@RequestMapping(value="/general/mypage/healthinfoWrite.do",method=RequestMethod.POST)
	public String healthinfoWrite(@RequestParam Map map, Model model,HttpSession session) throws Exception {
		map.put("hsid",map.get("fno"));
		//System.out.println(map.get("fno"));
		healthstateService.insert(map);
		
		return "forward:/general/mypage/familyinfolist.do";
	}
	//가족정보 수정
	@RequestMapping("/general/mypage/familyinfo_edit.do")
	public String familyInfo_Edit() throws Exception {
		
		
		return "general/mypage/FamilyInfoEdit.tiles";
	}
	//건강문의목록
	@RequestMapping("/general/qna/qnahealth/healthQnaList.do")
	public String healthQnAList(Map map,Model model) throws Exception {
		List list = healthquestionService.selectList(map);
		model.addAttribute("list", list);
		return "general/mypage/HealthQnAList.tiles";
	}
	//건강문의 폼 이동 
	@RequestMapping(value="/general/qna/qnahealth/healthQnaWrite.do", method=RequestMethod.GET)
	public String healthQnAWriteG() throws Exception {
		return "general/mypage/HealthQnAWrite.tiles";
	}
	//건강문의 폼
	@RequestMapping(value="/general/qna/qnahealth/healthQnaWrite.do", method=RequestMethod.POST)
	public String healthQnAWrite(@RequestParam Map map,Model model,HttpSession session) throws Exception {
		map.put("genid",session.getAttribute("genid"));
		healthquestionService.insert(map);
		
		return "forward:/general/qna/qnahealth/healthQnaView.do";
	}
	//건강문의 상세보기
	@RequestMapping("/general/qna/qnahealth/healthQnaView.do")
	public String health_QnA_View(@RequestParam Map map,Model model) throws Exception {
		
		HealthquestionDto dto = healthquestionService.selectOne(map);
		model.addAttribute("healthquestion",dto);
		
		return "general/mypage/HealthQnAView.tiles";
	}
	//사이트문의목록
	@RequestMapping("/general/qna/qnaList.do")
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