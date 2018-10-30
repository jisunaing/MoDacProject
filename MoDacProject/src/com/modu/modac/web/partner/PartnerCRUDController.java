package com.modu.modac.web.partner;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

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
	
	private PartnerDto dto;
	String subject; //가입할때 필요한거
	
	//진성 데이터 베이스를 위한 설정
	//진성 영역 
	
	@Resource(name="chartService")
	private ChartService chartService;
	//병원이동시 차트를 위한 변수선언-박진성
	private int mon,tue,wed,thu,fri,dat,sun;
	private int d00=0,d01=0,d02=0,d03=0,d04=0,d05=0,d06=0,d07=0,d08=0,d09=0,d10=0,d11=0,d12=0,d13=0,d14=0,d15=0,d16=0,d17=0,d18=0,d19=0,d20=0,d21=0,d22=0,d23=0;
	//진성영역 끝
	
	//서비스 주입]
	@Resource(name="partnerService")
	private PartnerService service;
	
	
	//병원 임시 제휴가입
	@RequestMapping("/partner/member/singup/joinrequest.do")
	public String joinrequest(@RequestParam Map map) throws Exception {
		//진료과목 파라미터 값
		subject = map.get("subjectlist").toString();	
	
		
		//백앤드에서 처리해야하지만 현재는 제휴신청 누르면 회원가입으로 처리하겠음
		String fulladdr;
		String addr1 = map.get("hosaddr").toString();
		String addr2 = map.get("addrDetail").toString();
		
		fulladdr = addr1+" "+addr2;
				
		map.put("hosaddr", fulladdr);					
		
		service.insert(map); // partner 기본정보 가입
		
		System.out.println("가입 완료");
		
				
		 dto = service.selectOne(map);
		
		//subject에 따른 추가 insert
		
		String hosno = dto.getHosno();
		
		
		map.put("pid",dto.getPid());
		map.put("hosno",hosno);
		
		StringTokenizer subjectToken = new StringTokenizer(subject , ",");
		int count = subjectToken.countTokens();
		String subjectArray[] = new String[count];
		
		 
		
		for(int i = 0; i < count; i++) {
			
			subjectArray[i] = subjectToken.nextToken();
										
			switch (subjectArray[i]) {
		
			case "가정의학과":  map.put("subjectcode",10); service.subjectList(map);  break;
			
			case "결핵과":  map.put("subjectcode",20); service.subjectList(map);  break;
			
			case "내과":  map.put("subjectcode",30); service.subjectList(map);  break;
			
			case "마취통증의학과":  map.put("subjectcode",40); service.subjectList(map);  break;
			
			case "비뇨의학과":  map.put("subjectcode",50); service.subjectList(map);  break;
			
			case "산부인과":  map.put("subjectcode",60); service.subjectList(map);  break;
			
			case "성형외과":  map.put("subjectcode",70); service.subjectList(map);  break;
			
			case "소아청소년과":  map.put("subjectcode",80); service.subjectList(map);  break;
			
			case "신경외과":  map.put("subjectcode",90); service.subjectList(map);  break;
			
			case "안과":  map.put("subjectcode",100); service.subjectList(map);  break;
			
			case "영상의학과":  map.put("subjectcode",110); service.subjectList(map);  break;
			
			case "외과":  map.put("subjectcode",120); service.subjectList(map);  break;
			
			case "이비인후과":  map.put("subjectcode",130); service.subjectList(map);  break;
			
			case "재활의학과":  map.put("subjectcode",140); service.subjectList(map);  break;
			
			case "정신건강의학과":  map.put("subjectcode",150); service.subjectList(map);  break;
			
			case "정형외과":  map.put("subjectcode",160); service.subjectList(map);  break;
			
			case "치과":  map.put("subjectcode",170); service.subjectList(map);  break;
			
			case "피부과":  map.put("subjectcode",180); service.subjectList(map);  break;
			
			case "한방과":  map.put("subjectcode",190); service.subjectList(map);  break;
			
			case "흉부외과":  map.put("subjectcode",200); service.subjectList(map);  break;
					
			default :  map.put("subjectcode",0); service.subjectList(map);  
			
			}///switch
															
		}///for문
		

		return "/index";
	}
	
	
	// 로그인 처리]
	@RequestMapping("/partner/member/loginProcess.do")
		public String process(@RequestParam Map map,Model model,HttpServletRequest req) throws Exception{
			
			
		
			boolean isLogin = service.isMember(map); //회원 여부 판단
			
			boolean isWithdrawal = service.isWithdrawal(map);
			
			
			
			String pid = map.get("pid").toString();
			
			System.out.println("로그인 아이디 :"+pid);

			
			if(isLogin) { //회원은 맞지만 수락 여부 X
				
				
				
					boolean isAccept = service.isAccept(map);
					
					if(isAccept) { // 회원도 맞고 제휴 수락도 Y인 경우
					
					HttpSession session = req.getSession();
					
					session.setAttribute("pid",map.get("pid"));
					
					service.selectOne(map);

		
					//병원 차트를 가져오기 위한 부분 	
				
				      //병원수, 약국수, 일반사용자 수,제휴병원 수 얻어오기
				      List<Map> totals = chartService.mainChartTableRecord();
				      model.addAttribute("totals", totals.get(0));
				      
				      List<Map> listresult = chartService.reservationReception(map);
				      System.out.println(listresult);
				      model.addAttribute("reservation",listresult.get(0));
				      //요일별////////////////////////////////////////////////////////////////////////
				      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				      Calendar cal = Calendar.getInstance();
				      List<String> list;
				      list = chartService.dayList(map);
				      if(list!=null) {
				         for(int i=0;i<list.size();i++) {
				            cal.setTime(dateFormat.parse(list.get(i).toString()));
				            switch (cal.get(Calendar.DAY_OF_WEEK)) {
				            case 1:   sun++;   break;
				            case 2:   mon++;   break;
				            case 3:   tue++;   break;
				            case 4:   wed++;   break;
				            case 5:   thu++;   break;
				            case 6:   fri++;   break;
				            case 7:   dat++;   break;
				            }//switch
				         }//for
				      }//if
				      else {
				         model.addAttribute("chartError", "불러올 차트가 없어요");
				      }
				      //병원 차트를 가져오기 위한 부분
				      //병원 차트 요일별 저장하기
				      model.addAttribute("mon", mon);
				      model.addAttribute("tue", tue);
				      model.addAttribute("wed", wed);
				      model.addAttribute("thu", thu);
				      model.addAttribute("fri", fri);
				      model.addAttribute("dat", dat);
				      model.addAttribute("sun", sun);
				      mon=0;tue=0;wed=0;thu=0;fri=0;dat=0;sun=0;
				      //요일별////////////////////////////////////////////////////////////////////////
				      ////////////////시간대별////////////////////////////////////////
					   if(list!=null) {
					       for(int i=0;i<list.size();i++) {
					    	 cal.setTime(dateFormat.parse(list.get(i).toString()));
					          switch (cal.get(Calendar.HOUR_OF_DAY)) {
				              case 0:   d00++;   break;
				              case 1:   d01++;   break;
				              case 2:   d02++;   break;
				              case 3:   d03++;   break;
				              case 4:   d04++;   break;
				              case 5:   d05++;   break;
				              case 6:   d06++;   break;
				              case 7:   d07++;   break;
				              case 8:   d08++;   break;
				              case 9:   d09++;   break;
				              case 10:  d10++;   break;
				              case 11:  d11++;   break;
				              case 12:  d12++;   break;
				              case 13:  d13++;   break;
				              case 14:  d14++;   break;
				              case 15:  d15++;   break;
				              case 16:  d16++;   break;
				              case 17:  d17++;   break;
				              case 18:  d18++;   break;
				              case 19:  d19++;   break;
				              case 20:  d20++;   break;
				              case 21:  d21++;   break;
				              case 22:  d22++;   break;
				              case 23:  d23++;   break;
				              default : d23++;
				              
				              }//switch
				           }//for
				        }//if
				        else {
				           model.addAttribute("chartError", "불러올 차트가 없어요");
				        }	      
				        model.addAttribute("d00", d00);
				        model.addAttribute("d01", d01);
				        model.addAttribute("d02", d02);
				        model.addAttribute("d03", d03);
				        model.addAttribute("d04", d04);
				        model.addAttribute("d05", d05);
				        model.addAttribute("d06", d06);
				        model.addAttribute("d07", d07);
				        model.addAttribute("d08", d08);
				        model.addAttribute("d09", d09);
				        model.addAttribute("d10", d10);
				        model.addAttribute("d11", d11);
				        model.addAttribute("d12", d12);
				        model.addAttribute("d13", d13);
				        model.addAttribute("d14", d14);
				        model.addAttribute("d15", d15);
				        model.addAttribute("d16", d16);
				        model.addAttribute("d17", d17);
				        model.addAttribute("d18", d18);
				        model.addAttribute("d19", d19);
				        model.addAttribute("d20", d20);
				        model.addAttribute("d21", d21);
				        model.addAttribute("d22", d22);
				        model.addAttribute("d23", d23);
				        d00=0;d01=0;d02=0;d03=0;d04=0;
				        d05=0;d06=0;d07=0;d08=0;d09=0;
				        d10=0;d11=0;d12=0;d13=0;d14=0;
				        d15=0;d16=0;d17=0;d18=0;d19=0;
				        d20=0;d21=0;d22=0;d23=0;
				        /////////////////////////시간대별////////////////////////////////////////////////
		              
		             					
					}//회원도 맞고 제휴 수락도 Y인 경우
					
					else if(isWithdrawal) {
						
						
						model.addAttribute("loginError", "현재 회원탈퇴 신청된 아이디 입니다.");
						return "/general/member/Login.tiles";
						
						
					}
					
					else {
						
						model.addAttribute("loginError", "현재 제휴승인 대기중입니다.. 조금만 더 기달려주세요.");

						return "/general/member/Login.tiles";
						
						
					}
										
			}/////회원은 맞지만 수락 여부  X
		
			else {//비회원 혹은  아이디 or 비밀번호 틀림
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
	
	
	
	//병원 정보 페이지
	@RequestMapping("/partner/mypage/partnerInfo.do")
	public String partnerInfo(Map map) throws Exception {
		
		
		PartnerDto dto = service.selectOne(map);
	
		map.put("hosno",dto.getHosno());	
						
		List<Map> subjectlist = service.subjectListAll(map);
		
		StringBuffer buffer = new StringBuffer();
		
		for(int i=0; i < subjectlist.size(); i++) {
			
			buffer.append(subjectlist.get(i).get("SUBNAME")+",");
					
		}
		
		String subs = buffer.toString();
		
		subs = buffer.substring(0,subs.lastIndexOf(','));
			
		map.put("subjectlist",subs);
						
		map.put("pid",map.get("pid"));
		
		map.put("partner", dto);
				
		
		return "/partner/mypage/partnerInfo";
	}
	
	
	// 병원 정보 수정페이지
	@RequestMapping("/partner/mypage/partnerInfoEdit.do")
	public String partnerInfoEdit(@RequestParam Map map,Map maps,Model model) throws Exception {
		
		PartnerDto dto = service.selectOne(map);
		
		map.put("hosno",dto.getHosno());	
				
		List<Map> subjectlist = service.subjectListAll(map);
		
		StringBuffer buffer = new StringBuffer();
		
		for(int i=0; i < subjectlist.size(); i++) {
			
			buffer.append(subjectlist.get(i).get("SUBNAME")+",");
					
		}
		
		String subs = buffer.toString();
		
		subs = buffer.substring(0,subs.lastIndexOf(','));
			
		maps.put("subjectlist",subs);
		
		maps.put("pid",map.get("pid"));
					
		maps.put("partner",map);
		
		model.addAllAttributes(maps);				

		return "/partner/mypage/partnerInfoEdit";
	}
	
	
	//병원정보 수정완료
	@RequestMapping("/partner/mypage/partnerInfoEditOK.do")
	public String partnerInfoEditOK(@RequestParam Map map,Map maps,Model model) throws Exception {
		
	
		maps.put("pid",map.get("pid"));
			
		PartnerDto dto = service.selectOne(maps);
		
		map.put("hosno",dto.getHosno());	
					
		int updateone = service.updateone(map);
				
		int updatetwo = service.updatetwo(map);
				
		
		return "forward:/partner/mypage/partnerInfo.do";
	}
	
	

	//병원 회원탈퇴 신청 페이지
	@RequestMapping("/partner/withdrawal/partner_withdrawal.do")
	public String withdrawal(@RequestParam Map map,SessionStatus status,@ModelAttribute("pid")String pid,Model model) throws Exception {
		
		map.put("pid",pid);
		PartnerDto partner = service.selectOne(map);
										
		partner.setPid(pid);
				
		model.addAttribute("partner",partner);
		
		return "/partner/withdrawal/partner_withdrawal";
	}
	
	
	
	//병원 회원탈퇴 버튼 눌렀을때 오는 맵핑
	@RequestMapping("/partner/withdrawal/partner_withdrawalREQ.do")
	public String withdrawalREQ(@RequestParam Map map,SessionStatus status) throws Exception {
		
		//회원탈퇴 눌러서 왔으니 Accept를 D로 바꿔주자  D로 확인이 되는 회원은 로그인에서도 탈퇴 대기중이라고 변경해줘야함
		service.withdrawal(map);
		
		//회원아웃 테이블에 해당 회원을 추가
		service.withdrawalInsert(map);
				
		//세션에서 분리시켜준다
		status.setComplete();
		
		//현재 메인페이지로 보내야 하는 부분이 임시적이기 때문에 여기 또한 임시로 메인으로 보냄
		return "/index";
	}
	
	
	
	
	
	
	

}///PartnerCRUDController
