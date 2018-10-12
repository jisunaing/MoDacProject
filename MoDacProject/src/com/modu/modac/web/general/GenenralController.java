package com.modu.modac.web.general;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.ReservationService;
@SessionAttributes("USER_ID")
@Controller
public class GenenralController {
	
	//진성 영역 시작
	@Resource(name="reservationService")
	private ReservationService reservationService;
	
	//접수,예약 내역으로 이동하는 컨트롤러
	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList(@ModelAttribute("USER_ID") String genid, Map map, Model model) throws Exception {
		map.put("genid", genid);
		//접수내역 얻어오기
		List<Map> receiptList = reservationService.receiptList(map);
		//예약내역 얻어오기
		List<Map> reservationList = reservationService.reservationList(map);
		
		model.addAttribute("receiptList", receiptList);
		model.addAttribute("reservationList", reservationList);
		
		
		
		return "general/reservation/Reservation_List.tiles";
	}

	//접수 버튼을 누르면 실행되는 것
	@RequestMapping("/general/receipt/ReceiptListResult.do")
	public String ReceiptListResult(@RequestParam Map map,@ModelAttribute("USER_ID") String genid)throws Exception{
		System.out.println(genid);
		System.out.println(map);
		//데이터베이스에 집어 넣기
		reservationService.receiptInsert(map);
		return "forward:/general/reservation/reservationlist.do";
	}
	
	//예약 버튼을 부르면 실행되는 것
	@RequestMapping("/general/receipt/ReservationListResult.do")
	public String ReservationListResult(@RequestParam Map map,@ModelAttribute("USER_ID") String genid)throws Exception{
		if(map.get("resdate").toString().trim().length()==0) {//시간이 선택되지 않았을시 현재 시간 반영
			map.put("resdate", new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date()));
		}//if
		//데이터베이스에 집어 넣기
		reservationService.reservationInset(map);
		return "forward:/general/reservation/reservationlist.do";
	}
	
	//예약 취소 클릭시
	@RequestMapping("/general/receipt/ReservationCancel.do")
	public String ReservationCancel(@RequestParam Map map,@ModelAttribute("USER_ID") String genid)throws Exception{
		reservationService.reservationCancel(map);
		return "forward:/general/reservation/reservationlist.do";
	}
	
	//접수 취소 클릭시
	@RequestMapping("/general/receipt/ReceiptCancel.do")
	public String ReceptCancel()throws Exception{
		
		
		return "forward:/general/reservation/reservationlist.do";
	}
	
	//진성 영역 끝
	
	
}