package com.modu.modac.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.ChartService;

@Repository
public class ChartDao implements ChartService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Map> dayList(Map map) {
		System.out.println("dao로 들어옴");
		return template.selectOne("chartList");
	}

}
