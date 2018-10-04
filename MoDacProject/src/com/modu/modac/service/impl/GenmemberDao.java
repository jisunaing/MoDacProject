package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.GeneralService;
import com.modu.modac.service.GenmemberDto;

@Repository
public class GenmemberDao implements GeneralService{
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isMember(Map map) {
		return (Integer)template.selectOne("genmmemberIsMember",map)==0?false:true;
	}

	@Override
	public GenmemberDto selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GenmemberDto> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
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
