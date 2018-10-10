package com.modu.modac.web.general;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapHospitalService;
import com.modu.modac.service.MapNightPharmacyDto;
import com.modu.modac.service.MapNightPharmacyService;
import com.modu.modac.service.MapPharmacyDto;
import com.modu.modac.service.MapPharmacyService;


@Controller
public class MapController {
	
	// 서비스 주입
	@Resource(name="pharmacyService")
	private MapPharmacyService servicePH;
	@Resource(name="nightPharmacyService")
	private MapNightPharmacyService serviceNPH;
	@Resource(name="hospitalService")
	private MapHospitalService serviceHOS;
	

	// [과목 선택 페이지로 이동]
	@RequestMapping("/general/hospital/SelectSubject.do")
	public String selectSubjectPage(@RequestParam Map map,Model model) throws Exception {
		
		return "general/hospital/SelectSubject.tiles";
	}
	
	// [약국이름으로 검색]
	@RequestMapping("/general/pharm/SearchPharm.do")
	public String searchPharmName(@RequestParam Map map, Model model) throws Exception {
		
		MapPharmacyDto dto = servicePH.selectOne(map);
		
		List<Map> collections = new Vector<Map>();
		Map record = new HashMap();
		record.put("no", dto.getPhno());
		record.put("name", dto.getPhname());
		record.put("addr", dto.getPhaddr());
		record.put("phone", dto.getPhphone());
		record.put("mon", dto.getPhmon());
		record.put("tue", dto.getPhtue());
		record.put("wed", dto.getPhwed());
		record.put("thu", dto.getPhthu());
		record.put("fri", dto.getPhfri());
		record.put("sat", dto.getPhsat());
		record.put("sun", dto.getPhsun());
		record.put("holiday", dto.getPholiday());
		collections.add(record);
		
		model.addAttribute("records", JSONArray.toJSONString(collections));
		model.addAttribute("size",record.size());
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [일반약국 검색]
	@RequestMapping("/general/pharm/AllPharm.do")
	public String searchCommonPharm(@RequestParam Map map, Model model) throws Exception {
		
		String phname = "";
		String address = "";
		if(map.get("address") != null) { 
			address = map.get("address").toString();
		}
		if(map.get("phname") != null) {
			phname = map.get("phname").toString();
		}
		
		List<MapPharmacyDto> records = servicePH.selectList(map);
		
		List<Map> collections = new Vector<Map>();
		for(MapPharmacyDto dto : records) {
			Map record = new HashMap();
			record.put("no", dto.getPhno());
			record.put("name", dto.getPhname());
			record.put("addr", dto.getPhaddr());
			record.put("phone", dto.getPhphone());
			record.put("mon", dto.getPhmon());
			record.put("tue", dto.getPhtue());
			record.put("wed", dto.getPhwed());
			record.put("thu", dto.getPhthu());
			record.put("fri", dto.getPhfri());
			record.put("sat", dto.getPhsat());
			record.put("sun", dto.getPhsun());
			record.put("holiday", dto.getPholiday());
			collections.add(record);
		}
		
		
		model.addAttribute("records", JSONArray.toJSONString(collections));
		model.addAttribute("address",address);
		model.addAttribute("phname",phname);
		
		return "general/pharm/MapPharmacy.tiles";
	}

	
	// [심야약국 검색]
	@RequestMapping("/general/pharm/NightPharm.do")
	public String searchAlldayPharm(@RequestParam Map map, Model model) throws Exception {
		
		String paramValue = "";
		if(map.get("pharmacy") != "") { 
			paramValue = map.get("pharmacy").toString();
		}
		
		List<MapNightPharmacyDto> records = serviceNPH.selectList(map);
		
		List<Map> collections = new Vector<Map>();
		for(MapNightPharmacyDto dto : records) {
			Map record = new HashMap();
			record.put("no", dto.getNphno());
			record.put("name", dto.getNphname());
			record.put("addr", dto.getNphaddr());
			record.put("phone", dto.getNphphone());
			record.put("mon", dto.getNphmon());
			record.put("tue", dto.getNphtue());
			record.put("wed", dto.getNphwed());
			record.put("thu", dto.getNphthu());
			record.put("fri", dto.getNphfri());
			record.put("sat", dto.getNphsat());
			record.put("sun", dto.getNphsun());
			record.put("holiday", dto.getNpholiday());
			collections.add(record);
		}
		
		model.addAttribute("records", JSONArray.toJSONString(collections));
		model.addAttribute("paramValue",paramValue);
		
		return "general/pharm/MapPharmacy.tiles";
	}
	
	
	// [병원지도로 이동]
	@RequestMapping("/general/hospital/hosMap.do")
	public String hosMapPage() throws Exception {
		return "general/hospital/MapHospital.tiles";
	}
	
	// [과목명 및 주소로 병원 검색] 
	@RequestMapping("/general/hospital/SearchSubject.do")
	public String searchSubject(@RequestParam Map map, Model model) throws Exception {
		
		String address = "";
		String hosname = "";
		String subname = "";
		
		if(map.get("subname") != null) {
			subname = map.get("subname").toString();
		}
		if(map.get("hosname") != null) {
			hosname = map.get("hosname").toString();
		}
		if(map.get("address") != null) {
			address = map.get("address").toString();
		}
		
		List<MapHospitalDto> records = serviceHOS.selectList(map);
		
		List<Map> collections = new Vector<Map>();
		for(MapHospitalDto dto : records) {
			Map record = new HashMap();
			record.put("no", dto.getHosno());
			record.put("name", dto.getHosname());
			record.put("addr", dto.getHosaddr());
			record.put("phone", dto.getHosphone());
			record.put("mon", dto.getMon());
			record.put("tue", dto.getTue());
			record.put("wed", dto.getWed());
			record.put("thu", dto.getThu());
			record.put("fri", dto.getFri());
			record.put("sat", dto.getSat());
			record.put("sun", dto.getSun());
			record.put("holiday", dto.getHoliday());
			record.put("subname", dto.getHoliday());
			record.put("pid", dto.getPid());
			record.put("lunch", dto.getLunch());
			record.put("website", dto.getPwebsite());
			
			collections.add(record);
		}
		
		model.addAttribute("records", JSONArray.toJSONString(collections));
		model.addAttribute("subname", subname);
		model.addAttribute("hosname", hosname);
		model.addAttribute("address", address);
		
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
	
		if(session.getAttribute("genid") == null) {
			
			return "general/member/Login.tiles";
		}
		
		return "general/reservation/Reservation.tiles";
	}
	
	
	
	// [접수페이지로 이동]
	@RequestMapping("/general/reservation/reception.do")
	public String reception(HttpSession session) throws Exception {
		
		if(session.getAttribute("genid") == null) {
			
			return "general/member/Login.tiles";
		}
		
		return "general/reservation/Receipt.tiles";
		
	}
	
	

	
	
	
	
}