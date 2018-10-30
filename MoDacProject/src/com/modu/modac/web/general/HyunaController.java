package com.modu.modac.web.general;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenfamilyService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.HealthquestionDto;
import com.modu.modac.service.HealthquestionService;
import com.modu.modac.service.HealthstateDto;
import com.modu.modac.service.HealthstateService;
import com.modu.modac.service.NoticeDto;
import com.modu.modac.service.NoticeService;
import com.modu.modac.service.QnaDto;
import com.modu.modac.service.QnaService;
import com.modu.modac.service.ReplyQnaService;
import com.modu.modac.service.impl.NaverLoginBO;

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
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	/* NaverLoginBO */
	@Resource(name="naverLoginBO")
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
	
    @Resource(name="replyqnaService")
    private ReplyQnaService replyqnaService;

    @Resource(name="noticeService")
    private NoticeService noticeService;
	
	
	
	@RequestMapping("/naverlogincallback.do")
	public String naverlogincallback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, Map map) throws Exception{
		  System.out.println("여기는 callback");
	        OAuth2AccessToken oauthToken;
	        oauthToken = naverLoginBO.getAccessToken(session, code, state);
	        //로그인 사용자 정보를 읽어온다.
	        /*apiResult = naverLoginBO.getUserProfile(oauthToken);
	        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
	        model.addAttribute("result", apiResult);
	        System.out.println("result"+apiResult);*/
	        apiResult = naverLoginBO.getUserProfile(oauthToken);   
	        String[] result = apiResult.split(",");
	        String email = null;
	        String name = null;
	        String gender=null;
	        String month=null;
	        String day=null;
	        String id= null;
	        
	        for(int i=0;i<result.length;i++) {
	           if(result[i].indexOf("email") != -1) {
	              String[] value = result[i].split(":");
	              email = value[1];
	              String[] username = email.split("@");
	              id = username[0];
	           }else if(result[i].indexOf("gender") != -1) {
	              String[] value = result[i].split(":");
	              gender = value[1];
	           }else if(result[i].indexOf("name") != -1) {
	              String[] value = result[i].split(":");
	              name = value[1];
	              name=decode(name);
	           }
	           else if(result[i].indexOf("birthday") != -1) {
	              String[] value = result[i].split(":");
	              String[] birthdate=value[1].split("-");
	              month=birthdate[0];
	              day=birthdate[1];
	           }
	        }
	        map.put("genid", id.replace("\"",""));
	       GenmemberDto dto = generalService.selectOne(map);
	       
	     
	       if(dto==null) {
	    	   map.put("email", email.replace("\"",""));
		       map.put("name", name.replace("\"",""));
		       map.put("gender", gender.replace("\"",""));
		       map.put("month", month.replace("\"",""));
		       map.put("day", day.replace("\"",""));
		       System.out.println(map.get("genid"));
		       System.out.println(map.get("name"));
	    	   model.addAttribute("personalinfo", map);
	    	   return "general/member/signup/NaverSignUp.tiles";
	       }
	       session.setAttribute("genid", id.replace("\"",""));
	       
	    return "/index";
	}
	//유니코드 한글로 변환		 
	 public static String decode(String unicode)throws Exception {
	  StringBuffer str = new StringBuffer();

	  char ch = 0;
	  for( int i= unicode.indexOf("\\u"); i > -1; i = unicode.indexOf("\\u") ){
	   ch = (char)Integer.parseInt( unicode.substring( i + 2, i + 6 ) ,16);
	   str.append( unicode.substring(0, i) );
	   str.append( String.valueOf(ch) );
	   unicode = unicode.substring(i + 6);
	  }
	  str.append( unicode );

	  return str.toString();
	 }
	//마이페이지로 이동
	@RequestMapping("/general/mypage/mypage.do")
	public String mypage() throws Exception {
		return "general/mypage/MyPage.tiles";
	}
	// 개인 정보
	@RequestMapping("/general/mypage/personalinfo.do")
	public String personalInfo(Model model,GenmemberDto dto,HttpSession session,Map map) throws Exception {
		dto.setGenid(session.getAttribute("genid").toString());
		dto = generalService.selectOne(dto);
		String[] addr = dto.getAddr().split("&");
		map.put("addr", addr[0]);
		map.put("addrDetail", addr[1]);
		model.addAttribute("personalinfo", dto);
		model.addAttribute("extrainfo", map);
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
		String[] addr = dto.getAddr().split("&");
		map.put("addr", addr[0]);
		map.put("addrDetail", addr[1]);
		model.addAttribute("personalinfo", dto);
		model.addAttribute("extrainfo", map);
		return "general/mypage/PersonalInfoEdit.tiles";
	}
	//개인정보 수정
	@RequestMapping("/general/mypage/personalinfoEditProcess.do")
	public String personalInfoEditProcess(@RequestParam Map editmap,Model model) {
		editmap.put("birthdate", editmap.get("year")+"/"+editmap.get("month")+"/"+editmap.get("day"));  
		editmap.put("addr", editmap.get("addr").toString().concat("&"+editmap.get("addrDetail")));
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
		session.invalidate();
		//정상적으로 탈퇴처리 되었습니다. 
		return "forward:/home/index.do";
	}
	
	
	//개인 건강 정보
	@RequestMapping("/general/mypage/healthinfo.do")
	public String personalHealthInfo(HttpSession session,Map map,Model model) throws Exception {
		map.put("hsid",session.getAttribute("genid"));
		if(healthstateService.selectOne(map)==null) {
			return "general/mypage/HealthstateWrite.tiles";
		}
		else {
			HealthstateDto dto = healthstateService.selectOne(map);
			//값 저장
			model.addAttribute("healthstate", dto);
		}
		return "general/mypage/PersonalHealthInfoView.tiles";
	}
	
	//가족정보 들어가면 뿌려주는 부분
	@RequestMapping("/general/mypage/familyinfoview.do")
	public String familyInfoG(@RequestParam Map map, Model model,HttpSession session) throws Exception {
		map.put("genid", session.getAttribute("genid"));
		List list = genfamilyService.selectList(map);
		List<HealthstateDto> statelist = healthstateService.selectList(map);
		model.addAttribute("list", list);
		model.addAttribute("statelist", statelist);
		return "general/mypage/FamilyInfoView.tiles";
	}
	//가족정보 추가하는 부분
	@RequestMapping("/general/mypage/familyinfowrite.do")
	public String familyInfo(@RequestParam Map map,HttpSession session) throws Exception {
		
		map.put("genid", session.getAttribute("genid"));
		map.put("fbirthdate", map.get("year")+"/"+map.get("month")+"/"+map.get("day"));
		genfamilyService.insert(map);
		
		
		return "forward:/general/mypage/familyinfoview.do";
	}
	//건강 정보
	@RequestMapping(value="/general/mypage/healthinfoWrite.do",method=RequestMethod.GET)
	public String healthinfoWriteG(@RequestParam Map map,Model model) throws Exception {
		model.addAttribute("fno", map.get("fno"));
		return "general/mypage/HealthstateWrite.tiles";
	}
	//건강 정보
	@RequestMapping(value="/general/mypage/healthinfoWrite.do",method=RequestMethod.POST)
	public String healthinfoWrite(@RequestParam Map map, Model model,HttpSession session) throws Exception { 
		if(map.get("fno").equals("")) {//아이디 본인일 경우
			map.put("hsid", session.getAttribute("genid"));
			healthstateService.insert(map);
			return "forward:/general/mypage/healthinfo.do";
		}
		else {//가족일 경우
			map.put("hsid",map.get("fno"));
			healthstateService.insert(map);
			return "forward:/general/mypage/familyinfoview.do";
		}		
	}
	//가족 건강 정보 수정 폼 가져오기
	@RequestMapping(value="/general/mypage/healthstateEdit.do", method=RequestMethod.GET)
	public String healthinfoEdit(@RequestParam Map map,Model model,HttpSession session) throws Exception {
		if(map.get("fno")!=null) {
			map.put("hsid",map.get("fno"));
			model.addAttribute("genidself","N");
		}
		else {
			map.put("hsid",session.getAttribute("genid"));
			model.addAttribute("genidself","Y");
		}
		//메소드 호출
		HealthstateDto dto = healthstateService.selectOne(map);
		//값 저장
		model.addAttribute("healthstate", dto);
		return "general/mypage/HealthstateEdit.tiles";
		
	}
	//가족 건강 정보 수정 폼 서브밋
	@RequestMapping(value="/general/mypage/healthstateEdit.do" , method=RequestMethod.POST)
	public String healthinfoEditProcess(@RequestParam Map map,Model model) throws Exception {
		healthstateService.update(map);
		if(map.get("genidself").equals("Y")){
			return "forward:/general/mypage/healthinfo.do";
		}
		return "forward:/general/mypage/familyinfoview.do";
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
		List sublist= healthquestionService.selectListHos(map);
		model.addAttribute("sublist", sublist);
		return "general/mypage/HealthQnAList.tiles";
	}
	//건강문의 폼 이동 
	@RequestMapping(value="/general/qna/qnahealth/healthQnaWrite.do", method=RequestMethod.GET)
	public String healthQnAWriteG() throws Exception {
		return "general/mypage/HealthQnAWrite.tiles";
	}
	//건강문의 방 만들기
	@RequestMapping(value="/general/qna/qnahealth/healthQnaWrite.do", method=RequestMethod.POST)
	public String healthQnAWrite(@RequestParam Map map,Model model,HttpSession session) throws Exception {
		map.put("genid",session.getAttribute("genid"));
		healthquestionService.insert(map);
		
		return "forward:/general/qna/qnahealth/healthQnaList.do";
	}
	//건강문의 상세보기
	@RequestMapping("/general/qna/qnahealth/healthQnaView.do")
	public String health_QnA_View(@RequestParam Map map,Model model) throws Exception {
		
		HealthquestionDto dto = healthquestionService.selectOne(map);
		model.addAttribute("healthquestion",dto);
		
		return "general/mypage/HealthQnAView.tiles";
	}
	//건강문의 채팅 페이지로
	@RequestMapping("/general/qna/qnahealth/healthQnaChat.do")
	public String healthQnAChat(@RequestParam Map map,Model model,HttpSession session) throws Exception{
		model.addAttribute("param", map);
		HealthquestionDto dto = healthquestionService.selectOne(map);
		model.addAttribute("record", dto);
		model.addAttribute("responsetype",session.getAttribute("genid"));
		return "/general/mypage/HealthQnAChat";
	}
	//사이트문의목록
	@RequestMapping("/general/qna/qnaList.do")
	public String qnaList(HttpSession session,Map map, Model model) throws Exception {
		map.put("genid", session.getAttribute("genid"));
		List<QnaDto> list =qnaService.selectList(map);
		model.addAttribute("list", list);
		return "general/mypage/QnAList.tiles";
	}
	//사이트문의 폼 으로 이동
	@RequestMapping(value="/general/qna/qnaWrite.do",method=RequestMethod.GET)
	public String qnaWriteG() throws Exception {
		return "general/mypage/QnAWrite.tiles";
	}
	//사이트문의 (글쓰기)
	@RequestMapping(value="/general/qna/qnaWrite.do",method=RequestMethod.POST)
	public String qnaWrite(@RequestParam Map map,HttpSession session) throws Exception {
		map.put("genid", session.getAttribute("genid"));
		qnaService.insert(map);
		
		return "forward:/general/qna/qnaList.do";
	}
	//사이트문의 상세보기
	@RequestMapping("/general/qna/qnaView.do")
	public String qnaView(@RequestParam Map map, Model model) throws Exception {
		QnaDto dto = qnaService.selectOne(map);
		model.addAttribute("record", dto);
		return "general/mypage/QnAView.tiles";
	}
	//사이트문의 상세보기 수정 이동
	@RequestMapping(value="/general/qna/qnaEdit.do",method=RequestMethod.GET)
	public String qnaEdit(@RequestParam Map map, Model model) throws Exception {
		QnaDto dto = qnaService.selectOne(map);
		model.addAttribute("record", dto);
		return "general/mypage/QnAEdit.tiles";
	}
	//사이트문의 상세보기 수정
	@RequestMapping(value="/general/qna/qnaEdit.do",method=RequestMethod.POST)
	public String qnaEditPost(@RequestParam Map map, Model model) throws Exception {
		qnaService.update(map);
		return "forward:/general/qna/qnaView.do";
	}
	//사이트문의 상세보기 삭제
	@RequestMapping("/general/qna/qnaDelete.do")
	public String qnaDelete(@RequestParam Map map) throws Exception {
		qnaService.delete(map);
		return  "forward:/general/qna/qnaList.do";
	}
	//사이트 문의 코멘트 입력처리
	@ResponseBody
	@RequestMapping(value="/general/qna/qnareplyWrite.do",produces="text/html; charset=UTF-8")
	public String write(@RequestParam Map map) throws Exception{
		//서비스 호출]
		System.out.println("코멘트 입력1");
		System.out.println(map.get("no"));
		replyqnaService.insert(map);	
		System.out.println("코멘트 입력2:"+map.get("no").toString());
		return map.get("no").toString();
	}///////////////////
	
	//특정 글번호에 대한 코멘트 전체 목록 가져오기
	@ResponseBody
	@RequestMapping(value="/general/qna/qnareplyList.do",produces="text/html; charset=UTF-8")
	public String list(@RequestParam Map map) throws Exception{
		//서비스 호출]
		List<Map> comments=replyqnaService.selectList(map);
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
	@RequestMapping(value="/general/qna/qnareplyEdit.do",produces="text/html; charset=UTF-8")
	public String update(@RequestParam Map map) throws Exception{
		//서비스 호출]
		replyqnaService.update(map);
		return map.get("no").toString();
	}/////////////////////////
	
	//코멘트 삭제처리]
	@ResponseBody
	@RequestMapping(value="/general/qna/qnareplyDelete.do",produces="text/html; charset=UTF-8")
	public String delete(@RequestParam Map map) throws Exception{
		//서비스 호출]
		replyqnaService.delete(map);
		return map.get("no").toString();
	}/////////////////////////
	
	//공지사항 리스트 - footer에 위치
	@RequestMapping("/general/notice/noticeList.do")
	public String noticeList(Map map, Model model) throws Exception {
		List list = noticeService.selectList(map);
		model.addAttribute("list", list);
		return "general/notice/NoticeList.tiles";
	}
	//공지사항 상세보기
	@RequestMapping("/general/notice/noticeView.do")
	public String noticeView(@RequestParam Map map,Model model) throws Exception {
		NoticeDto dto = noticeService.selectOne(map);
		dto.setContent(dto.getContent().toString().replaceAll("Upload", "http://localhost:8080/modacadmin/Upload"));
		model.addAttribute("record", dto);
		
		return "general/notice/NoticeView.tiles";
	}
}