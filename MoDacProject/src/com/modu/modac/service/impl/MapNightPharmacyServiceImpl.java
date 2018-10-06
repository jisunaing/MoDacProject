package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapNightPharmacyDto;
import com.modu.modac.service.MapNightPharmacyService;

@Service("mapNightPharmacyService")
public class MapNightPharmacyServiceImpl implements MapNightPharmacyService{

	@Resource(name="mapNightPharmacyDao")
	private MapNightPharmacyDao dao;
	
	@Override
	public List<MapHospitalDto> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MapNightPharmacyDto selectOne(Map map) {
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

}
