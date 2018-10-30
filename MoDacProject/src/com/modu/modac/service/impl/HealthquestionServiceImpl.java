package com.modu.modac.service.impl;
                  
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.HealthquestionDto;
import com.modu.modac.service.HealthquestionService;

@Service("healthquestionService")
public class HealthquestionServiceImpl implements HealthquestionService{
	//DAO계열 클래스 주입받기]
	@Resource(name="healthquestionDao")
	private HealthquestionDao dao;

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reply(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<HealthquestionDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public HealthquestionDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public List<Map> selectListHos(Map map) {
		return dao.selectListHos(map);
	}
	
}
