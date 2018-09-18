package com.modu.modac.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/general/HealthInfo.do")
	public String heathView() throws Exception {
		return "general/HealthInfoView.tiles";
	}
	@RequestMapping("/home/index.do")
	public String home() throws Exception {
//		return "../../../index.";
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

	
	@RequestMapping("/home/login.do")
	public String login()throws Exception{
		
		
		return "general/member/Login.tiles";
	}///login
	
	@RequestMapping("/home/login_Pjoin.do")
	public String join_P()throws Exception{
		
		
		
		
		return "general/member/signup/Join_P.tiles";
	}///login
	
	
	
	
}////HomeController
