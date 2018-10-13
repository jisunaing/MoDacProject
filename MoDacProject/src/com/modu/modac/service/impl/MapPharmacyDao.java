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
		return template.selectList("PharmacyList",map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("PharmacyTotalCount",map);
	}

	@Override
	public MapPharmacyDto selectOne(Map map) {
		return template.selectOne("PharmacyOne",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("PharmacyDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("PharmacyInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("PharmacyUpdate", map);
	}

	@Override
	public void close() {
	}

}
