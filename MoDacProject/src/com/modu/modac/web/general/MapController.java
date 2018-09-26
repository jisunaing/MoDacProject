package com.modu.modac.web.general;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MapController {
	
	
	@RequestMapping("/general/hospital/SelectSubject.do")
	public String subHosMapPage(@RequestParam Map map,Model model) throws Exception {
		//마이페이지에서 넘어올때 alert띄워줄때 필요함 
		model.addAttribute("message", "예약/접수를 위해 병원 선택 페이지로 이동합니다");
		
				
		return "general/hospital/SelectSubject.tiles";
	}
	
	@RequestMapping("/general/pharm/pharmMap.do")
	public String pharmMapPage() throws Exception {
		return "general/pharm/MapPharmacy.tiles";
	}
	
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	@RequestMapping("/general/reservation/reception.do")
	public String reception() throws Exception {
		return "general/reservation/Receipt.tiles";
	}
	
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation() throws Exception {
		return "general/reservation/Reservation.tiles";
	}
	
	
	
	
	
}