package com.modu.modac.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class HomeController {
	

	@RequestMapping("/home/index.do")
	public String home() throws Exception {
///		return "../../../index.";
		return "index";
	}
	
	
	//로그인 버튼 눌럿을때 오는 부분
	@RequestMapping("/home/loginmain.do")
	public String loginMain() throws Exception {
		
		return "general/member/Login.tiles";
	}
	
	@RequestMapping("/home/join_P.do")
	public String join_P() throws Exception {
		
		return "general/member/signup/Join_P.tiles";
	}
	//일반 회원가입 신청 폼 
	@RequestMapping("/general/member/signup/gen_signup_write.do")
	public String gen_signup_write() throws Exception {
		
		return "general/member/signup/Gen_SignUp_Write.tiles";
	}
	//임의로 로그인 처리함
	@RequestMapping("/home/loginProcess.do")
	public String loginProcess(@RequestParam Map map, HttpSession session) throws Exception {
		if(map.get("id").equals("USER") && map.get("pwd").equals("1234")) {
			session.setAttribute("USER_ID", "USER");
		}
		else if(map.get("id").equals("PARTNER") && map.get("pwd").equals("1234")) {
			session.setAttribute("PARTNER_ID", "PARTNER");
		}
		return "/index";
	}
	//임의로 로그인 처리함
	@RequestMapping("/home/loginout.do")
	public String logoutProcess(HttpSession session) throws Exception {
		session.removeAttribute("USER_ID");
		session.removeAttribute("PARTNER_ID");
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
