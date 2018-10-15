package com.modu.modac.web.partner;              

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.ChartService;
import com.modu.modac.service.HealthInfoDto;
import com.modu.modac.service.HealthstateDto;
import com.modu.modac.service.PartnerReservationService;
import com.modu.modac.service.PartnerService;
import com.modu.modac.service.ReceptViewDto;
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
	private String pid1="",pid2="";
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	@Value("${BLOCK_SIZE}")
	private int blockPage;

    @Resource(name="chartService")
    private ChartService chartService;

	@Resource(name="partnerService")
	private PartnerService service;
    //진성
    @Resource(name="partnerReservationService")
    private PartnerReservationService partnerReservationService;
	
	
    //실시간 접수 알림 구현 구간
	@ResponseBody
	@RequestMapping(value = "/Ajax/AjaxReception.do", produces = "text/plain; charset=UTF-8")
	public String ajaxReception(@ModelAttribute("pid") String pid, Map map) throws Exception {
		if(pid1!=pid){
			System.out.println("저장된 아이디와 불러온 아이디가 같지 않을 경우");
			resultConfirmReception="";
			flagReceip=false;
			pid1=pid;
		}
		map.put("pid", pid);
		Map result = partnerReservationService.ajaxReceptionResult(map);
		if(!flagReceip){
			//안의 값이 null일시
			if(result==null){
				resultConfirmReception = "0";
				flagReceip=true;
			}
			//안의 값이 있을시
			else{
				resultConfirmReception = result.toString();
				flagReceip=true;
			}
		}
		//최초실행이 아닐시
		else{
			if(result!=null){
				if(resultConfirmReception=="0"){
					resultConfirmReception = result.toString();
					return result.get("RECNAME").toString()+"\r\n"+result.get("RECCONTENTS").toString();
				}
				else{
					if(result.toString().equals(resultConfirmReception)){
						return "";
					}
					else{
						resultConfirmReception = result.toString();
						return result.get("RECNAME").toString()+"\r\n"+result.get("RECCONTENTS").toString();
					}
				}
			}
			return "";
		}
		return "";
	}
	//실시간 예약 알림 구현 구간
	@ResponseBody
	@RequestMapping(value = "/Ajax/AjaxReservation.do", produces = "text/plain; charset=UTF-8")
	public String ajaxReservation(@ModelAttribute("pid") String pid, Map map) throws Exception {

		if(pid2!=pid){
			resultConfirmReservation="";
			flagReceip=false;
			pid2=pid;
		}
		map.put("pid", pid);
		Map result = partnerReservationService.ajaxReservationResult(map);
		if(!flagReservation){
			//안의 값이 null일시
			if(result==null){
				resultConfirmReservation = "0";
				flagReservation=true;
			}
			//안의 값이 있을시
			else{
				resultConfirmReservation = result.toString();
				flagReservation=true;
			}
		}
		//최초실행이 아닐시
		else{
			if(result!=null){
				if(resultConfirmReservation=="0"){
					resultConfirmReservation = result.toString();
					return result.get("RECNAME").toString()+"\r\n"+result.get("RECCONTENTS").toString();
				}
				else{
					if(result.toString().equals(resultConfirmReservation)){
						return "";
					}
					else{
						resultConfirmReservation = result.toString();
						return result.get("RECNAME").toString()+"\r\n"+result.get("RECCONTENTS").toString();
					}
				}
			}
			return "";
		}

		return "";
	}///////////////////////
	
	   //병원 메인 페이지로 이동
	   @RequestMapping("/partner/hospital/MainMove.do")
	   public String hospitalMainPage(@ModelAttribute("pid") String pid, Model model) throws Exception {
	      Map map =new HashMap();
	      //map.put("pid", pid);
	      map.put("pid", pid);
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
		System.out.println("nowPage : "+nowPage);
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
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/partner/hospital/ReservationMove.do?");
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
		System.out.println("검색하기 전");
		List<ReservationHistoryListDto> list= partnerReservationService.hospitalreservationHistory(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/partner/hospital/ReservationListMove.do?");
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
			System.out.println("nowPage : "+nowPage);
			map.put("pid", pid);
			//페이징을 위한 로직 시작]
			//전체 레코드 수
			int totalRecordCount= partnerReservationService.getTotalReceptionRecord(map);			
			//시작 및 끝 ROWNUM구하기]
			int start = (nowPage-1)*pageSize+1;
			int end   = nowPage*pageSize;
			System.out.println(start);
			System.out.println(end);
			map.put("start",start);
			map.put("end",end);
			//페이징을 위한 로직 끝]	
			List<ReceptionListDto> list= partnerReservationService.hospitalReceiptList(map);
			System.out.println(list);
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/partner/hospital/ReceiptMove.do?");
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
			System.out.println("nowPage : "+nowPage);
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
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/partner/hospital/ReceiptListMove.do?");
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
	public String hospitalViewPage(@ModelAttribute("pid") String pid,@RequestParam Map map,Model model) throws Exception {
		map.put("pid", pid);
		model.addAttribute("where", "reception");
		HealthstateDto helthinfo;
		ReceptViewDto receptViewDto;
		String name = partnerReservationService.nameConfirming(map);
		receptViewDto = partnerReservationService.receptionView(map);
		model.addAttribute("receptViewDto", receptViewDto);
		if(map.get("name").equals(name)) {//가입자 본인이 접수한 경우
			System.out.println("같은경우");
			helthinfo = partnerReservationService.helthinfo(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		else {//가입자가 가족으로 대신 접수한 경우
			System.out.println("name : "+map.get("name"));
			System.out.println("genid : "+map.get("genid"));
			map.put("name", map.get("name"));
			map.put("genid", map.get("genid"));
			String fno = partnerReservationService.famliyinfno(map);
			System.out.println("============="+fno);
			map.put("genid", fno);
			helthinfo = partnerReservationService.helthinfo(map);
			System.out.println("helthinfo : "+helthinfo);
			model.addAttribute("helthinfo", helthinfo);
		}
		return "/partner/reservation/HospitalListView";
	}	
	

	//병원 접수 지낸내역 상세보기 페이지
	@RequestMapping("/partner/hospital/ReceiptHistoryViewMove.do")
	public String hospitalHistoryViewPage(@ModelAttribute("pid") String pid,@RequestParam Map map,Model model) throws Exception {
		map.put("pid", pid);
		model.addAttribute("where", "receptionHistory");
		HealthstateDto helthinfo;
		ReceptViewDto receptViewDto;
		String name = partnerReservationService.nameConfirming(map);
		receptViewDto = partnerReservationService.receptionView(map);
		model.addAttribute("receptViewDto", receptViewDto);
		if(map.get("name").equals(name)) {//가입자 본인이 접수한 경우
			helthinfo = partnerReservationService.helthinfo(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		else {//가입자가 가족으로 대신 접수한 경우
			String fno = partnerReservationService.famliyinfno(map);
			map.put("genid", fno);
			helthinfo = partnerReservationService.helthinfo(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		return "/partner/reservation/HospitalView";
	}	

	
	
	//병원 예약 내역 상세보기 페이지
	@RequestMapping("/partner/hospital/ReservationViewMove.do")
	public String hospitalReservationView(@RequestParam Map map,Model model)throws Exception{
		model.addAttribute("where", "reservation");
		HealthstateDto helthinfo;
		ReservationDto reservationDto = partnerReservationService.hospitalReservationView(map);
		//genid의 가입자 이름 가져오기
		model.addAttribute("reservationDto", reservationDto);
		String name = partnerReservationService.nameConfirming(map);
		if(map.get("name").equals(name)) {//본인이 예약한 경우
			//본인 건강정보 들고오기
			helthinfo = partnerReservationService.helthinfo(map);
			//예약내역 들고오기
			model.addAttribute("helthinfo", helthinfo);
		}
		else {//가족정보로 예약한 경우
			String fno = partnerReservationService.famliyinfno(map);
			map.put("genid", fno);
			helthinfo = partnerReservationService.helthinfo(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		return "/partner/reservation/HospitalListView";
	}
	
	
	
	//병원 예약 지난내역 상세보기
	@RequestMapping("/partner/hospital/ReservationHistoryViewMove.do")
	public String hospitalReservationHistoryView(@RequestParam Map map,Model model)throws Exception{
		model.addAttribute("where", "reservationHistory");
		HealthstateDto helthinfo;
		ReservationDto reservationDto = partnerReservationService.hospitalReservationView(map);
		//genid의 가입자 이름 가져오기
		String name = partnerReservationService.nameConfirming(map);
		model.addAttribute("reservationDto", reservationDto);
		if(map.get("name").equals(name)) {//본인이 예약한 경우
			//본인 건강정보 들고오기
			helthinfo = partnerReservationService.helthinfo(map);
			//예약내역 들고오기
			reservationDto = partnerReservationService.hospitalReservationView(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		else {//가족정보로 예약한 경우
			String fno = partnerReservationService.famliyinfno(map);
			map.put("genid", fno);
			helthinfo = partnerReservationService.helthinfo(map);
			model.addAttribute("helthinfo", helthinfo);
		}
		return "/partner/reservation/HospitalView";
	}
	
	
	
	
	
	//병원 상세보기에서 목록으로 이동
	@RequestMapping("/partner/hospital/ListMove.do")
	public String hospitalListMove(
			@RequestParam Map map,
			Model model
			)throws Exception{
		System.out.println("컨트롤러에 들어옴");
		if(map.get("moveWhere").toString().equals("reservation")) {
			System.out.println("예약내역으로 들어옴");
			return "forward:/partner/hospital/ReservationMove.do";
		}
		if(map.get("moveWhere").toString().equals("reservationHistory")) {
			System.out.println("예약 지난 내역으로 들어옴");
			return "forward:/partner/hospital/ReceiptListMove.do";
		}
		if(map.get("moveWhere").toString().equals("reception")) {
			System.out.println("접수 내역으로 들어옴");
			model.addAttribute("name", map.get("name"));
			return "forward:/partner/hospital/ReceiptMove.do";
		}
		if(map.get("moveWhere").toString().equals("receptionHistory")) {
			System.out.println("접수 지난 내역으로 들어옴");
			return "forward:/partner/hospital/ReceiptListMove.do";
		}
		
		return "forward:/partner/hospital/ReceiptListMove.do";
	}
	
	
	//상세보기에서 수락을 눌렀을 경우
	@RequestMapping("/partner/hospital/yes.do")
	public String hospitalYes(@RequestParam Map map)throws Exception{
		System.out.println(map);
		
		if(!map.get("recnum").toString().equals("")) {//접수를 수락눌렀을 경우
			System.out.println("접수 수락을 눌렀을 시");
			partnerReservationService.receptListYes(map);
		}
		else if(!map.get("resnum").toString().equals("")) {//예약을 수락 눌렀을 경우
			System.out.println("예약 수락을 눌렀을 시");
			partnerReservationService.reservationListYes(map);
		}
		return "forward:/partner/hospital/MainMove.do";
	}
	
	//상세보기에서 거절을 눌렀을 시
	@RequestMapping("/partner/hospital/no.do")
	public String hospitalNo(@RequestParam Map map)throws Exception{
		if(!map.get("recnum").toString().equals("")) {//접수를 수락눌렀을 경우
			System.out.println("접수 거절을 눌렀을 시");
			partnerReservationService.receptListNo(map);
			return "forward:/partner/hospital/MainMove.do";
		}
		else if(!map.get("resnum").toString().equals("")) {//예약을 수락 눌렀을 경우
			System.out.println("예약 거절을 눌렀을 시");
			partnerReservationService.reservationListNo(map);
			return "forward:/partner/hospital/MainMove.do";
		}
		return "forward:/partner/hospital/MainMove.do";
	}
	
	
	
}