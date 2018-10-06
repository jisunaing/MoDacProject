package com.modu.modac.web.general;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.MapPharmacyDto;
import com.modu.modac.service.MapPharmacyService;

@Controller
public class MapController {
	
	// 서비스 주입
	@Resource(name="pharmacyService")
	private MapPharmacyService service;

	// [과목 선택 페이지로 이동]
	@RequestMapping("/general/hospital/SelectSubject.do")
	public String selectSubjectPage(@RequestParam Map map,Model model) throws Exception {
		
		return "general/hospital/SelectSubject.tiles";
	}
	
	// [약국이름으로 검색]
	@RequestMapping("/general/pharm/SearchPharm.do")
	public String searchPharmName(@RequestParam Map map, Model model) throws Exception {
		
		String phname = map.get("phname").toString();
		String pharmacy = map.get("pharmacy").toString();
		
		
		
		
		model.addAttribute("phname", phname);
		model.addAttribute("pharmacy", pharmacy);
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [일반약국 검색]
	@RequestMapping("/general/pharm/AllPharm.do")
	public String searchCommonPharm(@RequestParam Map map, Model model) throws Exception {
		
		String pharmacy = map.get("pharmacy").toString();
		
		List<MapPharmacyDto> records = service.selectList(map);
		System.out.println("레코드 수 : "+records.size());
		
		model.addAttribute("pharmacy",pharmacy);
		
		return "general/pharm/MapPharmacy.tiles";
	}

	
	// [심야약국 검색]
	@RequestMapping("/general/pharm/NightPharm.do")
	public String searchAlldayPharm(@RequestParam Map map, Model model) throws Exception {
		
		String pharmacy = map.get("pharmacy").toString();
		
		model.addAttribute("pharmacy",pharmacy);		
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [병원지도로 이동]
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [과목명으로 병원 검색] 
	@RequestMapping("/general/hospital/SearchSubject.do")
	public String searchSubject(@RequestParam Map map, Model model) throws Exception {
		
		String subname = map.get("subname").toString();
		
		System.out.println("과목명 : "+subname);
		
		model.addAttribute("subname", subname);
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [장소로 병원 검색] 
	@RequestMapping("/general/hospital/SearchAddress.do")
	public String searchReplace(@RequestParam Map map, Model model) throws Exception {
		
		String address = map.get("address").toString();
		String subname = map.get("subname").toString();
		
		System.out.println("장소 : "+address);
		System.out.println("과목명 : "+subname);
		
		model.addAttribute("address",address);
		model.addAttribute("subname",subname);
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [병원이름으로 검색]
	@RequestMapping("/general/pharm/SearchHospital.do")
	public String searchHospitalName(@RequestParam Map map, Model model) throws Exception {
		
		String hosname = map.get("hosname").toString();
		String subname = map.get("subname").toString();
		
		model.addAttribute("hosname",hosname);
		model.addAttribute("subname",subname);
		
		return "general/hospital/MapHospital.tiles";
	}
	
	

	// [예약페이지로 이동]
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation(HttpSession session, Model model, @RequestParam Map map) throws Exception {
	
		if(session.getAttribute("USER_ID") == null) {
			
			return "general/member/Login.tiles";
		}
		
		return "general/reservation/Reservation.tiles";
	}
	
	
	
	// [접수페이지로 이동]
	@RequestMapping("/general/reservation/reception.do")
	public String reception(HttpSession session) throws Exception {
		
		if(session.getAttribute("USER_ID") == null) {
			
			return "general/member/Login.tiles";
		}
		
		return "general/reservation/Receipt.tiles";
		
	}
	
	

	
	
	
	
}