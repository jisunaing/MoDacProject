package com.modu.modac.web.partner;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.modu.modac.service.ChartService;
import com.modu.modac.service.PartnerDto;
import com.modu.modac.service.PartnerService;

@SessionAttributes("pid")
@Controller
public class PartnerCRUDController {
	
	//진성 데이터 베이스를 위한 설정
	//진성 영역 
	
	@Resource(name="chartService")
	private ChartService chartService;
	//병원이동시 차트를 위한 변수선언-박진성
	private int mon,tue,wed,thu,fri,dat,sun;
	
	//진성영역 끝
	
	//서비스 주입]
	@Resource(name="partnerService")
	private PartnerService service;
	
	
	//병원 제휴신청 처리용
	@RequestMapping("/partner/member/singup/joinrequest.do")
	public String joinrequest(@RequestParam Map map) throws Exception {
		
		//백앤드에서 처리해야하지만 현재는 제휴신청 누르면 회원가입으로 처리하겠음
		String fulladdr;
		String addr1 = map.get("hosaddr").toString();
		String addr2 = map.get("addrDetail").toString();
		
		fulladdr = addr1+" "+addr2;
				
		map.put("hosaddr", fulladdr);					
		
		service.insert(map);

		return "/index";
	}
	
	
	// 로그인 처리]
	@RequestMapping("/partner/member/loginProcess.do")
		public String process(@RequestParam Map map,Model model,HttpServletRequest req) throws Exception{
			
			boolean isLogin = service.isMember(map);
			
			if(isLogin) {//회원인 경우
				
				HttpSession session = req.getSession();
				
				session.setAttribute("pid",map.get("pid"));
				
				model.addAttribute("test","test");
				
				// ↑ 세션 확인용 추후에 test부분 삭제할꺼임
				
				
				
				
				/* HomeController 부분에 병원쪽 부분이 있길래 가져옴
				  내가 작업한 부분이 아니라 오류 떠서 주석처리 했음*/
				  
				//병원 차트를 가져오기 위한 부분 
				 
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Calendar cal = Calendar.getInstance();
				List<String> list;
				
				
							
				list = chartService.dayList(map);
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
				//병원 차트를 가져오기 위한 부분
				//병원 차트 요일별 저장하기
				model.addAttribute("mon", mon);
				model.addAttribute("tue", tue);
				model.addAttribute("wed", wed);
				model.addAttribute("thu", thu);
				model.addAttribute("fri", fri);
				model.addAttribute("dat", dat);
				model.addAttribute("sun", sun);
							
										
			}
			else {//비회원
				model.addAttribute("loginError", "아이디 혹은 비밀번호가 일치하지 않습니다.");

				return "/general/member/Login.tiles";
				
			}

			return "forward:/WEB-INF/views/partner/HospitalSystem.jsp";
		}//////////////////////
		// 로그아웃 처리]

	
	@RequestMapping("/partner/hospital/Logout.do")
	public String logout(SessionStatus status) throws Exception {
		
		// 로그 아웃처리-세션영역에 속성 삭제]
		status.setComplete();
		
		//메인으로 이동시킴
		return "forward:/";
	}/////////////// logout()
	
	
	
	// 병원 정보 수정페이지
	@RequestMapping("/partner/mypage/partnerInfoEdit.do")
	public String partnerInfoEdit(@RequestParam Map map,Map maps,Model model) throws Exception {
			
			maps.put("partner",map);
			
			model.addAllAttributes(maps);				

		return "/partner/mypage/partnerInfoEdit";
	}
	
	@RequestMapping("/partner/mypage/partnerInfoEditOK.do")
	public String partnerInfoEditOK(@RequestParam Map map,Map maps,Model model,@ModelAttribute("pid")String pid) throws Exception {
		
		
		maps.put("pid",pid);
		
		System.out.println("pid : "+pid);
	
		PartnerDto dto = service.selectOne(maps);
		
		
		map.put("hosno",dto.getHosno());	
		
		System.out.println("HOSNO = "+dto.getHosno());
		
					
		int updateone = service.updateone(map);
		

		
		int updatetwo = service.updatetwo(map);
				
		
		return "forward:/partner/mypage/partnerInfo.do";
	}
	
	
	
	
	
	
	

}///PartnerCRUDController
