package com.modu.modac.web;
               
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.modu.modac.service.ChartService;
import com.modu.modac.service.GeneralService;
import com.modu.modac.service.impl.NaverLoginBO;

@Controller
public class HomeController {
	//서비스 주입]
	@Resource(name="generalService")
	private GeneralService generalService;
	
	//진성 데이터 베이스를 위한 설정
	//진성 영역 
	@Resource(name="chartService")
	private ChartService chartService;
	//병원이동시 차트를 위한 변수선언-박진성
	private int mon=0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
	//진성영역 끝

	@RequestMapping("/home/index.do")
	public String home() throws Exception {
		return "/index";
	}
	/* NaverLoginBO */
	@Resource(name="naverLoginBO")
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
	
	//로그인 버튼 눌럿을때 오는 부분
	@RequestMapping("/home/loginmain.do")
	public String loginMain(HttpSession session, Model model) throws Exception {

		 /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);

        System.out.println(naverAuthUrl);
        /* 생성한 인증 URL을 View로 전달 */ 
		return "general/member/Login.tiles";
	}
	
	@RequestMapping("/general/member/signup/Join_P.do")
	public String join_P() throws Exception {
		
		return "general/member/signup/Join_P.tiles";
	}
	
	//일반 회원가입 신청 폼으로 이동
	@RequestMapping("/general/member/signup/genSignupWrite.do")
	public String genSignupWrite() throws Exception {
		
		return "general/member/signup/GenSignUpWrite.tiles";
	}
	//회원가입 페이지에서 아이디 중복체크
	@RequestMapping("/general/member/signup/genSignupIdCheck.do")
	public String genSignupIdCheck() throws Exception {
		return "general/mypage/MyPage.tiles";
	}
	//일반 회원가입 신청 
	@RequestMapping("/general/member/signup/genSignupProcess.do")
	public String genSignupProcess(@RequestParam Map map, Model model,HttpSession session) throws Exception {
		map.put("birthdate", map.get("year")+"/"+map.get("month")+"/"+map.get("day"));  
		map.put("addr", map.get("addr").toString().concat("&"+map.get("addrDetail").toString()));
		session.setAttribute("genid", map.get("genid"));
		model.addAllAttributes(map);
		generalService.insert(map);
		return "forward:/general/mypage/personalinfo.do";
	}
	
	@RequestMapping("/main.do")
	public String healthCateg() throws Exception {
		return "forward:/healthinfoList.do";
	}
	
	//제휴 회원가입 신청 폼
	@RequestMapping("/general/member/signup/partnerJoin.do")
	public String partnerJoin() throws Exception {
		return "general/member/signup/Join_P.tiles";
	}

	//로그아웃처리
	@RequestMapping("/home/loginout.do")
	public String logoutProcess(HttpSession session) throws Exception {
		System.out.println("invalidate");
		session.invalidate();
		return "/main.do";
	}

	@RequestMapping("/home/loginProcess.do")
   public String loginProcess(@RequestParam Map map, Model model,HttpSession session, Authentication auth) throws Exception {
		UserDetails authenticated=(UserDetails)auth.getPrincipal();

		if(authenticated.getUsername() != null) {
			//스프링 씨큐리티 적용 후
			map.put("genid",authenticated.getUsername());
		
			session.setAttribute("genid", map.get("genid"));
			session.getAttribute("genid");
			model.addAllAttributes(map);
			return "/index";
		} else {
			model.addAttribute("loginError", "존재하지 않는 아이디/비밀번호 입니다");
			return "forward:/home/loginmain.do";
		}
		
   }
	
	
}/////HomeController
