package com.modu.modac.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/general/HealthInfo.do")
	public String heathView() throws Exception {
		return "general/HealthInfoList.tiles";
	}
	@RequestMapping("/home/index.do")
	public String home() throws Exception {
//		return "../../../index.";
		return "/index";
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
	
	
	
	
	
	
//	@RequestMapping("/general/pharm/pharmMap.do")
//	public String pharmMapPage() throws Exception {
//		return "general/pharm/MapPharmacy.tiles";
//	}
//	@RequestMapping("/general/hospital/hosMap.do")
//	public String hosMapPage() throws Exception {
//		return "general/hospital/MapHospital.tiles";
//	}
	
	
	

}/////HomeController
