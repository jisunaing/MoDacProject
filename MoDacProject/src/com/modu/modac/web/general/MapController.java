package com.modu.modac.web.general;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenmemberDto;
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
	@Resource(name="generalService")
	private GeneralService serviceGS;
	

	// [과목 선택 페이지로 이동 ]
	@RequestMapping("/general/hospital/SelectSubject.do")
	public String selectSubjectPage(@RequestParam Map map,Model model) throws Exception {
		return "general/hospital/SelectSubject.tiles";
	}
	
	// [일반약국 주소 및 이름으로 검색]
	@RequestMapping("/general/pharm/AllPharm.do")
	public String searchCommonPharm(@RequestParam Map map, Model model) throws Exception {
		
		
		String paramValue = "";
		if(map.get("address") != null) { 
			paramValue = map.get("address").toString();
		} else if(map.get("phname") != null){
			paramValue = map.get("phname").toString();
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
		model.addAttribute("paramValue",paramValue);
		
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
	
	// [병원 검색] 
	@RequestMapping("/general/hospital/SearchSubject.do")
	public String searchSubject(@RequestParam Map map, Model model) throws Exception {
		
		String address = "";
		String hosname = "";
		String subname = "";
		String partner = "";
		
		if(map.get("subname") != null) {
			subname = map.get("subname").toString();
		}
		if(map.get("subjectname") != null) {
			subname = map.get("subjectname").toString();
		}
		if(map.get("hosname") != null) {
			hosname = map.get("hosname").toString();
		}
		if(map.get("address") != null) {
			address = map.get("address").toString();
		}
		if(map.get("partner") != null) {
			partner = "제휴병원";
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
			record.put("subname", dto.getSubname());
			record.put("pid", dto.getPid());
			record.put("lunch", dto.getLunch());
			record.put("website", dto.getPwebsite());
			
			collections.add(record);
		}
		
		model.addAttribute("records", JSONArray.toJSONString(collections));
		model.addAttribute("subname", subname);
		model.addAttribute("hosname", hosname);
		model.addAttribute("address", address);
		model.addAttribute("partner", partner);
		
		return "general/hospital/MapHospital.tiles";
	}
	
	// [예약페이지로 이동]
	@RequestMapping("/general/reservation/reservation.do")
	public String reservation(HttpSession session, Model model, @RequestParam Map map, HttpServletResponse resp) throws Exception {
		
		System.out.println(map.get("hosno"));
		System.out.println(map.get("pid"));
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		if(map.get("pid").equals("null")) {
			System.out.println("들어옴1");
			out.print("<script>");
			out.print("alert('제휴 병원만 예약할 수 있습니다.');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		} else if(session.getAttribute("genid") == null) {
			System.out.println("들어옴2");
			out.print("<script>");
			out.print("alert('병원 예약을 하기 위해서 반드시 로그인이 필요합니다.');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		}
		
		/*
		MapHospitalDto hosRecord = serviceHOS.selectOne(map);
		GenmemberDto genRecord = serviceGS.selectOne(map);
		
		Map record = new HashMap();
		record.put("pid", hosRecord.getPid());
		record.put("hosname", hosRecord.getHosname());
		record.put("subname", hosRecord.getSubname());
		record.put("mon", hosRecord.getMon());
		record.put("tue", hosRecord.getTue());
		record.put("wed", hosRecord.getWed());
		record.put("thu", hosRecord.getThu());
		record.put("fri", hosRecord.getFri());
		record.put("sat", hosRecord.getSat());
		record.put("sun", hosRecord.getSun());
		record.put("holiday", hosRecord.getHoliday());
		
		record.put("genname", value)
		record.put("email", value)
		record.put("phone", value)
		record.put("addr", value)
		
		record.put("fname", value)
		record.put("fphone", value)
		record.put("fbirthdate", value)
		*/
		
		
		return "general/reservation/Reservation.tiles";
	}
	
	
	
	// [접수페이지로 이동]
	@RequestMapping("/general/reservation/reception.do")
	public String reception(HttpSession session, Model model, @RequestParam Map map, HttpServletResponse resp) throws Exception {
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		System.out.println(map.get("hosno"));
		System.out.println(map.get("pid"));
		
		if(map.get("pid").equals("null")) {
			out.print("<script>");
			out.print("alert('제휴 병원만 접수할 수 있습니다.');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		} else if(session.getAttribute("genid") == null) {
			out.print("<script>");
			out.print("alert('접수를 하기 위해서 반드시 로그인이 필요합니다.');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		}
		
		/*
		MapHospitalDto hosRecord = serviceHOS.selectOne(map);
		GenmemberDto genRecord = serviceGS.selectOne(map);
		
		Map record = new HashMap();
		record.put("pid", hosRecord.getPid());
		record.put("hosname", hosRecord.getHosname());
		record.put("subname", hosRecord.getSubname());
		record.put("mon", hosRecord.getMon());
		record.put("tue", hosRecord.getTue());
		record.put("wed", hosRecord.getWed());
		record.put("thu", hosRecord.getThu());
		record.put("fri", hosRecord.getFri());
		record.put("sat", hosRecord.getSat());
		record.put("sun", hosRecord.getSun());
		record.put("holiday", hosRecord.getHoliday());
		
		record.put("genname", value)
		record.put("email", value)
		record.put("phone", value)
		record.put("addr", value)
		
		record.put("fname", value)
		record.put("fphone", value)
		record.put("fbirthdate", value)
		*/
		
		return "general/reservation/Receipt.tiles";
		
	}
	
	

	
	
	
	
}