package com.modu.modac.web.general;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenfamilyService;
import com.modu.modac.service.GenmemberDto;
import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapHospitalService;
import com.modu.modac.service.MapNightPharmacyDto;
import com.modu.modac.service.MapNightPharmacyService;
import com.modu.modac.service.MapPharmacyDto;
import com.modu.modac.service.MapPharmacyService;
import com.modu.modac.service.ReservationService;


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
   @Resource(name="genfamilyService")
   private GenfamilyService serviceGFS;
   @Resource(name="reservationService")
   private ReservationService serviceRES;

   //  [과목 선택 페이지로 이동 ]
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
   public String reservation(HttpSession session, Model model, @RequestParam Map map, GenmemberDto dto) throws Exception {
      
      map.put("genid", session.getAttribute("genid"));
      dto.setGenid(session.getAttribute("genid").toString());
      
      MapHospitalDto hosRecord = serviceHOS.selectOne(map);
      GenmemberDto genRecord = serviceGS.selectOne(dto);
      List<GenfamilyDto> famRecord = serviceGFS.selectList(map);
      
      Map record = new HashMap();
      record.put("pid", hosRecord.getPid());
      record.put("hosname", hosRecord.getHosname());
      record.put("subname", map.get("subname").toString());
      record.put("mon", hosRecord.getMon());
      record.put("tue", hosRecord.getTue());
      record.put("wed", hosRecord.getWed());
      record.put("thu", hosRecord.getThu());
      record.put("fri", hosRecord.getFri());
      record.put("sat", hosRecord.getSat());
      record.put("sun", hosRecord.getSun());
      record.put("holiday", hosRecord.getHoliday());
      
      record.put("genname", genRecord.getGenname());
      record.put("email", genRecord.getEmail());
      record.put("phone", genRecord.getPhone());
      record.put("addr", genRecord.getAddr());
      
      record.put("familyList", famRecord);
      
      model.addAttribute("record", record);
      
      return "general/reservation/Reservation.tiles";
   }
   
   // [접수페이지로 이동]
   @RequestMapping("/general/reservation/reception.do")
   public String reception(HttpSession session, Model model, @RequestParam Map map, GenmemberDto dto) throws Exception {
      
      map.put("genid", session.getAttribute("genid"));
      dto.setGenid(session.getAttribute("genid").toString());
      
      MapHospitalDto hosRecord = serviceHOS.selectOne(map);
      GenmemberDto genRecord = serviceGS.selectOne(dto);
      List<GenfamilyDto> famRecord = serviceGFS.selectList(map);
      
      Map record = new HashMap();
      record.put("pid", hosRecord.getPid());
      record.put("hosname", hosRecord.getHosname());
      record.put("subname", map.get("subname").toString());
      record.put("mon", hosRecord.getMon());
      record.put("tue", hosRecord.getTue());
      record.put("wed", hosRecord.getWed());
      record.put("thu", hosRecord.getThu());
      record.put("fri", hosRecord.getFri());
      record.put("sat", hosRecord.getSat());
      record.put("sun", hosRecord.getSun());
      record.put("holiday", hosRecord.getHoliday());
      
      record.put("genname", genRecord.getGenname());
      record.put("email", genRecord.getEmail());
      record.put("phone", genRecord.getPhone());
      record.put("addr", genRecord.getAddr());
      
      record.put("familyList", famRecord);
      
      model.addAttribute("record", record);
      
      return "general/reservation/Receipt.tiles";
      
   }
   
   
   /////////////////////////////////////////////////////////////////////////////
   /////////////////////////      ANDROID      ////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////
   
   // [병원 검색하기]
   @ResponseBody
   @RequestMapping(value="/general/hospital/SearchSubjectAndroid.do", produces="text/plain; charset=UTF-8")
   public String searchSubjectAndroid(@RequestParam Map map) throws Exception {
      
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
         record.put("subname", subname);
         record.put("pid", dto.getPid());
         record.put("lunch", dto.getLunch());
         record.put("website", dto.getPwebsite());
         
         collections.add(record);
      }
      
      System.out.println(records.size());
      
      return JSONArray.toJSONString(collections);
   }
   
   // [예약페이지로 이동]
   @ResponseBody
   @RequestMapping(value="/general/reservation/reservationAndroid.do", produces="text/plain; charset=UTF-8")
   public String reservationAndroid(@RequestParam Map map, GenmemberDto dto) throws Exception {
      
      System.out.println(map.get("genid"));
      System.out.println(map.get("hosno"));
      System.out.println(map.get("pid"));
      
      dto.setGenid(map.get("genid").toString());
      
      MapHospitalDto hosRecord = serviceHOS.selectOne(map);
      GenmemberDto genRecord = serviceGS.selectOne(dto);
      
      Map record = new HashMap();
      record.put("pid", hosRecord.getPid());
      record.put("hosname", hosRecord.getHosname());
      record.put("subname", map.get("subname").toString());
      record.put("genname", genRecord.getGenname());
      record.put("email", genRecord.getEmail());
      record.put("phone", genRecord.getPhone());
      record.put("addr", genRecord.getAddr());
      
      List<Map> list = new Vector<Map>();
      list.add(record);
      
      System.out.println("리턴:"+JSONArray.toJSONString(list));
      
      return JSONArray.toJSONString(list);
   }
   
   // [접수페이지로 이동]
   @ResponseBody
   @RequestMapping(value="/general/reservation/receptionAndroid.do", produces="text/plain; charset=UTF-8")
   public String receptionAndroid(HttpSession session, Model model, @RequestParam Map map, GenmemberDto dto) throws Exception {
      
      System.out.println(map.get("genid"));
      System.out.println(map.get("hosno"));
      System.out.println(map.get("pid"));
      
      dto.setGenid(map.get("genid").toString());
      
      MapHospitalDto hosRecord = serviceHOS.selectOne(map);
      GenmemberDto genRecord = serviceGS.selectOne(dto);
   
      Map record = new HashMap();
      record.put("pid", hosRecord.getPid());
      record.put("hosname", hosRecord.getHosname());
      record.put("subname", map.get("subname").toString());
      record.put("genname", genRecord.getGenname());
      record.put("email", genRecord.getEmail());
      record.put("phone", genRecord.getPhone());
      record.put("addr", genRecord.getAddr());
      
      List<Map> list = new Vector<Map>();
      list.add(record);
      
      System.out.println("리턴:"+JSONArray.toJSONString(list));
      
      return JSONArray.toJSONString(list);
   }
   
   //예약 처리
   @ResponseBody
   @RequestMapping(value="/general/receipt/ReservationAndroid.do", produces="text/plain; charset=UTF-8")
   public void reservation(@RequestParam Map map)throws Exception{
      
      map.put("genid", "test");
      serviceRES.reservationInset(map);
      
   }       
   
   //접수 처리
   @ResponseBody
   @RequestMapping(value="/general/receipt/ReceptionAndroid.do", produces="text/plain; charset=UTF-8")
   public void receiption(@RequestParam Map map)throws Exception{
      
      map.put("genid", "test");
      map.put("recdate", new SimpleDateFormat("yyyy-MM-dd kk:mm").format(new Date()));
      
      serviceRES.receiptInsert(map);
   
   }
   
}