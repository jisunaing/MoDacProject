package com.modu.modac.web;
                 
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modac.service.HealthInfoDto;
import com.modu.modac.service.HealthInfoService;

// [ 건강정보 관련 ]
@Controller
public class HealthInfoController {
	
	@Resource(name="healthInfoService")
	private HealthInfoService service;
	
	@RequestMapping("/general/HealthInfoList.do")
	public String heathInfoList(@RequestParam Map map, Model model) throws Exception {
		
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
	public String heathView(@RequestParam Map map, Model model) throws Exception {
		
		String title = null;
		String content = null;
		String image = null;
		HealthInfoDto record = service.selectOne(map);
		if(record != null) {
			title = record.getTitle();
			content = record.getContent().replace("\r\n", "<br/>");
			image = record.getImage();
		}
		model.addAttribute("title", title);
		model.addAttribute("content", content);
		model.addAttribute("image", image);
		return "general/HealthInfoView.tiles";
		
	}

}
