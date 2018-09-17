package com.modu.modac.web.general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenenralController {
	@RequestMapping("/general/pharm/pharmMap.do")
	public String pharmMapPage() throws Exception {
		return "general/pharm/MapPharmacy.tiles";
	}
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		return "general/hospital/MapHospital.tiles";
	}
	@RequestMapping("/general/hospital/hosMapSub.do")
	public String subHosMapPage() throws Exception {
		return "general/hospital/SelectSubject.tiles";
	}
	@RequestMapping("/general/reservation/reception.do")
	public String reception() throws Exception {
		return "general/reservation/Receipt.tiles";
	}
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation() throws Exception {
		return "general/reservation/Reservation.tiles";
	}
	@RequestMapping("/general/reservation/reservationlist.do")
	public String reservationList() throws Exception {
		return "general/reservation/Reservation_List.tiles";
	}
	
	
	
	
	
}