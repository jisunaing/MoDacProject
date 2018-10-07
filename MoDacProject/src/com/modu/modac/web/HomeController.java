package com.modu.modac.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenmemberDto;

@Controller
public class HomeController {
	
	//서비스 주입]
	@Resource(name="generalService")
	private GeneralService generalService;

	@RequestMapping("/home/index.do")
	public String home() throws Exception {
///		return "../../../index.";
		return "/index";
	}
	
	
	//로그인 버튼 눌럿을때 오는 부분
	@RequestMapping("/home/loginmain.do")
	public String loginMain() throws Exception {
		
		return "general/member/Login.tiles";
	}
	
	@RequestMapping("/general/member/signup/Join_P.do")
	public String join_P() throws Exception {
		
		return "general/member/signup/Join_P.tiles";
	}
	
	//일반 회원가입 신청 폼으로 이동
	@RequestMapping("/general/member/signup/gen_signup_write.do")
	public String genSignupWrite() throws Exception {
		
		return "general/member/signup/Gen_SignUp_Write.tiles";
	}
	//일반 회원가입 신청 
	@RequestMapping("/general/member/signup/genSignupProcess.do")
	public String genSignupProcess(@RequestParam Map map, Model model,GenmemberDto dto) throws Exception {
		
		dto.setGenid(map.get("genid").toString());
		dto.setPwd(map.get("pwd").toString());
		dto.setAddr(map.get("addr").toString());
		dto.setBirthdate(map.get("year")+"/"+map.get("month")+"/"+map.get("day"));
		dto.setEmail(map.get("email").toString());
		dto.setGender(map.get("gender").toString());
		dto.setGenname(map.get("genname").toString());
		dto.setPhone(map.get("phone").toString());
		
		model.addAttribute(dto);
		
		generalService.insert(dto);
		
		return "forward:/general/mypage/personalinfo.do";
	}
	//임의로 로그인 처리함
	@RequestMapping("/home/loginProcess.do")
	public String loginProcess(@RequestParam Map map, Model model,HttpSession session) throws Exception {
		/*if(map.get("id").toString().equalsIgnoreCase("USER") && map.get("pwd").equals("1234")) {
			session.setAttribute("USER_ID", "USER");
		}
		else if(map.get("id").toString().equalsIgnoreCase("PARTNER") && map.get("pwd").equals("1234")) {
			session.setAttribute("PARTNER_ID", "PARTNER");
		}*/
		boolean ismember = generalService.isMember(map);
		if(ismember) {
			model.addAllAttributes(map);
			session.setAttribute("genid", map.get("genid"));
		}
		else {
			model.addAttribute("loginError", "존재하지 않는 아이디/비밀번호 입니다");
			return "forward:/home/loginmain.do";
		}
		return "/index";
	}
	//임의로 로그인 처리함
	@RequestMapping("/home/loginout.do")
	public String logoutProcess(HttpSession session) throws Exception {
		session.removeAttribute("genid");
		return "/index";
	}

	
//	@RequestMapping("/general/pharm/pharmMap.do")
//	public String pharmMapPage() throws Exception {
//		return "general/pharm/MapPharmacy.tiles";
//	}
//	@RequestMapping("/general/hospital/hosMap.do")
//	public String hosMapPage() throws Exception {
//		return "general/hospital/MapHospital.tiles";
//	}
	
	
	

}/////HomeController
