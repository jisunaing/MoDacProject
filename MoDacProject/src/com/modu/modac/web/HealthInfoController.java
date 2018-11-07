package com.modu.modac.web;
                 
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.HInfoCategDto;
import com.modu.modac.service.HInfoCategService;
import com.modu.modac.service.HealthInfoDto;
import com.modu.modac.service.HealthInfoService;

// [건강정보 관련]
@Controller
public class HealthInfoController {
	                        
	@Resource(name="healthInfoService")
	private HealthInfoService service;
	
	@Resource(name="hInfoCategService")
	private HInfoCategService categService;
	
	
	@RequestMapping("/general/HealthInfoList.do")
	public String heathInfoList(@RequestParam Map map, Model model) throws Exception {
		// 카테고리 상세보기
		HInfoCategDto record = categService.selectOne(map);
		record.setExplanation(record.getExplanation().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		
		// 데이터베이스에 저장된 이미지의 경로 변경
		record.setCategimage(record.getCategimage().toString().replace("Upload", "http://localhost:8080/modacadmin/Upload"));
			
		String categname = null;
		
		List<HealthInfoDto> records = service.selectList(map);
		if(records.size() != 0) {
			categname = records.get(0).getCategname();
		}
		
		model.addAttribute("records",records);
		model.addAttribute("categname",categname);
		return "general/HealthInfoList.tiles";
	}
	
	@RequestMapping("/general/HealthInfoView.do")
	public String healthView(@RequestParam Map map, Model model) throws Exception {
		
		HealthInfoDto record = service.selectOne(map);
		
		HInfoCategDto categrecord = categService.selectOne(map);
		
		// 데이터베이스에 저장된 이미지의 경로 변경
		record.setContent(record.getContent().toString().replaceAll("\r\n", "<br/>"));
		record.setContent(record.getContent().toString().replaceAll("Upload", "http://localhost:8080/modacadmin/Upload"));
		record.setContent(record.getContent().toString().replaceAll("src", " style='padding-bottom:100px;margin-bottom:100px;' id='contentimg' src"));
//		record.setImage(record.getImage().toString().replace("Upload", "http://localhost:8080/modacadmin/Upload"));
		record.setImage(categrecord.getCategimage().toString().replace("Upload", "http://localhost:8080/modacadmin/Upload"));
		System.out.println("categrecord.getCategimage: "+categrecord.getCategimage());
		System.out.println("record.setImage: "+record.getImage());
		model.addAttribute("record", record);
		System.out.println("record_image: "+record.getImage());
		return "general/HealthInfoView.tiles";
	}

}