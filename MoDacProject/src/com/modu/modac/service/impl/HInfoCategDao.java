package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modac.service.HInfoCategDto;
import com.modu.modac.service.HInfoCategService;

@Repository("hInfoCategDao")
public class HInfoCategDao implements HInfoCategService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HInfoCategDto> selectList(Map map) {
		return template.selectList("hinfocategList", map);
	}

	@Override
	public HInfoCategDto selectOne(Map map) {
		return template.selectOne("hinfocategOne", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("hinfocategTotal", map);
	}

}
