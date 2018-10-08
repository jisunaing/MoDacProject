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
		System.out.println("서비스 임플 : List");
		return dao.selectList(map);
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
