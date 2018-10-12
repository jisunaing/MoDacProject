package com.modu.modac.web.partner;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.AjaxReceptionDto;
import com.modu.modac.service.ChartService;

import com.modu.modac.service.PartnerDto;
import com.modu.modac.service.PartnerService;

import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.ReceptionDto;
import com.modu.modac.service.ReceptionHistoryListDto;
import com.modu.modac.service.ReceptionListDto;
import com.modu.modac.service.ReservationDto;
import com.modu.modac.service.ReservationHistoryListDto;
import com.modu.modac.service.ReservationListDto;
import com.modu.modac.service.impl.PagingUtil;



@SessionAttributes("pid")
@Controller
public class PartnerController {
	private int mon=0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
	private String resultConfirmReception="";
	private String resultConfirmReservation="";
	private boolean flagReceip=false;
	private boolean flagReservation=false;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;

	//지훈
	@Resource(name="partnerService")
	private PartnerService partnerService;
	
	//진성
    @Resource(name="chartService")
    private ChartService chartService;
    //진성
    @Resource(name="partnerReservationService")
    private PartnerReservationService partnerReservationService;
    	
    //실시간 접수 알림 구현 구간
	@ResponseBody
	@RequestMapping(value="/Ajax/AjaxReception.do",produces="text/plain; charset=UTF-8")
	public String ajaxReception(@ModelAttribute("pid") String pid,Map map) throws Exception{
		map.put("pid", pid);
		Map result = partnerReservationService.ajaxReceptionResult(map);
		if(result!=null) {//값이 있는 경우
			if(!flagReceip) {//최초 실행인 경우
				System.out.println("최초 실행인 경우");
				resultConfirmReception = result.toString();
				flagReceip=!false;
			}
			else {//최소실행이 아닌 경우
				if(result.toString().equals(resultConfirmReception)) {//가장 최근 목록과 기존에 저장된 값이 같은 경우
					System.out.println("값이 같은 경우");
					return "";
				}
				else {//가장 최근 목록과 기존에 저장된 값이 다른 경우
					if(result.toString()!=resultConfirmReception) {
						System.out.println("값이 다른 경우");
						resultConfirmReception = result.toString();
						return result.get("RECNAME").toString()+"\r\n"+result.get("RECCONTENTS").toString();
					}
				}
			}
			return "";
		}//if
		else {//완전 최초 접수 내역이 아에 없을 시
			System.out.println("값이 아에 없을떄");
			return "";
		}//else
	}///////////////////////
	
	//실시간 예약 알림 구현 구간
	@ResponseBody
	@RequestMapping(value="/Ajax/AjaxReservation.do",produces="text/plain; charset=UTF-8")
	public String ajaxReservation(@ModelAttribute("pid") String pid,Map map) throws Exception{
		map.put("pid", pid);
		Map result = partnerReservationService.ajaxReservationResult(map);
		if(result!=null) {//값이 있는 경우
			if(!flagReservation) {//최초 실행인 경우
				resultConfirmReservation = result.toString();
				flagReservation=!false;
			}
			else {//최소실행이 아닌 경우
				if(result.toString().equals(resultConfirmReservation)) {//가장 최근 목록과 기존에 저장된 값이 같은 경우
					return "";
				}
				else {//가장 최근 목록과 기존에 저장된 값이 다른 경우
					if(result.toString()!=resultConfirmReservation) {
						resultConfirmReservation = result.toString();
						return result.get("RESNAME").toString()+"\r\n"+result.get("RESCONTENTS").toString();
					}
				}
			}
			return "";
		}//if
		else {//완전 최초 접수 내역이 아에 없을 시
			return "";
		}//else
	}///////////////////////	
	
	
    
    
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
		//병원 아이디 맵에 저장
		map.put("pid", pid);
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= partnerReservationService.getTotalReservationRecord(map);			
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]	
		List<ReservationListDto> list= partnerReservationService.hospitalReservationList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, start, end, nowPage, req.getContextPath()+"/partner/hospital/ReservationMove.do?");
		//데이타 저장]
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);		
		//뷰 정보반환
		return "/partner/reservation/HospitalReservation";
	}
	
	//병원 예약 지낸 내역 페이지
	@RequestMapping("/partner/hospital/ReservationListMove.do")
	public String hospitalReservationHistoryPage(
			@ModelAttribute("pid") String pid, 
			@RequestParam Map map, 
			Model model,
			HttpServletRequest req,
			@RequestParam(required=false,defaultValue="1") int nowPage
			) throws Exception {
		map.put("pid", pid);
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= partnerReservationService.getTotalReservationHistoryRecord(map);			
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		//페이징을 위한 로직 끝]	
		List<ReservationHistoryListDto> list= partnerReservationService.hospitalreservationHistory(map);
		list = partnerReservationService.hospitalreservationHistory(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, start, end, nowPage, req.getContextPath()+"/partner/hospital/ReservationListMove.do?");
		//데이타 저장]
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);	
		//뷰 정보 반환
		return "/partner/reservation/HospitalReservationHistory";
	}

	   //병원 접수 관리 페이지
	   @RequestMapping("/partner/hospital/ReceiptMove.do")
	   public String hospitalReceiptPage(			
			    @ModelAttribute("pid") String pid, 
				@RequestParam Map map, 
				Model model,
				HttpServletRequest req,
				@RequestParam(required=false,defaultValue="1") int nowPage
				) throws Exception {
		   
			map.put("pid", pid);
			//페이징을 위한 로직 시작]
			//전체 레코드 수
			int totalRecordCount= partnerReservationService.getTotalReceptionRecord(map);			
			//시작 및 끝 ROWNUM구하기]
			int start = (nowPage-1)*pageSize+1;
			int end   = nowPage*pageSize;
			map.put("start",start);
			map.put("end",end);
			//페이징을 위한 로직 끝]	
			List<ReceptionListDto> list= partnerReservationService.hospitalReceiptList(map);
			System.out.println(list);
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, start, end, nowPage, req.getContextPath()+"/partner/hospital/ReceiptMove.do?");
			//데이타 저장]
			model.addAttribute("list", list);
			model.addAttribute("pagingString", pagingString);
			model.addAttribute("totalRecordCount", totalRecordCount);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageSize", pageSize);	
			
	      return "/partner/reservation/HospitalReceipt";
	   }
	   
	   
	   
	   
	   //병원 접수 지난내역 페이지
	   @RequestMapping("/partner/hospital/ReceiptListMove.do")
	   public String hospitalReceiptHistoryPage(
			    @ModelAttribute("pid") String pid, 
				@RequestParam Map map, 
				Model model,
				HttpServletRequest req,
				@RequestParam(required=false,defaultValue="1") int nowPage
			   ) throws Exception {
	      map.put("pid", pid);
			//페이징을 위한 로직 시작]
			//전체 레코드 수
			int totalRecordCount= partnerReservationService.getTotalReceptionHistoryRecord(map);			
			//시작 및 끝 ROWNUM구하기]
			int start = (nowPage-1)*pageSize+1;
			int end   = nowPage*pageSize;
			map.put("start",start);
			map.put("end",end);
			//페이징을 위한 로직 끝]	
			List<ReceptionHistoryListDto> list= partnerReservationService.hospitalreceiptHistory(map);
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, start, end, nowPage, req.getContextPath()+"/partner/hospital/ReceiptListMove.do?");
			//데이타 저장]
			model.addAttribute("list", list);
			model.addAttribute("pagingString", pagingString);
			model.addAttribute("totalRecordCount", totalRecordCount);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageSize", pageSize);	
	      return "/partner/reservation/HospitalReceiptHistory";
	   }
	   
	   //병원 접수 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReceiptViewMove.do")
	   public String hospitalReceiptViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("moveWhere", "receipt");
	      ReceptionDto dto;	      
	      dto = partnerReservationService.hospitalReceiptView(map);
	      dto.setReccontens(dto.getReccontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalListView";
	   }
	   
	   //병원 접수 지낸내역 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReceiptHistoryViewMove.do")
	   public String hospitalHistoryReceiptViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("moveWhere", "receiptHistory");
	      ReceptionDto dto;
	      dto = partnerReservationService.hospitalReceiptHistoryView(map);
	      dto.setReccontens(dto.getReccontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalHistoryListView";
	   }
	   
	   //병원 예약 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReservationViewMove.do")
	   public String hospitalReservationViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("moveWhere", "reservation");
	      ReservationDto dto;
	      dto = partnerReservationService.hospitalReservationView(map);
	      dto.setRescontens(dto.getRescontens().replace("\r\n","<br/>"));
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalListView";
	   }
	   
	   //병원 예약 지난내역 상세보기 페이지
	   @RequestMapping("/partner/hospital/ReservationHistoryViewMove.do")
	   public String hospitalReservationHistoryViewPage(@RequestParam Map map, Model model) throws Exception {
	      model.addAttribute("moveWhere", "reservationHistory");
	      ReservationDto dto;
	      dto = partnerReservationService.hospitalReservationHistoryView(map);
	      model.addAttribute("record", dto);
	      return "/partner/reservation/HospitalHistoryListView";
	   }

	   //상세보기에서 접수,예약 목록으로 이동하는 컨트롤러
	   @RequestMapping("/partner/hospital/ListMove.do")
	   public String ViewNListMove(@RequestParam Map map)throws Exception{
		   if(map.get("receipt").equals("receipt")) {
			   //접수내역으로 이동
			   return "forward:/partner/hospital/ReceiptMove.do";
		   }
		   else if(map.get("receiptHistory").equals("receiptHistory")) {
			   //접수 지난 내역으로 이동
			   return "forward:/partner/hospital/ReceiptListMove.do";
		   }
		   else  if(map.get("reservation").equals("reservation")) {
			   //예약 내역으로 이동
			   return "forward:/partner/hospital/ReservationMove.do";
		   }
		   else {
			   //예약 지난 내역으로 이동
			   return "forward:/partner/hospital/ReceiptListMove.do";
		   }
		   
	   }
	   
	   //병원에서 접수나 예약을 수락하였을 때
	   @RequestMapping("/partner/hospital/yes.do")
	   public String listYes(@RequestParam Map map)throws Exception{
		   //병원이 접수를 수락하였을 때
		   if(map.get("receipt").equals("receipt")) {
			   partnerReservationService.receptListYes(map);
			   return "forward:/partner/hospital/ReceiptMove.do";
		   }
		   //병원이 예약을 수락하였을 떄
		   else {
			   partnerReservationService.reservationListYes(map);
			   return "forward:/partner/hospital/ReservationMove.do";
		   }
	   }
	   
	   //병원에서 접수나 예약을 거절하였을떄
	   @RequestMapping("/partner/hospital/no.do")
	   public String listNo(@RequestParam Map map)throws Exception{
		   if(map.get("receipt").equals("receipt")) {
			   partnerReservationService.receptListNo(map);
			   return "forward:/partner/hospital/ReceiptMove.do";
		   }
		   else {
			   partnerReservationService.reservationListNo(map);
			   return "forward:/partner/hospital/ReservationMove.do";
		   }
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