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
	private int mon = 0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
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
	//임의로 로그인 처리함
	@RequestMapping("/home/loginProcess.do")
	public String loginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception {
		if(map.get("id").toString().equalsIgnoreCase("USER") && map.get("pwd").equals("1234")) {//일반사용자 로그인시 일반사용자 화면으로 이동
			session.setAttribute("USER_ID", "USER");
			return "/index";
		}
		else if(map.get("id").toString().equalsIgnoreCase("PARTNER") && map.get("pwd").equals("1234")) {//병원 로그인시 병원 관리자페이지로 바로 이동
			session.setAttribute("PARTNER_ID", "PARTNER");
			//여기 맵에 ! 반드시 세션[병원아이디]를 넣어주세요
			map.put("pid", "uesr");
			//병원 차트를 가져오기 위한 부분
			//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			//Calendar cal = Calendar.getInstance();
			List<Map> list;
			list = chartService.dayList(map);
			/*
			for(int i=0;i<list.size();i++) {
				cal.setTime(dateFormat.parse(list.get(i).toString()));
				switch (cal.get(Calendar.DAY_OF_WEEK)) {
				case 1:	sun++;	break;
				case 2:	mon++;	break;
				case 3:	tue++;	break;
				case 4:	wed++;	break;
				case 5:	thu++;	break;
				case 6:	fri++;	break;
				case 7:	dat++;	break;

				}//switch
			}//for
			*/
			//병원 차트를 가져오기 위한 부분
			//병원 차트 요일별 저장하기
			
			System.out.println(mon);
			model.addAttribute("mon", mon);
			model.addAttribute("tue", tue);
			model.addAttribute("wed", wed);
			model.addAttribute("thu", thu);
			model.addAttribute("fri", fri);
			model.addAttribute("dat", dat);
			model.addAttribute("sun", sun);
			
			return "/partner/HospitalSystem";
		}//else if
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
