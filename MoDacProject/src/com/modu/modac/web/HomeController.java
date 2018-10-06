package com.modu.modac.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.modu.modac.service.ChartService;

@Controller
public class HomeController {

	
	
	//진성 데이터 베이스를 위한 설정
	//진성 영역 
	@Resource(name="chartService")
	private ChartService chartService;
	//병원이동시 차트를 위한 변수선언-박진성
	private int mon,tue,wed,thu,fri,dat,sun;
	//진성영역 끝
	
	
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
	
	//일반 회원가입 신청 폼 
	@RequestMapping("/general/member/signup/gen_signup_write.do")
	public String gen_signup_write() throws Exception {
		
		return "general/member/signup/Gen_SignUp_Write.tiles";
	}
	
	//제휴 회원가입 신청 폼
	@RequestMapping("/general/member/signup/partnerJoin.do")
	public String partnerJoin() throws Exception {
		return "general/member/signup/Join_P.tiles";
	}
	
	
	
	//임의로 로그인 처리함
	@RequestMapping("/home/loginProcess.do")
	public String loginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception {//일반사용자 로그인시 일반사용자 화면으로 이동
		if(map.get("id").toString().equalsIgnoreCase("USER") && map.get("pwd").equals("1234")) {
			session.setAttribute("USER_ID", "USER");
			return "/index";
		}

		return "/index";
	}
	
	//임의로 로그인 처리함
	@RequestMapping("/home/loginout.do")
	public String logoutProcess(HttpSession session) throws Exception {
		session.removeAttribute("USER_ID");
		//session.removeAttribute("PARTNER_ID");  제휴회원 로그인 처리 끝 임시로 사용 안해도됨 추후에 이 부분 삭제할꺼임
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
