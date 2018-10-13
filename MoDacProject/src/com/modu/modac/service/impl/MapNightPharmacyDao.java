package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.MapNightPharmacyDto;
import com.modu.modac.service.MapNightPharmacyService;

@Repository
public class MapNightPharmacyDao implements MapNightPharmacyService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	
	@Override
	public List<MapNightPharmacyDto> selectList(Map map) {
		return template.selectList("NightPharmacyList",map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("NightPharmacyCount", map);
	}

	@Override
	public MapNightPharmacyDto selectOne(Map map) {
		return template.selectOne("NightPharmacyOne", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("NightPharmacyDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("NightPharmacyInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("NightPharmacyUpdate", map);
	}

	@Override
	public void close() {
	}

}
