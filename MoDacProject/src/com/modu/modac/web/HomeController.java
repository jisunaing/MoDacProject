package com.modu.modac.web;
               
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);

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
	
	
	//제휴 회원가입 신청 폼
	@RequestMapping("/general/member/signup/partnerJoin.do")
	public String partnerJoin() throws Exception {
		return "general/member/signup/Join_P.tiles";
	}

	  //임의로 로그인 처리함
	   @RequestMapping("/home/loginProcess.do")
	   public String loginProcess(@RequestParam Map map, Model model,HttpSession session) throws Exception {
	      /*//네이버 로그인 
		   if(map.get("type").equals("naverlogin")) {
			   
		   }*/
		   
		   //일반사용자 로그인 처리 부분 시작
	      boolean ismember = generalService.isMember(map);
	      if(ismember) {
	         model.addAllAttributes(map);
	         session.setAttribute("genid", map.get("genid"));
	         return "/index";
	      }
	      else {
	         model.addAttribute("loginError", "존재하지 않는 아이디/비밀번호 입니다");
	         return "forward:/home/loginmain.do";
	      }
	   }
	
/*		
  		//임의로 로그인 처리함
		@RequestMapping("/home/loginProcess.do")
		public String loginProcess(@RequestParam Map map, Model model,HttpSession session) throws Exception {
			//System.out.println(map.get("GENERAL").toString());
			//System.out.println(map.get("PARTNER").toString());
			
			if(map.get("GENERAL")!=null) {
				System.out.println("일반사용자로 들어옴");
				//일반사용자 로그인 처리 부분 시작
				boolean ismember = generalService.isMember(map);
				if(ismember) {
					model.addAllAttributes(map);
					session.setAttribute("genid", map.get("genid"));
					return "/index";
				}
				else {
					model.addAttribute("loginError", "존재하지 않는 아이디/비밀번호 입니다");
					return "forward:/home/loginmain.do";
				}
			}
			if(map.get("PARTNER")!=null) {
				System.out.println("병원사용자로 들어옴");
				session.setAttribute("PARTNER_ID", "PARTNER");
				//여기 맵에 ! 반드시 세션[병원아이디]를 넣어주세요
				map.put("pid", "uesr");
				//병원 차트를 가져오기 위한 부분
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Calendar cal = Calendar.getInstance();
				List<Map> list;
				list = chartService.dayList(map);
				System.out.println(list);
				if(list!=null) {
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
				}//if
				//병원 차트를 가져오기 위한 부분
				//병원 차트 요일별 저장하기
				model.addAttribute("mon", mon);
				model.addAttribute("tue", tue);
				model.addAttribute("wed", wed);
				model.addAttribute("thu", thu);
				model.addAttribute("fri", fri);
				model.addAttribute("dat", dat);
				model.addAttribute("sun", sun);
				
				return "/partner/HospitalSystem";
			}
			return null;
		}
*/
	
		//로그아웃처리
		@RequestMapping("/home/loginout.do")
		public String logoutProcess(HttpSession session) throws Exception {
			session.invalidate();
			//session.removeAttribute("PARTNER_ID");  제휴회원 로그인 처리 끝 임시로 사용 안해도됨 추후에 이 부분 삭제할꺼임
			return "/index";
		}

}/////HomeController
