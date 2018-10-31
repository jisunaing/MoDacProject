package com.modu.modac.web.general;


import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.modu.modac.service.AndroidService;
import com.modu.modac.service.GeneralService;



@Controller
public class AndroidController {
	
	//  서비스 주입
	@Resource(name="androidService")
	private AndroidService service;

	@Resource(name="generalService")
	private GeneralService generalService;
	
	////////////////////////////////////////////
	
	
	//진료내역
	@ResponseBody
	@RequestMapping(value="/AndroidreceiptList.do",produces="text/html;charset=UTF-8")
	public String receiptList(@RequestParam Map map) 
			throws Exception{
		

		//접수 내역
		List<Map> receiptList = service.receiptList(map);
		
		System.out.println("receiptList"+receiptList);
		
		return JSONArray.toJSONString(receiptList);//json.toJSONString();
		
	}//////////////////////ajaxJson()
	
	
		//상세 진료내역
		@ResponseBody
		@RequestMapping(value="/AndroidreceiptView.do",produces="text/html;charset=UTF-8")
		public String receiptView(@RequestParam Map map) 
				throws Exception{

			//접수 내역
			List<Map> receiptView = service.receiptView(map);
			
			
	
			
			return JSONArray.toJSONString(receiptView);//json.toJSONString();
			
		}//////////////////////ajaxJson()
	
	
	
	//예약내역	
	@ResponseBody
	@RequestMapping(value="/AndroidreservationList.do",produces="text/html;charset=UTF-8")
	public String reservation(@RequestParam Map map) 
			throws Exception{

		//접수 내역
		List<Map> reservationList = service.reservationList(map);
		
		
		return JSONArray.toJSONString(reservationList);//json.toJSONString();
		
	}//////////////////////ajaxJson()
	
	
	//상세 진료내역
	@ResponseBody
	@RequestMapping(value="/AndroidreservationView.do",produces="text/html;charset=UTF-8")
	public String reservationView(@RequestParam Map map) 
			throws Exception{
	
		//접수 내역
		List<Map> reservationView = service.reservationView(map);

		
		return JSONArray.toJSONString(reservationView);//json.toJSONString();
		
	}//////////////////////ajaxJson()
	
	//기본정보
	@ResponseBody
	@RequestMapping(value="/AndroidGeninfo.do",produces="text/html;charset=UTF-8")
	public String genInfo(@RequestParam Map map) 
			throws Exception{
	
		System.out.println("안드로이드 기본정보 접근");
		
		//기본정보
		List<Map> genInfo = service.genInfo(map);
		
		System.out.println("genInfo"+genInfo);

		
		return JSONArray.toJSONString(genInfo);
	}//////////////////////ajaxJson()  
	
	//기본정보
	@ResponseBody
	@RequestMapping(value="/AndroidGenHealthinfo.do",produces="text/html;charset=UTF-8")
	public String healthinfo(@RequestParam Map map) 
			throws Exception{
	
		System.out.println("안드로이드 건강정보 접근");
			
		
		//기본정보
		List<Map> genHealthInfo = service.genHealthInfo(map);
		
		
		System.out.println("genInfo"+genHealthInfo);

		
		return JSONArray.toJSONString(genHealthInfo);
	}//////////////////////ajaxJson() 
	
	
	
	
	
	
	

	//로그인
	@ResponseBody
	@RequestMapping(value="/AndroidLoginprocess.do",produces="text/html;charset=UTF-8")
	public String ajaxJson(@RequestParam Map map) 
			throws Exception{
	
		boolean ismember = generalService.isMember(map);

		JSONObject json = new JSONObject();

		json.put("isMember",ismember?"Y" : "N");

		
		return json.toJSONString();
	}//////////////////////ajaxJson()  
	
	
	
	
	

	
	
}//AndroidController