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
	

	

	// [과목 선택 페이지로 이동]
	public String subHosMapPage(@RequestParam Map map,Model model) throws Exception {
		//마이페이지에서 넘어올때 alert띄워줄때 필요함 
		model.addAttribute("message", "예약/접수를 위해 병원 선택 페이지로 이동합니다");
	}	
				

	public String selectSubjectPage() throws Exception {
		return "general/hospital/SelectSubject.tiles";
	}
	
	
	// [약국지도로 이동]
	@RequestMapping("/general/pharm/pharmMap.do")
	public String pharmMapPage() throws Exception {
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [약국이름으로 검색]
	@RequestMapping("/general/pharm/SearchPharm.do")
	public String searchPharmName(@RequestParam Map map, Model model) throws Exception {
		
		String pharmName = map.get("pharmName").toString();
		System.out.println("약국이름 : "+pharmName);
		
		// 파라미터 map 재설정 
		
		
		model.addAttribute("pharmName",pharmName);
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [일반약국 검색]
	@RequestMapping("/general/pharm/CommonPharm.do")
	public String searchCommonPharm() throws Exception {
		
		System.out.println("일반약국으로 검색");
		
		
		
		return "general/pharm/MapPharmacy.tiles";
	}

	
	// [심야약국 검색]
	@RequestMapping("/general/pharm/AllDayPharm.do")
	public String searchAlldayPharm(Model model) throws Exception {
		
		System.out.println("심야약국으로 검색");
		
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [병원지도로 이동]
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [과목명으로 병원 검색] 
	@RequestMapping("/general/hospital/SearchSubject.do")
	public String searchSubject(@RequestParam Map map) throws Exception {
		
		String subject = map.get("subject").toString();
		
		switch (subject) {
			case "gajeong" :  	subject = "가정의학과"; 	break;
			case "gyeolhack" :  subject = "결핵과"; 		break;
			case "nae" : 		subject = "내과"; 		break;
			case "machi" : 		subject = "마취통증의학과";  break;
			case "binyo" : 		subject = "비뇨의학과"; 	break;
			case "sanbu" : 	    subject = "산부인과"; 		break;
			case "seonghyung" : subject = "성형외과"; 		break;
			case "soa" : 	    subject = "소아청소년과"; 	break;
			case "singyung" :   subject = "신경외과"; 		break;
			case "an" : 	    subject = "안과"; 		break;
			case "youngsang" :  subject = "영상의학과"; 	break;
			case "oe" : 	    subject = "외과"; 		break;
			case "ebin" :       subject = "이비인후과"; 	break;
			case "jaehwal" :    subject = "재활의학과"; 	break;
			case "jeongsin" :   subject = "정신건강의학과";  break;
			case "jeonghyung" : subject = "정형외과"; 		break;
			case "chi" : 		subject = "치과"; 		break;
			case "peebu" : 		subject = "피부과"; 		break;
			case "hanbang" : 	subject = "한방과"; 		break;
			default: 			subject = "흉부외과";
		}
		
		System.out.println("과목명 : "+subject);
		
		// 파라미터 map 재설정
		
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [장소로 병원 검색] 
	@RequestMapping("/general/hospital/SearchAddress.do")
	public String searchReplace(@RequestParam Map map) throws Exception {
		
		String replace = map.get("address").toString();
		
		switch (replace) {
			case "gangnam": 	 replace = "강남구"; 	break;
			case "gangdong": 	 replace = "강동구"; 	break;
			case "gangbook": 	 replace = "강북구"; 	break;
			case "gangseo": 	 replace = "강서구"; 	break;
			case "gwanak": 		 replace = "관악구"; 	break;
			case "gwangjin": 	 replace = "광진구"; 	break;
			case "gooro": 		 replace = "구로구"; 	break;
			case "guemcheon": 	 replace = "금천구"; 	break;
			case "nowon": 		 replace = "노원구"; 	break;
			case "dobong": 		 replace = "도봉구"; 	break;
			case "dongdaemoon":  replace = "동대문구"; break;
			case "dongjak": 	 replace = "동작구"; 	break;
			case "mapo": 		 replace = "마포구"; 	break;
			case "seodaemoon": 	 replace = "서대문구"; break;
			case "seocho": 		 replace = "서초구"; 	break;
			case "seongdong": 	 replace = "성동구"; 	break;
			case "seongbook": 	 replace = "성북구"; 	break;
			case "songpa": 		 replace = "송파구"; 	break;
			case "yangcheon": 	 replace = "양천구"; 	break;
			case "youngduengpo": replace = "영등포구"; break;
			case "yongsan": 	 replace = "용산구";	break;
			case "eunpyung": 	 replace = "은평구"; 	break;
			case "jongro": 		 replace = "종로구";  break;
			case "joong": 		 replace = "중구";   break;
			default: 			 replace = "중랑구";  break;
		}
		
		System.out.println("장소 : "+replace);
		
		// 파라미터 map 재설정
		
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	// [병원이름으로 검색]
	@RequestMapping("/general/pharm/SearchHospital.do")
	public String searchHospitalName(@RequestParam Map map) throws Exception {
		
		String hosName = map.get("hosName").toString();
		System.out.println("병원명 : "+hosName);
		
		
		
		
		return "general/hospital/MapHospital.tiles";
	}
	
	
	
	// [예약페이지로 이동]
	@RequestMapping("/general/reservation/reception.do")
	public String reception() throws Exception {
		return "general/reservation/Receipt.tiles";
	}
	
	
	// [접수페이지로 이동]
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation() throws Exception {
		return "general/reservation/Reservation.tiles";
	}
	
	
	
	
	
}