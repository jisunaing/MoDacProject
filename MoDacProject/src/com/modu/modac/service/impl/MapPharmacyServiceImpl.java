package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapPharmacyDto;
import com.modu.modac.service.MapPharmacyService;

@Service("pharmacyService")
public class MapPharmacyServiceImpl implements MapPharmacyService {
	
	@Resource(name="mapPharmacyDao")
	private MapPharmacyDao dao;
	
	@Override
	public List<MapPharmacyDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

	@Override
	public MapPharmacyDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public void close() {
	}

}
