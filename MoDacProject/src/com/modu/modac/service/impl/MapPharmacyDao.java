package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapPharmacyDto;
import com.modu.modac.service.MapPharmacyService;

@Repository
public class MapPharmacyDao implements MapPharmacyService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<MapPharmacyDto> selectList(Map map) {
		return template.selectList("MapPharmacyList",map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}

	@Override
	public MapPharmacyDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void close() {
		
	}

}
