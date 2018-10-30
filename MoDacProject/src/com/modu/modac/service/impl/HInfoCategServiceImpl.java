package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modac.service.HInfoCategDto;
import com.modu.modac.service.HInfoCategService;

@Service("hInfoCategService")
public class HInfoCategServiceImpl implements HInfoCategService {

	@Resource(name="hInfoCategDao")
	private HInfoCategDao dao;
	
	@Override
	public List<HInfoCategDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public HInfoCategDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

}
