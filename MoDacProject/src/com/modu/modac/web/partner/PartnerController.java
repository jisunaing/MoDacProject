package com.modu.modac.web.partner;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
=======
>>>>>>> branch 'develope' of https://github.com/jisunaing/MoDacProject.git
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.ChartService;

import com.modu.modac.service.PartnerDto;
import com.modu.modac.service.PartnerService;

import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReservationDto;



@SessionAttributes("pid")
@Controller
public class PartnerController {
	private int mon=0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
	
<<<<<<< HEAD
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="chartService")
	private ChartService chartService;
=======
	//지훈
	@Resource(name="partnerService")
	private PartnerService partnerService;
>>>>>>> branch 'develope' of https://github.com/jisunaing/MoDacProject.git
	
	//진성
    @Resource(name="chartService")
    private ChartService chartService;
    //진성
    @Resource(name="partnerReservationService")
    private PartnerReservationService partnerReservationService;
   
	   //병원 메인 페이지로 이동
	   @RequestMapping("/partner/hospital/MainMove.do")
	   public String hospitalMainPage(@ModelAttribute("pid") String pid, Model model) throws Exception {
	      Map map =new HashMap();
	      //map.put("pid", pid);
	      map.put("pid", "test");
	      //병원 차트를 가져오기 위한 부분
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

<<<<<<< HEAD
		return "/partner/HospitalSystem";
	}
	
	
	//병원 예약 관리 페이지
	@RequestMapping("/partner/hospital/ReservationMove.do")
	public String hospitalReservationPage(
			@ModelAttribute("pid") String pid,
			Model model,
			@RequestParam Map map,
			HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage
			) throws Exception {
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= partnerReservationService.getTotalRecord(map);			
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]	
		List<OneMemoDTO> list= memoService.selectList(map);
		
		
		map.put("pid", pid);
		List<Map> list;
		list = partnerReservationService.hospitalReservationList(map);
		model.addAllAttributes(list);
		return "/partner/reservation/HospitalReservation";
	}
	
	//병원 예약 지낸 내역 페이지
	@RequestMapping("/partner/hospital/ReservationListMove.do")
	public String hospitalReservationHistoryPage(@ModelAttribute("pid") String pid, @RequestParam Map map, Model model) throws Exception {
		map.put("pid", pid);
		List<Map> list;
		list = partnerReservationService.hospitalreservationHistory(map);
		model.addAllAttributes(list);
		return "/partner/reservation/HospitalReservationHistory";
	}
=======
	      return "/partner/HospitalSystem";
	   }////hospitalMainPage
	   
	   
	   //병원 예약 관리 페이지
	   @RequestMapping("/partner/hospital/ReservationMove.do")
	   public String hospitalReservationPage(@ModelAttribute("pid") String pid, Model model) throws Exception {
	      Map map = new HashMap();
	      map.put("pid", pid);
	      List<Map> list;
	      list = partnerReservationService.hospitalReservationList(map);
	      model.addAllAttributes(list);
	      return "/partner/reservation/HospitalReservation";
	   }
	   
	   //병원 예약 지낸 내역 페이지
	   @RequestMapping("/partner/hospital/ReservationListMove.do")
	   public String hospitalReservationHistoryPage(@ModelAttribute("pid") String pid, @RequestParam Map map, Model model) throws Exception {
	      map.put("pid", pid);
	      List<Map> list;
	      list = partnerReservationService.hospitalreservationHistory(map);
	      model.addAllAttributes(list);
	      return "/partner/reservation/HospitalReservationHistory";
	   }
>>>>>>> branch 'develope' of https://github.com/jisunaing/MoDacProject.git

	   //병원 접수 관리 페이지
	   @RequestMapping("/partner/hospital/ReceiptMove.do")
	   public String hospitalReceiptPage(@ModelAttribute("pid") String pid, Model model) throws Exception {
	      Map map = new HashMap();
	      map.put("pid", pid);
	      List<Map> list;
	      list = partnerReservationService.hospitalReceiptList(map);
	      model.addAllAttributes(list);
	      return "/partner/reservation/HospitalReceipt";
	   }
	   //병원 접수 지난내역 페이지
	   @RequestMapping("/partner/hospital/ReceiptListMove.do")
	   public String hospitalReceiptHistoryPage(@ModelAttribute("pid") String pid, @RequestParam Map map, Model model) throws Exception {
	      map.put("pid", pid);
	      List<Map> list;
	      list = partnerReservationService.hospitalreceiptHistory(map);
	      model.addAllAttributes(list);
	      return "/partner/reservation/HospitalReceiptHistory";
	   }
	   
	   //병원 접수 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReceiptViewMove.do")
	   public String hospitalReceiptViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("receipt", "yes");
	      ReceptionDto dto;
	      dto = partnerReservationService.hospitalReceiptView(map);
	      dto.setReccontens(dto.getReccontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalListView";
	   }
	   
	   //병원 접수 지낸내역 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReceiptHistoryViewMove.do")
	   public String hospitalHistoryReceiptViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("receiptHistory", "yes");
	      ReceptionDto dto;
	      dto = partnerReservationService.hospitalReceiptHistoryView(map);
	      dto.setReccontens(dto.getReccontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalHistoryListView";
	   }
	   
	   //병원 예약 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReservationViewMove.do")
	   public String hospitalReservationViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("reservation", "yes");
	      ReservationDto dto;
	      dto = partnerReservationService.hospitalReservationView(map);
	      dto.setRescontens(dto.getRescontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalListView";
	   }
	   
	   //병원 예약 지난애역 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReservationHistoryViewMove.do")
	   public String hospitalReservationHistoryViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("reservationHistory", "yes");
	      ReservationDto dto;
	      dto = partnerReservationService.hospitalReservationHistoryView(map);
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalHistoryListView";
	   }

	
	
	//병원 정보 페이지
	@RequestMapping("/partner/mypage/partnerInfo.do")
	public String partnerInfo(@ModelAttribute("pid")String pid,Map map) throws Exception {
		
		PartnerDto dto;
		
		map.put("pid",pid);
	
		dto = partnerService.selectOne(map);
		
		map.put("partner", dto);
				
		
		return "/partner/mypage/partnerInfo";
	}

	//병원 문의 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA.do")
	public String partner_QnA() throws Exception {
		
		return "/partner/partnerQnA/partner_QnA";
	}
	
	//병원 문의 상세 페이지
	@RequestMapping("/partner/partnerQnA/partner_QnA_View.do")
	public String admin_QnA_View() throws Exception {
		
		return "/partner/partnerQnA/partner_QnA_View";
	}

	//병원 회원탈퇴 신청 페이지
	@RequestMapping("/partner/withdrawal/partner_withdrawal.do")
	public String withdrawal() throws Exception {
		
		return "/partner/withdrawal/partner_withdrawal";
	}
	
	
	//병원 회원탈퇴 버튼 눌렀을때 오는 맵핑
	@RequestMapping("/partner/withdrawal/partner_withdrawalREQ.do")
	public String withdrawalREQ() throws Exception {
		
		//현재 메인페이지로 보내야 하는 부분이 임시적이기 때문에 여기 또한 임시로 메인으로 보냄
		return "/index";
	}
	
	
	
}