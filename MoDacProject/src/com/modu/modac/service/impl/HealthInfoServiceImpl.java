package com.modu.modac.service.impl;

import java.util.List;               
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.HealthInfoDto;
import com.modu.modac.service.HealthInfoService;
import com.modu.modac.service.MapHospitalDto;
import com.modu.modac.service.MapHospitalService;

@Service("healthInfoService")
public class HealthInfoServiceImpl implements HealthInfoService {
	
	@Resource(name="healthInfoDao")
	private HealthInfoDao dao;

	@Override
	public List<HealthInfoDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

	@Override
	public HealthInfoDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public void close() {
	}
	

}
