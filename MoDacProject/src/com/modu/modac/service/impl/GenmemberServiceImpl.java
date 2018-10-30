package com.modu.modac.service.impl;           

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenfamilyDto;
import com.modu.modac.service.GenmemberDto;

@Service("generalService")
public class GenmemberServiceImpl implements GeneralService{
	//DAO계열 클래스 주입받기]
	@Resource(name="genmemberDao")
	private GenmemberDao dao;
	
	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}

	@Override
	public List<GenmemberDto> selectList(Map map) {
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		return 0;
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
	public GenmemberDto selectOne(GenmemberDto dto) {
		return dao.selectOne(dto);
	}
	@Override
	public GenmemberDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public GenfamilyDto selectOne(GenfamilyDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
