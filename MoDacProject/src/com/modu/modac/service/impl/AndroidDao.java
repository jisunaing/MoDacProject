package com.modu.modac.service.impl;
            
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.AndroidService;
import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenfamilyService;

/* Repository어노테이션 */
@Repository
public class AndroidDao implements AndroidService {
	/* SqlSessionTeplate선언 - 리소스 등록 */
	@Resource(name="template")
	private SqlSessionTemplate template;

	
	
	//진료 내역
	@Override
	public List<Map> receiptList(Map map) {
		
		return template.selectList("AndroidreceiptList",map);
	}
	
	//상세 내역
	
	@Override
	public List<Map> receiptView(Map map) {
		
		return template.selectList("AndroidreceiptView",map);
	}
	
	
	

	
	//예약 내역
	@Override
	public List<Map> reservationList(Map map) {
	
		return template.selectList("AndroidreservationList",map);
	}

	
	//상세내역
	@Override
	public List<Map> reservationView(Map map) {
		return template.selectList("AndroidreservationView",map);
	}

	@Override
	public List<Map> genInfo(Map map) {
		
		return template.selectList("AndroidSelectOne",map);
	}

	@Override
	public List<Map> genHealthInfo(Map map) {
		return template.selectList("AndroidHealthSelectOne",map);
	}

	@Override
	public int genInfoUpdate(Map map) {
		
		return template.update("AndroidInfoUpdate",map);
	}

	@Override
	public int genHealthInfoUpdate(Map map) {
		return template.update("AndroidHealthUpdate",map);
	}

	

	


}