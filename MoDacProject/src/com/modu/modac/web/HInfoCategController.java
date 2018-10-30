package com.modu.modac.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modac.service.HInfoCategDto;
import com.modu.modac.service.HInfoCategService;
import com.modu.modac.service.HealthInfoService;
import com.modu.modac.service.impl.PagingUtil;


@Controller
public class HInfoCategController {
//	@Value("${PAGE_SIZE}")
	private int pageSize = 4;
//	@Value("${BLOCK_PAGE")
	private int blockPage = 4;
	
	@Resource(name="hInfoCategService")
	private HInfoCategService service;
	
	@Resource(name="healthInfoDao")
	private HealthInfoService hinfoservice;
	
	// List
	@RequestMapping("/healthinfoList.do")
	public String healthinfoList(Model model, 
							HttpServletRequest req, 
							@RequestParam Map map,
							@RequestParam(required=false,defaultValue="1") int nowPage) throws Exception{
		
		//서비스 호출]
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= service.getTotalRecord(map);	
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);

		// 페이징을 위한 로직 끝]	
		List<HInfoCategDto> list= service.selectList(map);
		
		// 데이터베이스에 저장된 이미지의 경로 변경
		for(HInfoCategDto dto: list) {
			dto.setCategimage(dto.getCategimage().toString().replace("Upload", "http://localhost:8080/modacadmin/Upload"));
//			System.out.println(dto.getCategimage());
		}
		
		// 페이징 문자열을 위한 로직 호출]
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+ "/healthinfoList.do?");
		// 데이타 저장]		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
//		return "healthinfo/HealthInfoList.tiles";
		return "/index";

	}
	
	@RequestMapping("/healthinfoCategoryView.do")
	public String healthInfoCategoryView(Model model, HttpServletRequest req, 
								@RequestParam Map map, 
								@RequestParam(required=false, defaultValue="1") int nowPage) throws Exception {

		// 카테고리 상세보기
		HInfoCategDto record = service.selectOne(map);
		record.setExplanation(record.getExplanation().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		System.out.println(record.getCategname() + ": " + record.getExplanation());
		
//		// 카테고리 하위 리스트
//		int totalRecordCount= hinfoservice.getTotalRecord(map);	
//		System.out.println("hinfo_cnt: "+totalRecordCount);
//		int start = (nowPage-1)*pageSize+1;
//		int end   = nowPage*pageSize;
//		map.put("start",start);
//		map.put("end",end);
//		
//		List<HInfoDto> list = hinfoservice.selectList(map);
//		
//		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+ "/healthinfoView.do?");
//
//		model.addAttribute("list", list);
//		model.addAttribute("pagingString", pagingString);
//		model.addAttribute("totalRecordCount", totalRecordCount);
//		model.addAttribute("pageSize", pageSize);
//		model.addAttribute("nowPage", nowPage);
//		
//		System.out.println("list_size: "+list.size());
//		System.out.println("categno: "+map.get("categno"));
//		
//		return "healthinfo/HealthInfoCategoryView.tiles";
		
		return "forward:/general/HealthInfoView.do";
	}
	
}

