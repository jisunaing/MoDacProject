package com.modu.modac.service.impl;              
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modac.service.ChartService;

@Repository
public class ChartDao implements ChartService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<String> dayList(Map map) {
		return template.selectList("chartList",map);
	}

	@Override
	public List<Map> reservationReception(Map map) {
		return template.selectList("reservationReception", map);
	}

	@Override
	public List<Map> mainChartTableRecord() {
		return template.selectList("mainChartTableRecord");
	}

}
