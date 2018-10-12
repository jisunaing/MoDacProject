package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.HealthstateDto;
import com.modu.modac.service.HealthstateService;
import com.modu.modac.service.TestService;

/* service어노테이션 */
@Service("healthstateService")
public class HealthstateServiceImpl implements HealthstateService{
	/* dao 리소스 등록 */
	@Resource(name="healthstateDao")
	private HealthstateDao dao;

	/* 메소드 오버라이딩 */
	@Override
	public HealthstateDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HealthstateDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
}
